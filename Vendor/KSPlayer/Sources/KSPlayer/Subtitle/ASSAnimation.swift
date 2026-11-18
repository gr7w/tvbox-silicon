import CoreGraphics
import Foundation

public struct ASSAnimation: Equatable {
    public var requiresContinuousTime: Bool { false }

    public init() {}

    public func opacity(at time: TimeInterval, duration: TimeInterval) -> Double {
        guard duration > 0, time >= 0, time <= duration else { return 0 }
        return 1
    }

    public func position(at time: TimeInterval, duration: TimeInterval) -> CGPoint? {
        nil
    }
}

public extension SubtitlePart {
    var animation: ASSAnimation { ASSAnimation() }
    var canvasSize: CGSize { .zero }
    var usesAuthoredPosition: Bool { false }
}
