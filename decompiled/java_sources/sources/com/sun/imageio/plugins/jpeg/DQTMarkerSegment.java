package com.sun.imageio.plugins.jpeg;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.plugins.jpeg.JPEGQTable;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes9.dex */
class DQTMarkerSegment extends MarkerSegment {
    List<Qtable> tables;

    public DQTMarkerSegment(float f, boolean z) {
        super(219);
        ArrayList arrayList = new ArrayList();
        this.tables = arrayList;
        arrayList.add(new Qtable(true, f));
        if (z) {
            this.tables.add(new Qtable(false, f));
        }
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public Object clone() {
        DQTMarkerSegment dQTMarkerSegment = (DQTMarkerSegment) super.clone();
        dQTMarkerSegment.tables = new ArrayList(this.tables.size());
        Iterator<Qtable> it2 = this.tables.iterator();
        while (it2.hasNext()) {
            dQTMarkerSegment.tables.add((Qtable) it2.next().clone());
        }
        return dQTMarkerSegment;
    }

    public Qtable getChromaForLuma(Qtable qtable) {
        int i;
        boolean z;
        int i2 = 1;
        while (true) {
            qtable.getClass();
            i = 0;
            if (i2 >= 64) {
                z = true;
                break;
            }
            int[] iArr = qtable.data;
            if (iArr[i2] != iArr[i2 - 1]) {
                z = false;
                break;
            }
            i2++;
        }
        if (z) {
            Qtable qtable2 = (Qtable) qtable.clone();
            qtable2.tableID = 1;
            return qtable2;
        }
        for (int i3 = 1; i3 < 64; i3++) {
            int[] iArr2 = qtable.data;
            if (iArr2[i3] > iArr2[i]) {
                i = i3;
            }
        }
        return new Qtable(JPEGQTable.K2Div2Chrominance.getScaledInstance(qtable.data[i] / JPEGQTable.K1Div2Luminance.getTable()[i], true), 1);
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public IIOMetadataNode getNativeNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("dqt");
        for (int i = 0; i < this.tables.size(); i++) {
            iIOMetadataNode.appendChild(this.tables.get(i).getNativeNode());
        }
        return iIOMetadataNode;
    }

    public Qtable getQtableFromNode(Node node) throws IIOInvalidTreeException {
        return new Qtable(node);
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void print() {
        printTag("DQT");
        System.out.println("Num tables: " + Integer.toString(this.tables.size()));
        for (int i = 0; i < this.tables.size(); i++) {
            this.tables.get(i).print();
        }
        System.out.println();
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void write(ImageOutputStream imageOutputStream) throws IOException {
    }

    public DQTMarkerSegment(JPEGBuffer jPEGBuffer) throws IOException {
        super(jPEGBuffer);
        this.tables = new ArrayList();
        int i = this.length;
        while (i > 0) {
            Qtable qtable = new Qtable(jPEGBuffer);
            this.tables.add(qtable);
            i -= qtable.data.length + 1;
        }
        jPEGBuffer.bufAvail -= this.length;
    }

    public DQTMarkerSegment(JPEGQTable[] jPEGQTableArr) {
        super(219);
        this.tables = new ArrayList();
        for (int i = 0; i < jPEGQTableArr.length; i++) {
            this.tables.add(new Qtable(jPEGQTableArr[i], i));
        }
    }

    /* loaded from: classes9.dex */
    public class Qtable implements Cloneable {
        final int QTABLE_SIZE;
        int[] data;
        int elementPrecision;
        int tableID;
        private final int[] zigzag;

        public Qtable(boolean z, float f) {
            JPEGQTable jPEGQTable;
            this.QTABLE_SIZE = 64;
            this.zigzag = new int[]{0, 1, 5, 6, 14, 15, 27, 28, 2, 4, 7, 13, 16, 26, 29, 42, 3, 8, 12, 17, 25, 30, 41, 43, 9, 11, 18, 24, 31, 40, 44, 53, 10, 19, 23, 32, 39, 45, 52, 54, 20, 22, 33, 38, 46, 51, 55, 60, 21, 34, 37, 47, 50, 56, 59, 61, 35, 36, 48, 49, 57, 58, 62, 63};
            this.elementPrecision = 0;
            if (z) {
                this.tableID = 0;
                jPEGQTable = JPEGQTable.K1Div2Luminance;
            } else {
                this.tableID = 1;
                jPEGQTable = JPEGQTable.K2Div2Chrominance;
            }
            if (f != 0.75f) {
                float convertToLinearQuality = JPEG.convertToLinearQuality(f);
                if (z) {
                    jPEGQTable = JPEGQTable.K1Luminance.getScaledInstance(convertToLinearQuality, true);
                } else {
                    jPEGQTable = JPEGQTable.K2Div2Chrominance.getScaledInstance(convertToLinearQuality, true);
                }
            }
            this.data = jPEGQTable.getTable();
        }

        public Object clone() {
            Qtable qtable;
            try {
                qtable = (Qtable) super.clone();
            } catch (CloneNotSupportedException unused) {
                qtable = null;
            }
            int[] iArr = this.data;
            if (iArr != null) {
                qtable.data = (int[]) iArr.clone();
            }
            return qtable;
        }

        public IIOMetadataNode getNativeNode() {
            IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("dqtable");
            iIOMetadataNode.setAttribute("elementPrecision", Integer.toString(this.elementPrecision));
            iIOMetadataNode.setAttribute("qtableId", Integer.toString(this.tableID));
            iIOMetadataNode.setUserObject(new JPEGQTable(this.data));
            return iIOMetadataNode;
        }

        public void print() {
            System.out.println("Table id: " + Integer.toString(this.tableID));
            System.out.println("Element precision: " + Integer.toString(this.elementPrecision));
            new JPEGQTable(this.data).toString();
        }

        public Qtable(JPEGBuffer jPEGBuffer) throws IIOException {
            this.QTABLE_SIZE = 64;
            this.zigzag = new int[]{0, 1, 5, 6, 14, 15, 27, 28, 2, 4, 7, 13, 16, 26, 29, 42, 3, 8, 12, 17, 25, 30, 41, 43, 9, 11, 18, 24, 31, 40, 44, 53, 10, 19, 23, 32, 39, 45, 52, 54, 20, 22, 33, 38, 46, 51, 55, 60, 21, 34, 37, 47, 50, 56, 59, 61, 35, 36, 48, 49, 57, 58, 62, 63};
            byte[] bArr = jPEGBuffer.buf;
            int i = jPEGBuffer.bufPtr;
            byte b = bArr[i];
            int i2 = b >>> 4;
            this.elementPrecision = i2;
            jPEGBuffer.bufPtr = i + 1;
            this.tableID = b & 15;
            if (i2 == 0) {
                this.data = new int[64];
                for (int i3 = 0; i3 < 64; i3++) {
                    this.data[i3] = jPEGBuffer.buf[jPEGBuffer.bufPtr + this.zigzag[i3]] & 255;
                }
                jPEGBuffer.bufPtr += 64;
                return;
            }
            throw new IIOException("Unsupported element precision");
        }

        public Qtable(JPEGQTable jPEGQTable, int i) {
            this.QTABLE_SIZE = 64;
            this.zigzag = new int[]{0, 1, 5, 6, 14, 15, 27, 28, 2, 4, 7, 13, 16, 26, 29, 42, 3, 8, 12, 17, 25, 30, 41, 43, 9, 11, 18, 24, 31, 40, 44, 53, 10, 19, 23, 32, 39, 45, 52, 54, 20, 22, 33, 38, 46, 51, 55, 60, 21, 34, 37, 47, 50, 56, 59, 61, 35, 36, 48, 49, 57, 58, 62, 63};
            this.elementPrecision = 0;
            this.tableID = i;
            this.data = jPEGQTable.getTable();
        }

        public Qtable(Node node) throws IIOInvalidTreeException {
            this.QTABLE_SIZE = 64;
            this.zigzag = new int[]{0, 1, 5, 6, 14, 15, 27, 28, 2, 4, 7, 13, 16, 26, 29, 42, 3, 8, 12, 17, 25, 30, 41, 43, 9, 11, 18, 24, 31, 40, 44, 53, 10, 19, 23, 32, 39, 45, 52, 54, 20, 22, 33, 38, 46, 51, 55, 60, 21, 34, 37, 47, 50, 56, 59, 61, 35, 36, 48, 49, 57, 58, 62, 63};
            if (node.getNodeName().equals("dqtable")) {
                NamedNodeMap attributes = node.getAttributes();
                int length = attributes.getLength();
                if (length >= 1 && length <= 2) {
                    this.elementPrecision = 0;
                    this.tableID = MarkerSegment.getAttributeValue(node, attributes, "qtableId", 0, 3, true);
                    if (node instanceof IIOMetadataNode) {
                        JPEGQTable jPEGQTable = (JPEGQTable) ((IIOMetadataNode) node).getUserObject();
                        if (jPEGQTable != null) {
                            this.data = jPEGQTable.getTable();
                            return;
                        }
                        throw new IIOInvalidTreeException("dqtable node must have user object", node);
                    }
                    throw new IIOInvalidTreeException("dqtable node must have user object", node);
                }
                throw new IIOInvalidTreeException("dqtable node must have 1 or 2 attributes", node);
            }
            throw new IIOInvalidTreeException("Invalid node, expected dqtable", node);
        }
    }

    public DQTMarkerSegment(Node node) throws IIOInvalidTreeException {
        super(219);
        this.tables = new ArrayList();
        NodeList childNodes = node.getChildNodes();
        int length = childNodes.getLength();
        if (length < 1 || length > 4) {
            throw new IIOInvalidTreeException("Invalid DQT node", node);
        }
        for (int i = 0; i < length; i++) {
            this.tables.add(new Qtable(childNodes.item(i)));
        }
    }
}
