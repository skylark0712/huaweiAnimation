import { IconsModel } from "../viewModel/IconsModel"
import Common from '../common/constants/Const'
import IconItem from "../viewModel/IconItem"
import { IconAnimation } from './IconAnimation'

@Preview
@Component
export struct AnimationWidgets {
  @State mainFlag: boolean = false
  @Link @Watch('onQuantityChange') quantity: number
  @Consume iconModel: IconsModel

  onQuantityChange() {
    this.iconModel.addImage(this.quantity)
  }

  aboutToAppear(): void {
    this.onQuantityChange()
  }

  animate() {
    this.getUIContext().animateTo(
      {
        delay: Common.DELAY_10,
        tempo: Common.TEMPO,
        iterations: 1,
        duration: Common.DURATION_500,
        curve: Curve.Smooth,
        playMode: PlayMode.Normal
      }, () => {
      this.mainFlag = !this.mainFlag
    })
  }

  build() {
    Stack() {
      Stack() {
        ForEach(this.iconModel.imagerArr, (item: IconItem) => {
          IconAnimation({
            item: item,
            mainFlag: $mainFlag
          })
        }, (item: IconItem) => JSON.stringify(item.index))
      }
      .width(Common.DEFAULT_FULL_WIDTH)
      .height(Common.DEFAULT_FULL_HEIGHT)
      .rotate({
        x: 0,
        y: 0,
        z: 1,
        angle: this.mainFlag ? Common.ROTATE_ANGLE_360 : 0
      })

      Image(this.mainFlag ? $r('app.media.imgActive') : $r('app.media.imgInit'))
        .width($r('app.float.size_64'))
        .height($r('app.float.size_64'))
        .objectFit(ImageFit.Contain)
        .scale({ x: this.mainFlag ? Common.INIT_SCALE : 1, y: this.mainFlag ? Common.INIT_SCALE : 1 })
        .onClick(() => {
          this.iconModel.reset()
          this.animate()
        })

      Text($r('app.string.please_click_button'))
        .fontSize($r('app.float.size_16'))
        .opacity(Common.OPACITY_06)
        .fontColor($r('app.color.fontGrayColor'))
        .fontWeight(Common.FONT_WEIGHT_500)
        .margin({ top: $r('app.float.size_100') })
    }
    .width(Common.DEFAULT_FULL_WIDTH)
    .layoutWeight(1)
  }
}