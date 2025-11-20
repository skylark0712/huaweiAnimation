import Common from '../common/constants/Const'
import { AnimationWidgets } from '../view/AnimationWidgets'
import { CountController } from '../view/CountController'
import { IconsModel } from '../viewModel/IconsModel'

@Entry
@Component
struct Index {
  @State quantity: number = Common.IMAGES_MIN
  @Provide iconModel: IconsModel = new IconsModel(this.quantity, Common.OFFSET_RADIUS)

  build() {
    Column() {
      // 动效组件
      AnimationWidgets({
        quantity: $quantity
      })
      // 动效图标数量控制组件
      CountController({
        quantity: $quantity
      })
    }
    .height('100%')
    .width('100%')
  }
}