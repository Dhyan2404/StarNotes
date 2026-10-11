package com.sun.imageio.plugins.jpeg;

import java.io.IOException;
import javax.imageio.IIOException;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.stream.ImageOutputStream;
import org.mortbay.jetty.HttpStatus;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes9.dex */
public class MarkerSegment implements Cloneable {
    protected static final int LENGTH_SIZE = 2;
    byte[] data;
    int length;
    int tag;
    boolean unknown;

    public MarkerSegment(JPEGBuffer jPEGBuffer) throws IOException {
        this.data = null;
        this.unknown = false;
        jPEGBuffer.loadBuf(3);
        byte[] bArr = jPEGBuffer.buf;
        int i = jPEGBuffer.bufPtr;
        int i2 = i + 1;
        this.tag = bArr[i] & 255;
        int i3 = i2 + 1;
        int i4 = (bArr[i2] & 255) << 8;
        jPEGBuffer.bufPtr = i3 + 1;
        int i5 = ((bArr[i3] & 255) | i4) - 2;
        this.length = i5;
        if (i5 >= 0) {
            jPEGBuffer.bufAvail -= 3;
            jPEGBuffer.loadBuf(i5);
        } else {
            throw new IIOException("Invalid segment length: " + this.length);
        }
    }

    public static int getAttributeValue(Node node, NamedNodeMap namedNodeMap, String str, int i, int i2, boolean z) throws IIOInvalidTreeException {
        if (namedNodeMap == null) {
            namedNodeMap = node.getAttributes();
        }
        String nodeValue = namedNodeMap.getNamedItem(str).getNodeValue();
        if (nodeValue == null) {
            if (!z) {
                return -1;
            }
            throw new IIOInvalidTreeException(str + " attribute not found", node);
        }
        int parseInt = Integer.parseInt(nodeValue);
        if (parseInt >= i && parseInt <= i2) {
            return parseInt;
        }
        throw new IIOInvalidTreeException(str + " attribute out of range", node);
    }

    public static void write2bytes(ImageOutputStream imageOutputStream, int i) throws IOException {
        imageOutputStream.write((i >> 8) & 255);
        imageOutputStream.write(i & 255);
    }

    public Object clone() {
        MarkerSegment markerSegment;
        try {
            markerSegment = (MarkerSegment) super.clone();
        } catch (CloneNotSupportedException unused) {
            markerSegment = null;
        }
        byte[] bArr = this.data;
        if (bArr != null) {
            markerSegment.data = (byte[]) bArr.clone();
        }
        return markerSegment;
    }

    public IIOMetadataNode getNativeNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("unknown");
        iIOMetadataNode.setAttribute("MarkerTag", Integer.toString(this.tag));
        iIOMetadataNode.setUserObject(this.data);
        return iIOMetadataNode;
    }

    public void loadData(JPEGBuffer jPEGBuffer) throws IOException {
        byte[] bArr = new byte[this.length];
        this.data = bArr;
        jPEGBuffer.readData(bArr);
    }

    public void print() {
        printTag(HttpStatus.Unknown);
        int i = 0;
        if (this.length > 10) {
            System.out.print("First 5 bytes:");
            while (i < 5) {
                System.out.print(" Ox" + Integer.toHexString(this.data[i]));
                i++;
            }
            System.out.print("\nLast 5 bytes:");
            for (int length = this.data.length - 5; length < this.data.length; length++) {
                System.out.print(" Ox" + Integer.toHexString(this.data[length]));
            }
        } else {
            System.out.print("Data:");
            while (i < this.data.length) {
                System.out.print(" Ox" + Integer.toHexString(this.data[i]));
                i++;
            }
        }
        System.out.println();
    }

    public void printTag(String str) {
        System.out.println(str + " marker segment - marker = 0x" + Integer.toHexString(this.tag));
        System.out.println("length: " + this.length);
    }

    public void write(ImageOutputStream imageOutputStream) throws IOException {
        byte[] bArr = this.data;
        this.length = (bArr != null ? bArr.length : 0) + 2;
        writeTag(imageOutputStream);
        byte[] bArr2 = this.data;
        if (bArr2 != null) {
            imageOutputStream.write(bArr2);
        }
    }

    public void writeTag(ImageOutputStream imageOutputStream) throws IOException {
        imageOutputStream.write(255);
        imageOutputStream.write(this.tag);
        write2bytes(imageOutputStream, this.length);
    }

    public MarkerSegment(int i) {
        this.data = null;
        this.unknown = false;
        this.tag = i;
        this.length = 0;
    }

    public MarkerSegment(Node node) throws IIOInvalidTreeException {
        this.data = null;
        this.unknown = false;
        this.tag = getAttributeValue(node, null, "MarkerTag", 0, 255, true);
        this.length = 0;
        if (node instanceof IIOMetadataNode) {
            try {
                this.data = (byte[]) ((IIOMetadataNode) node).getUserObject();
                return;
            } catch (Exception e) {
                IIOInvalidTreeException iIOInvalidTreeException = new IIOInvalidTreeException("Can't get User Object", node);
                iIOInvalidTreeException.initCause(e);
                throw iIOInvalidTreeException;
            }
        }
        throw new IIOInvalidTreeException("Node must have User Object", node);
    }
}
