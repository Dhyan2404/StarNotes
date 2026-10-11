package com.sun.imageio.plugins.wbmp;

import com.google.common.net.HttpHeaders;
import com.sun.imageio.plugins.common.I18N;
import com.sun.imageio.plugins.common.ImageUtil;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.metadata.IIOMetadataNode;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
public class WBMPMetadata extends IIOMetadata {
    static final String nativeMetadataFormatName = "javax_imageio_wbmp_1.0";
    public int height;
    public int wbmpType;
    public int width;

    public WBMPMetadata() {
        super(true, nativeMetadataFormatName, "com.sun.imageio.plugins.wbmp.WBMPMetadataFormat", null, null);
    }

    private IIOMetadataNode addChildNode(IIOMetadataNode iIOMetadataNode, String str, Object obj) {
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode(str);
        if (obj != null) {
            iIOMetadataNode2.setUserObject(obj);
            iIOMetadataNode2.setNodeValue(ImageUtil.convertObjectToString(obj));
        }
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode2;
    }

    private Node getNativeTree() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(nativeMetadataFormatName);
        addChildNode(iIOMetadataNode, "WBMPType", Integer.valueOf(this.wbmpType));
        addChildNode(iIOMetadataNode, HttpHeaders.WIDTH, Integer.valueOf(this.width));
        addChildNode(iIOMetadataNode, "Height", Integer.valueOf(this.height));
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public Node getAsTree(String str) {
        if (str.equals(nativeMetadataFormatName)) {
            return getNativeTree();
        }
        if (str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
            return getStandardTree();
        }
        throw new IllegalArgumentException(I18N.getString("WBMPMetadata0"));
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardChromaNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Chroma");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("BlackIsZero");
        iIOMetadataNode2.setAttribute("value", "TRUE");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDimensionNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Dimension");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("ImageOrientation");
        iIOMetadataNode2.setAttribute("value", "Normal");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public boolean isReadOnly() {
        return true;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void mergeTree(String str, Node node) {
        throw new IllegalStateException(I18N.getString("WBMPMetadata1"));
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void reset() {
        throw new IllegalStateException(I18N.getString("WBMPMetadata1"));
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void setFromTree(String str, Node node) {
        throw new IllegalStateException(I18N.getString("WBMPMetadata1"));
    }
}
