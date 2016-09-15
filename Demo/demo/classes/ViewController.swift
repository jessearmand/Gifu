import UIKit
import Gifu

class ViewController: UIViewController {
  @IBOutlet weak var imageView: AnimatableImageView!

  override func viewDidLoad() {
    super.viewDidLoad()

    imageView.animateWithImage(named: "mugen.gif")
    imageView.loopCount = 1
  }

  @IBAction func toggleAnimation(sender: AnyObject) {
    if imageView.isAnimatingGIF {
      imageView.stopAnimatingGIF()
    } else {
      imageView.startAnimatingGIF()
    }
  }
}
