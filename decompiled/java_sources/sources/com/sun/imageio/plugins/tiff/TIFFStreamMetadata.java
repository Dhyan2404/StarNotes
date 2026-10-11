package com.sun.imageio.plugins.tiff;

import java.nio.ByteOrder;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataNode;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
public class TIFFStreamMetadata extends IIOMetadata {
    static final String NATIVE_METADATA_FORMAT_CLASS_NAME = "javax.imageio.plugins.tiff.TIFFStreamMetadataFormat";
    static final String NATIVE_METADATA_FORMAT_NAME = "javax_imageio_tiff_stream_1.0";
    private static final String bigEndianString = ByteOrder.BIG_ENDIAN.toString();
    private static final String littleEndianString = ByteOrder.LITTLE_ENDIAN.toString();
    public ByteOrder byteOrder;

    public TIFFStreamMetadata() {
        super(false, NATIVE_METADATA_FORMAT_NAME, NATIVE_METADATA_FORMAT_CLASS_NAME, null, null);
        this.byteOrder = ByteOrder.BIG_ENDIAN;
    }

    private static void fatal(Node node, String str) throws IIOInvalidTreeException {
        throw new IIOInvalidTreeException(str, node);
    }

    private void mergeNativeTree(Node node) throws IIOInvalidTreeException {
        if (!node.getNodeName().equals(this.nativeMetadataFormatName)) {
            fatal(node, "Root must be " + this.nativeMetadataFormatName);
        }
        Node firstChild = node.getFirstChild();
        if (firstChild == null || !firstChild.getNodeName().equals("ByteOrder")) {
            fatal(firstChild, "Root must have \"ByteOrder\" child");
        }
        String nodeValue = firstChild.getAttributes().getNamedItem("value").getNodeValue();
        if (nodeValue == null) {
            fatal(firstChild, "ByteOrder node must have a \"value\" attribute");
        }
        if (nodeValue.equals(bigEndianString)) {
            this.byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (nodeValue.equals(littleEndianString)) {
            this.byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            fatal(firstChild, "Incorrect value for ByteOrder \"value\" attribute");
        }
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public Node getAsTree(String str) {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(this.nativeMetadataFormatName);
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("ByteOrder");
        iIOMetadataNode2.setAttribute("value", this.byteOrder.toString());
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public boolean isReadOnly() {
        return false;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void mergeTree(String str, Node node) throws IIOInvalidTreeException {
        if (!str.equals(this.nativeMetadataFormatName)) {
            throw new IllegalArgumentException("Not a recognized format!");
        }
        if (node == null) {
            throw new NullPointerException("root == null!");
        }
        mergeNativeTree(node);
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void reset() {
        this.byteOrder = ByteOrder.BIG_ENDIAN;
    }
}
