import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Rectangle {
    color: "#66CCFF"

    Column {
        id: upperRegion
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        spacing: 4

        Text {
            id: textTitle
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Title"
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Staff"
        }
    }

    Item {
        id: centerRegion
        anchors.top: upperRegion.bottom
        anchors.bottom: playbackRegion.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 0.1 * height

        Rectangle {
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height)
            height: width
            radius: 0.5 * width
        }
    }

    Row {
        id: playbackRegion
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        spacing: 4
        Rectangle {
            width: 30
            height: 30
            color: "Blue"
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: "Prev"
                anchors.centerIn: parent
            }
        }

        Rectangle {
            width: 50
            height: 50
            color: "Blue"
            Text {
                text: "Play"
                anchors.centerIn: parent
            }
        }

        Rectangle {
            width: 30
            height: 30
            anchors.verticalCenter: parent.verticalCenter
            color: "Blue"
            Text {
                text: "Next"
                anchors.centerIn: parent
            }
        }
    }
}

