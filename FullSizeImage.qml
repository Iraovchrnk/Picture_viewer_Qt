import QtQuick 2.0

Image {
    visible: false
    width: 800
    height: 500
    source: ""
    fillMode: Image.PreserveAspectFit

    MouseArea {
        anchors.fill: parent
        onClicked:{
            parent.visible = false
        }
    }
}
