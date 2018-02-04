import UIKit

public class WQNetworkActivityIndicator {
    public static let shared = WQNetworkActivityIndicator()

    public var timeout = 10

    private var pendingWorkItem: DispatchWorkItem?

    private var count = 0 {
        didSet {
            if count < 0 {
                count = 0
            }
            UIApplication.shared.isNetworkActivityIndicatorVisible = count > 0
        }
    }

    private init() {}

    public func show() {
        count += 1
        if timeout > 0 {
            pendingWorkItem?.cancel()
            let workItem = DispatchWorkItem { [weak self] in
                self?.count = 0
            }
            pendingWorkItem = workItem
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(timeout), execute: workItem)
        }
    }

    public func hide(force: Bool = false) {
        if force {
            count = 0
        } else {
            count -= 1
        }
    }
}
