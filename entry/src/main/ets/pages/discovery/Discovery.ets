import ListMenuItem from '../../components/ListMenuItem'
import WechatToolbar from '../../components/WechatToolbar'

@Preview
@Component
export default struct Discovery {
  build() {
    Column() {
      WechatToolbar({ title: "发现" })

      ListMenuItem({ title: "朋友圈", iconSrc: $r('app.media.moment') })

      Divider()
        .vertical(false)
        .color("#f3f3f3")
        .strokeWidth(10)
        .lineCap(LineCapStyle.Round)

      ListMenuItem({ title: "扫一扫",
        iconSrc: $r('app.media.scan') })
        .onClick(() => {
        })

      Divider()
        .vertical(false)
        .color("#f3f3f3")
        .strokeWidth(1)
        .lineCap(LineCapStyle.Round)

      ListMenuItem({ title: "听一听",
        iconSrc: $r('app.media.listen')
      })

      Divider()
        .vertical(false)
        .color("#f3f3f3")
        .strokeWidth(10)
        .lineCap(LineCapStyle.Round)

      ListMenuItem({
        title: "游戏",
        news: "朋友瞬杀时刻",
        newsIconSrc: $r('app.media.user_head1'),
        iconSrc: $r('app.media.game')
      })

      Divider()
        .vertical(false)
        .color("#f3f3f3")
        .strokeWidth(10)
        .lineCap(LineCapStyle.Round)

      ListMenuItem({ title: "小程序",
        iconSrc: $r('app.media.miniprogram')
      })

    }
    .width("100%")
    .height("100%")
    .backgroundColor("#f0f0f0")
  }
}