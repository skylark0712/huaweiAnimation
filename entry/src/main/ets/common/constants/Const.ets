const IMAGE_ARR = [
  $r('app.media.badge1'),
  $r('app.media.badge2'),
  $r('app.media.badge3'),
  $r('app.media.badge4'),
  $r('app.media.badge5'),
  $r('app.media.badge6')
]

export default class Common {
  static readonly IMAGES_MIN: number = 3
  static readonly OFFSET_RADIUS: number = 145
  static readonly FONT_WEIGHT_500: number = 500
  static readonly DEFAULT_FULL_WIDTH: string = '100%'
  static readonly IMAGES_TOTAL: number = IMAGE_ARR.length
  static readonly CONTROLLER_WIDTH: string = '97vp'
  static readonly CONTROLLER_HEIGHT: string = '336vp'
}