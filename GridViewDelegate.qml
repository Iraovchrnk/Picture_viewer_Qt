import QtQuick 2.0


Column {
    spacing: 5
    Image {
        width: gridView.cellWidth - 5
        height: gridView.cellHeight - 5
        fillMode: Image.PreserveAspectFit
        smooth: true
        source: fileURL

        MouseArea {
             anchors.fill: parent;
             onClicked: {
                  fullListImg.source = fileURL
                  fullListImg.visible = true

             }
        }
    }
}
