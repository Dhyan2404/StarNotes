package com.sun.imageio.plugins.tiff;

import java.util.Arrays;
import java.util.List;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.plugins.tiff.TIFFDirectory;
import javax.imageio.plugins.tiff.TIFFField;
import javax.imageio.plugins.tiff.TIFFTag;
import javax.imageio.plugins.tiff.TIFFTagSet;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
public class TIFFFieldNode extends IIOMetadataNode {
    private TIFFField field;
    private boolean isIFD;
    private Boolean isInitialized;

    public TIFFFieldNode(TIFFField tIFFField) {
        super(getNodeName(tIFFField));
        this.isInitialized = Boolean.FALSE;
        this.isIFD = isIFD(tIFFField);
        this.field = tIFFField;
        TIFFTag tag = tIFFField.getTag();
        int number = tag.getNumber();
        String name = tag.getName();
        if (!this.isIFD) {
            setAttribute("number", Integer.toString(number));
            setAttribute("name", name);
            return;
        }
        if (number != 0) {
            setAttribute("parentTagNumber", Integer.toString(number));
        }
        if (name != null) {
            setAttribute("parentTagName", name);
        }
        TIFFTagSet[] tagSets = (tIFFField.hasDirectory() ? tIFFField.getDirectory() : (TIFFDirectory) tIFFField.getData()).getTagSets();
        if (tagSets != null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < tagSets.length; i++) {
                sb.append(tagSets[i].getClass().getName());
                if (i != tagSets.length - 1) {
                    sb.append(",");
                }
            }
            setAttribute("tagSets", sb.toString());
        }
    }

    private static String getNodeName(TIFFField tIFFField) {
        return isIFD(tIFFField) ? "TIFFIFD" : "TIFFField";
    }

    private synchronized void initialize() {
        IIOMetadataNode iIOMetadataNode;
        String valueName;
        if (this.isInitialized.booleanValue()) {
            return;
        }
        int i = 0;
        if (this.isIFD) {
            TIFFDirectory directory = this.field.hasDirectory() ? this.field.getDirectory() : (TIFFDirectory) this.field.getData();
            TIFFField[] tIFFFields = directory.getTIFFFields();
            if (tIFFFields != null) {
                List asList = Arrays.asList(directory.getTagSets());
                int length = tIFFFields.length;
                while (i < length) {
                    TIFFField tIFFField = tIFFFields[i];
                    TIFFIFD.getTag(tIFFField.getTagNumber(), (List<TIFFTagSet>) asList);
                    Node asNativeNode = tIFFField.getAsNativeNode();
                    if (asNativeNode != null) {
                        appendChild(asNativeNode);
                    }
                    i++;
                }
            }
        } else {
            int count = this.field.getCount();
            if (this.field.getType() == 7) {
                iIOMetadataNode = new IIOMetadataNode("TIFFUndefined");
                byte[] asBytes = this.field.getAsBytes();
                StringBuffer stringBuffer = new StringBuffer();
                while (i < count) {
                    stringBuffer.append(Integer.toString(asBytes[i] & 255));
                    if (i < count - 1) {
                        stringBuffer.append(",");
                    }
                    i++;
                }
                iIOMetadataNode.setAttribute("value", stringBuffer.toString());
            } else {
                iIOMetadataNode = new IIOMetadataNode("TIFF" + TIFFField.getTypeName(this.field.getType()) + "s");
                TIFFTag tag = this.field.getTag();
                while (i < count) {
                    IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("TIFF" + TIFFField.getTypeName(this.field.getType()));
                    iIOMetadataNode2.setAttribute("value", this.field.getValueAsString(i));
                    if (tag.hasValueNames() && this.field.isIntegral() && (valueName = tag.getValueName(this.field.getAsInt(i))) != null) {
                        iIOMetadataNode2.setAttribute("description", valueName);
                    }
                    iIOMetadataNode.appendChild(iIOMetadataNode2);
                    i++;
                }
            }
            appendChild(iIOMetadataNode);
        }
        this.isInitialized = Boolean.TRUE;
    }

    private static boolean isIFD(TIFFField tIFFField) {
        int type = tIFFField.getType();
        return tIFFField.hasDirectory() && (type == 4 || type == 13);
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public Node appendChild(Node node) {
        if (node != null) {
            return super.insertBefore(node, null);
        }
        throw new NullPointerException("newChild == null!");
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        initialize();
        return super.cloneNode(z);
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public Node getFirstChild() {
        initialize();
        return super.getFirstChild();
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public Node getLastChild() {
        initialize();
        return super.getLastChild();
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.NodeList
    public int getLength() {
        initialize();
        return super.getLength();
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public Node getNextSibling() {
        initialize();
        return super.getNextSibling();
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public Node getPreviousSibling() {
        initialize();
        return super.getPreviousSibling();
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public boolean hasChildNodes() {
        initialize();
        return super.hasChildNodes();
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public Node insertBefore(Node node, Node node2) {
        initialize();
        return super.insertBefore(node, node2);
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public Node removeChild(Node node) {
        initialize();
        return super.removeChild(node);
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public Node replaceChild(Node node, Node node2) {
        initialize();
        return super.replaceChild(node, node2);
    }
}
