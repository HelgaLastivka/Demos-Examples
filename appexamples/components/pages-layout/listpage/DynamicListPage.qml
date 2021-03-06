import Felgo 3.0


App {
  NavigationStack {
    ListPage {
      id: page
      title: "Append List Item Example"

      property var listData: [
        {
          text: "Apple",
          detailText: "A delicious fruit with round shape",
          icon: IconType.apple
        },
        {
          text: "Beer",
          detailText: "A delicious drink",
          icon: IconType.beer
        },
        {
          text: "Camera",
          detailText: "Your digital eye",
          icon: IconType.camera
        },
        {
          text: "Gamepad",
          detailText: "Device for having fun",
          icon: IconType.gamepad
        },
        {
          text: "Gift",
          detailText: "Something you always ready to get",
          icon: IconType.gift
        },
        {
          text: "Music",
          detailText: "Do you mind if I put some music on?",
          icon: IconType.music
        },
        {
          text: "Umbrella",
          detailText: "You can stand under my umbrella",
          icon: IconType.umbrella
        }
      ]

      model: listData
      onItemSelected: {
        // Add copy of clicked element at end of model
        page.listData.push(item)
        // Signal change of data to update the list
        page.listDataChanged()
      }
    }
  }
}
