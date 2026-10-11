package com.sun.imageio.plugins.jpeg;

import java.io.IOException;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
class DRIMarkerSegment extends MarkerSegment {
    int restartInterval;

    public DRIMarkerSegment(JPEGBuffer jPEGBuffer) throws IOException {
        super(jPEGBuffer);
        this.restartInterval = 0;
        byte[] bArr = jPEGBuffer.buf;
        int i = jPEGBuffer.bufPtr;
        int i2 = i + 1;
        int i3 = (bArr[i] & 255) << 8;
        jPEGBuffer.bufPtr = i2 + 1;
        this.restartInterval = (bArr[i2] & 255) | i3;
        jPEGBuffer.bufAvail -= this.length;
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public IIOMetadataNode getNativeNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("dri");
        iIOMetadataNode.setAttribute("interval", Integer.toString(this.restartInterval));
        return iIOMetadataNode;
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void print() {
        printTag("DRI");
        System.out.println("Interval: " + Integer.toString(this.restartInterval));
    }

    public void updateFromNativeNode(Node node, boolean z) throws IIOInvalidTreeException {
        this.restartInterval = MarkerSegment.getAttributeValue(node, null, "interval", 0, 65535, true);
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void write(ImageOutputStream imageOutputStream) throws IOException {
    }

    public DRIMarkerSegment(Node node) throws IIOInvalidTreeException {
        super(221);
        this.restartInterval = 0;
        updateFromNativeNode(node, true);
    }
}
