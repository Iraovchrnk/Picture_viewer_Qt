import QtQuick 2.0


Column{
    opacity: PathView.isCurrentItem ? 1 : 0.75
    z: PathView.isCurrentItem ? 1 : 0

    Image {
        width: 250
        height: 250
        source: fileURL
        fillMode: Image.PreserveAspectFit
        smooth: true


        MouseArea {
             anchors.fill: parent;
             onClicked: {
                  fullPathImage.source = fileURL
                  fullPathImage.visible = true

             }
         }

    }
    spacing: 5

}
