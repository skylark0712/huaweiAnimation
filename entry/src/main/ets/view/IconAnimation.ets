import IconItem from '../viewModel/IconItem'
import Common from '../common/constants/Const'

@Component
export struct IconAnimation {
  @Link mainFlag: boolean
  @ObjectLink item: IconItem

  build() {
    Image(this.item.image)
      .width(Common.ICON_WIDTH)
      .height(Common.ICON_HEIGHT)
      .objectFit(ImageFit.Contain)
      .translate(this.mainFlag ? { x: this.item.point.x, y: this.item.point.y } : { x: 0, y: 0 })
      .rotate({
        x: 0,
        y: 1,
        z: 0,
        angle: this.item.clicked ? Common.ROTATE_ANGLE_360 : 0
      })
      .scale(this.item.clicked ? { x: Common.SCALE_RATIO, y: Common.SCALE_RATIO } : { x: 1, y: 1 })
      .opacity(this.item.clicked ? Common.OPACITY_06 : 1)
      .onClick(() => {
        this.item.clicked = !this.item.clicked;
      })
      .animation(
        {
          delay: Common.DELAY_10,
          duration: Common.DURATION_1000,
          iterations: 1,
          curve: Curve.Smooth,
          playMode: PlayMode.Normal
        }
      )
  }
}