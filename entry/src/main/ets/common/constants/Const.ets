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
  static readonly DELAY_10: number = 10
  static readonly TEMPO: number = 0.68
  static readonly DURATION_500: number = 500
  static readonly ICON_WIDTH: number = 58
  static readonly ICON_HEIGHT: number = 58
  static readonly ROTATE_ANGLE_360: number = 360
  static readonly SCALE_RATIO: number = 1.25
  static readonly OPACITY_06: number = 0.6
  static readonly DURATION_1000: number = 1000
  static readonly DEFAULT_FULL_HEIGHT: string = '100%'
  static readonly INIT_SCALE: number = 0.75
  static readonly IMAGE_RESOURCE: Resource[] = IMAGE_ARR
}