package com.sun.imageio.plugins.jpeg;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
class AdobeMarkerSegment extends MarkerSegment {
    private static final int ID_SIZE = 5;
    int flags0;
    int flags1;
    int transform;
    int version;

    public AdobeMarkerSegment(int i) {
        super(238);
        this.version = 101;
        this.flags0 = 0;
        this.flags1 = 0;
        this.transform = i;
    }

    public static void writeAdobeSegment(ImageOutputStream imageOutputStream, int i) throws IOException {
        new AdobeMarkerSegment(i).write(imageOutputStream);
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public IIOMetadataNode getNativeNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("app14Adobe");
        iIOMetadataNode.setAttribute("version", Integer.toString(this.version));
        iIOMetadataNode.setAttribute("flags0", Integer.toString(this.flags0));
        iIOMetadataNode.setAttribute("flags1", Integer.toString(this.flags1));
        iIOMetadataNode.setAttribute(Constants.ELEMNAME_TRANSFORM_STRING, Integer.toString(this.transform));
        return iIOMetadataNode;
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void print() {
        printTag("Adobe APP14");
        System.out.print("Version: ");
        System.out.println(this.version);
        System.out.print("Flags0: 0x");
        System.out.println(Integer.toHexString(this.flags0));
        System.out.print("Flags1: 0x");
        System.out.println(Integer.toHexString(this.flags1));
        System.out.print("Transform: ");
        System.out.println(this.transform);
    }

    public void updateFromNativeNode(Node node, boolean z) throws IIOInvalidTreeException {
        NamedNodeMap attributes = node.getAttributes();
        this.transform = MarkerSegment.getAttributeValue(node, attributes, Constants.ELEMNAME_TRANSFORM_STRING, 0, 2, true);
        int length = attributes.getLength();
        if (length > 4) {
            throw new IIOInvalidTreeException("Adobe APP14 node cannot have > 4 attributes", node);
        }
        if (length > 1) {
            int attributeValue = MarkerSegment.getAttributeValue(node, attributes, "version", 100, 255, false);
            if (attributeValue == -1) {
                attributeValue = this.version;
            }
            this.version = attributeValue;
            int attributeValue2 = MarkerSegment.getAttributeValue(node, attributes, "flags0", 0, 65535, false);
            if (attributeValue2 == -1) {
                attributeValue2 = this.flags0;
            }
            this.flags0 = attributeValue2;
            int attributeValue3 = MarkerSegment.getAttributeValue(node, attributes, "flags1", 0, 65535, false);
            if (attributeValue3 == -1) {
                attributeValue3 = this.flags1;
            }
            this.flags1 = attributeValue3;
        }
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void write(ImageOutputStream imageOutputStream) throws IOException {
        this.length = 14;
        writeTag(imageOutputStream);
        imageOutputStream.write(new byte[]{65, 100, 111, 98, 101});
        MarkerSegment.write2bytes(imageOutputStream, this.version);
        MarkerSegment.write2bytes(imageOutputStream, this.flags0);
        MarkerSegment.write2bytes(imageOutputStream, this.flags1);
        imageOutputStream.write(this.transform);
    }

    public AdobeMarkerSegment(JPEGBuffer jPEGBuffer) throws IOException {
        super(jPEGBuffer);
        int i = jPEGBuffer.bufPtr + 5;
        byte[] bArr = jPEGBuffer.buf;
        int i2 = i + 1;
        int i3 = i2 + 1;
        this.version = ((bArr[i] & 255) << 8) | (bArr[i2] & 255);
        int i4 = i3 + 1;
        int i5 = (bArr[i3] & 255) << 8;
        int i6 = i4 + 1;
        this.flags0 = (bArr[i4] & 255) | i5;
        int i7 = i6 + 1;
        int i8 = (bArr[i6] & 255) << 8;
        int i9 = i7 + 1;
        this.flags1 = (bArr[i7] & 255) | i8;
        jPEGBuffer.bufPtr = i9 + 1;
        this.transform = bArr[i9] & 255;
        jPEGBuffer.bufAvail -= this.length;
    }

    public AdobeMarkerSegment(Node node) throws IIOInvalidTreeException {
        this(0);
        updateFromNativeNode(node, true);
    }
}
