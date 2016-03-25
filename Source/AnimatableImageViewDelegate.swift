

/// A protocol that defines methods which allow you to respond to the animation state changes.
@objc
public protocol AnimatableImageViewDelegate: class {
  /// Tells the delegate that the animation has been started at the specified index.
  /// - parameter animatableImageView: The AnimatableImageView object that is notifying the delegate about the start of an animation.
  /// - parameter index: The index of the GIF's frame the animation has beed started from.
  optional func animatableImageView(animatableImageView: AnimatableImageView, didStartAnimatingAtIndex index: Int)
  
  /// Tells the delegate that the animation has been stopped at the specified index.
  /// - parameter animatableImageView: The AnimatableImageView object that is notifying the delegate about the stop of an animation.
  /// - parameter index: The index of the GIF's frame the animation has beed stopped at.
  optional func animatableImageView(animatableImageView: AnimatableImageView, didStopAnimatingAtIndex index: Int)
  
  /// Tells the delegate that currently displayed frame has beed changed.
  /// - parameter animatableImageView: The AnimatableImageView object that is notifying the delegate about the change of the animation displayed frame.
  /// - parameter index: The index of the frame currently displayed frame was updated to.
  optional func animatableImageView(animatableImageView: AnimatableImageView, didChangeDisplayedFrameToIndex index: Int)
  
  /// Tells the delegate that currently played animation cycle has reached the final frame.
  /// - parameter animatableImageView: The AnimatableImageView object that is notifying the delegate about the finishing of the current animation iteration.
  /// - parameter iteration: The number of the currently finished iteration of the animation.
  optional func animatableImageView(animatableImageView: AnimatableImageView, didReachEndOfIteration iteration: Int)
}