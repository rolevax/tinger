import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import "tabs"

ApplicationWindow {
    visible: true
    width: 320
    height: 480
    title: qsTr("听鸽 Tinger")

    TabBar {
        id: tabBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        TabButton {
            text: "播"
        }
        TabButton {
            text: "列"
        }
        TabButton {
            text: "咕"
        }
    }

    StackLayout {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: tabBar.top
        currentIndex: tabBar.currentIndex
        TabPlayer {
            id: tabPlayer
        }
        Item {
            id: tabList
            Rectangle {
                anchors.fill: parent
                color: "blue"
            }
        }
        TabAbout {
            id: tabAbout
        }
    }
}
