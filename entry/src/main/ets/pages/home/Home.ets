
import router from '@ohos.router'
import ListChatItem, { ChatItemData } from '../../components/ListChatItem'
import WechatToolbar from '../../components/WechatToolbar'

@Preview
@Component
export default struct Home {
  @State chatList: ChatItemData[] = [
    {
    headSrc: $r("app.media.user_head2"),
    nickname: "Rana",
    content: "抹茶巴菲",
    time: "17:21"
  },
    {
      headSrc: $r("app.media.user_head3"),
      nickname: "Aono",
      content: "怎么样，我的C和弦",
      time: "15:38"
    },
    { headSrc: $r("app.media.user_head4"),
      nickname: "Mortis",
      content: "全部都不会弹",
      time: "14:12"
    },
    { headSrc: $r("app.media.user_head5"),
      nickname: "Taki",
      content: "那家伙竟敢无视灯",
      time: "12:08"
    },
    { headSrc: $r("app.media.user_head6"),
      nickname: "Soyo",
      content: "嗯，一起去吧",
      time: "昨天" },
    { headSrc: $r("app.media.user_head7"),
      nickname: "Oblivious",
      content: "好像成为人类",
      time: "周一" }
  ]

  build() {
    Column() {
      WechatToolbar({ title: "微信(5)" })

      List() {
        ForEach(this.chatList, (item: ChatItemData, index: number) => {
          ListItem() {
            ListChatItem({ data: item })
          }
          .onClick(() => {
            router.pushUrl({ url: 'pages/chat/ChatPage',
              params: {name:item.nickname}
            })
          })
        })
        ListItem() {
          Divider().color('#0000').strokeWidth(0)
        }
      }
      .divider({ strokeWidth: 0.8, color: '#f0f0f0', startMargin: 90, endMargin: 0 }) // 每行之间的分界线
      .backgroundColor(Color.White)
      .width("100%")
      .height("100%")

    }
    .width("100%")
    .height("100%")
    .backgroundColor("#f0f0f0")
  }
}
