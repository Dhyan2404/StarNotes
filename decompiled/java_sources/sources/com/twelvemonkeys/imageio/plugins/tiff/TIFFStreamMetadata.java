package com.twelvemonkeys.imageio.plugins.tiff;

import com.twelvemonkeys.lang.Validate;
import java.nio.ByteOrder;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataNode;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public final class TIFFStreamMetadata extends IIOMetadata {
    public static final String SUN_NATIVE_STREAM_METADATA_FORMAT_NAME = "com_sun_media_imageio_plugins_tiff_stream_1.0";

    /* renamed from: e */
    public ByteOrder f94178e;

    public TIFFStreamMetadata() {
        super(false, "com_sun_media_imageio_plugins_tiff_stream_1.0", null, null, null);
        this.f94178e = ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: b */
    public final ByteOrder m60660b(String str) throws IIOInvalidTreeException {
        str.hashCode();
        if (str.equals("LITTLE_ENDIAN")) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (str.equals("BIG_ENDIAN")) {
            return ByteOrder.BIG_ENDIAN;
        }
        return null;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public Node getAsTree(String str) {
        Validate.isTrue(this.nativeMetadataFormatName.equals(str), str, "Unsupported metadata format: %s");
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(this.nativeMetadataFormatName);
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("ByteOrder");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        iIOMetadataNode2.setAttribute("value", this.f94178e.toString());
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public boolean isReadOnly() {
        return false;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void mergeTree(String str, Node node) throws IIOInvalidTreeException {
        Validate.isTrue(this.nativeMetadataFormatName.equals(str), str, "Unsupported metadata format: %s");
        Validate.notNull(node, "root");
        if (!this.nativeMetadataFormatName.equals(node.getNodeName())) {
            throw new IIOInvalidTreeException("Root must be " + this.nativeMetadataFormatName, node);
        }
        Node firstChild = node.getFirstChild();
        if (firstChild == null || !firstChild.getNodeName().equals("ByteOrder")) {
            throw new IIOInvalidTreeException("Missing \"ByteOrder\" node", firstChild);
        }
        String nodeValue = firstChild.getAttributes().getNamedItem("value").getNodeValue();
        if (nodeValue == null) {
            throw new IIOInvalidTreeException("Missing \"value\" attribute in \"ByteOrder\" node", firstChild);
        }
        ByteOrder m60660b = m60660b(nodeValue.toUpperCase());
        if (m60660b != null) {
            this.f94178e = m60660b;
            return;
        }
        throw new IIOInvalidTreeException("Unknown ByteOrder \"value\" attribute: " + nodeValue, firstChild);
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void reset() {
        this.f94178e = ByteOrder.BIG_ENDIAN;
    }
}
