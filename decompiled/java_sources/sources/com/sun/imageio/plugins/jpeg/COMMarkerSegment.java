package com.sun.imageio.plugins.jpeg;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
class COMMarkerSegment extends MarkerSegment {
    private static final String ENCODING = "ISO-8859-1";

    public COMMarkerSegment(JPEGBuffer jPEGBuffer) throws IOException {
        super(jPEGBuffer);
        loadData(jPEGBuffer);
    }

    public String getComment() {
        try {
            return new String(this.data, "ISO-8859-1");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public IIOMetadataNode getNativeNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("com");
        iIOMetadataNode.setAttribute("comment", getComment());
        byte[] bArr = this.data;
        if (bArr != null) {
            iIOMetadataNode.setUserObject(bArr.clone());
        }
        return iIOMetadataNode;
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void print() {
        printTag("COM");
        System.out.println("<" + getComment() + ">");
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void write(ImageOutputStream imageOutputStream) throws IOException {
        this.length = this.data.length + 2;
        writeTag(imageOutputStream);
        imageOutputStream.write(this.data);
    }

    public COMMarkerSegment(String str) {
        super(254);
        this.data = str.getBytes();
    }

    public COMMarkerSegment(Node node) throws IIOInvalidTreeException {
        super(254);
        if (node instanceof IIOMetadataNode) {
            this.data = (byte[]) ((IIOMetadataNode) node).getUserObject();
        }
        if (this.data == null) {
            String nodeValue = node.getAttributes().getNamedItem("comment").getNodeValue();
            if (nodeValue != null) {
                this.data = nodeValue.getBytes();
                return;
            }
            throw new IIOInvalidTreeException("Empty comment node!", node);
        }
    }
}
