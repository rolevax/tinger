import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Rectangle {
    color: "#66CCFF"

    Column {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 4
        spacing: 4

        Text {
            text: "听鸽"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 30
            Text {
                anchors.centerIn: parent
                text: "催更"
            }
        }
    }
}

