import QtQuick 2.0

Column {
    spacing: 10
    anchors.horizontalCenter: parent.horizontalCenter
    Image {
        width: 150
        height: 100
        fillMode: Image.PreserveAspectFit
        smooth: true
        source: fileURL

        MouseArea {
             anchors.fill: parent;
             hoverEnabled: true;
             onClicked: {
                  fullGridImage.source = fileURL
                  fullGridImage.visible = true

            }
        }
    }
}

