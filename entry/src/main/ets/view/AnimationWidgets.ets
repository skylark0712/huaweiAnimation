import { IconsModel } from "../viewModel/IconsModel"

@Component
export struct AnimationWidgets {
  @Link @Watch('onQuantityChange') quantity: number
  @Consume iconModel: IconsModel

  onQuantityChange() {
    this.iconModel.addImage(this.quantity)
  }

  build() {

  }
}