package com.sun.imageio.plugins.jpeg;

import java.io.IOException;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes9.dex */
public class SOSMarkerSegment extends MarkerSegment {
    int approxHigh;
    int approxLow;
    ScanComponentSpec[] componentSpecs;
    int endSpectralSelection;
    int startSpectralSelection;

    public SOSMarkerSegment(boolean z, byte[] bArr, int i) {
        super(218);
        int i2;
        this.startSpectralSelection = 0;
        this.endSpectralSelection = 63;
        this.approxHigh = 0;
        this.approxLow = 0;
        this.componentSpecs = new ScanComponentSpec[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (z) {
                i2 = 1;
                if (i3 != 1) {
                    if (i3 == 2) {
                    }
                }
                this.componentSpecs[i3] = new ScanComponentSpec(bArr[i3], i2);
            }
            i2 = 0;
            this.componentSpecs[i3] = new ScanComponentSpec(bArr[i3], i2);
        }
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public Object clone() {
        SOSMarkerSegment sOSMarkerSegment = (SOSMarkerSegment) super.clone();
        ScanComponentSpec[] scanComponentSpecArr = this.componentSpecs;
        if (scanComponentSpecArr != null) {
            sOSMarkerSegment.componentSpecs = (ScanComponentSpec[]) scanComponentSpecArr.clone();
            int i = 0;
            while (true) {
                ScanComponentSpec[] scanComponentSpecArr2 = this.componentSpecs;
                if (i >= scanComponentSpecArr2.length) {
                    break;
                }
                sOSMarkerSegment.componentSpecs[i] = (ScanComponentSpec) scanComponentSpecArr2[i].clone();
                i++;
            }
        }
        return sOSMarkerSegment;
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public IIOMetadataNode getNativeNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("sos");
        iIOMetadataNode.setAttribute("numScanComponents", Integer.toString(this.componentSpecs.length));
        iIOMetadataNode.setAttribute("startSpectralSelection", Integer.toString(this.startSpectralSelection));
        iIOMetadataNode.setAttribute("endSpectralSelection", Integer.toString(this.endSpectralSelection));
        iIOMetadataNode.setAttribute("approxHigh", Integer.toString(this.approxHigh));
        iIOMetadataNode.setAttribute("approxLow", Integer.toString(this.approxLow));
        int i = 0;
        while (true) {
            ScanComponentSpec[] scanComponentSpecArr = this.componentSpecs;
            if (i >= scanComponentSpecArr.length) {
                return iIOMetadataNode;
            }
            iIOMetadataNode.appendChild(scanComponentSpecArr[i].getNativeNode());
            i++;
        }
    }

    public ScanComponentSpec getScanComponentSpec(byte b, int i) {
        return new ScanComponentSpec(b, i);
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void print() {
        printTag("SOS");
        System.out.print("Start spectral selection: ");
        System.out.println(this.startSpectralSelection);
        System.out.print("End spectral selection: ");
        System.out.println(this.endSpectralSelection);
        System.out.print("Approx high: ");
        System.out.println(this.approxHigh);
        System.out.print("Approx low: ");
        System.out.println(this.approxLow);
        System.out.print("Num scan components: ");
        System.out.println(this.componentSpecs.length);
        int i = 0;
        while (true) {
            ScanComponentSpec[] scanComponentSpecArr = this.componentSpecs;
            if (i >= scanComponentSpecArr.length) {
                return;
            }
            scanComponentSpecArr[i].print();
            i++;
        }
    }

    public void updateFromNativeNode(Node node, boolean z) throws IIOInvalidTreeException {
        NamedNodeMap attributes = node.getAttributes();
        int attributeValue = MarkerSegment.getAttributeValue(node, attributes, "numScanComponents", 1, 4, true);
        int attributeValue2 = MarkerSegment.getAttributeValue(node, attributes, "startSpectralSelection", 0, 63, false);
        if (attributeValue2 == -1) {
            attributeValue2 = this.startSpectralSelection;
        }
        this.startSpectralSelection = attributeValue2;
        int attributeValue3 = MarkerSegment.getAttributeValue(node, attributes, "endSpectralSelection", 0, 63, false);
        if (attributeValue3 == -1) {
            attributeValue3 = this.endSpectralSelection;
        }
        this.endSpectralSelection = attributeValue3;
        int attributeValue4 = MarkerSegment.getAttributeValue(node, attributes, "approxHigh", 0, 15, false);
        if (attributeValue4 == -1) {
            attributeValue4 = this.approxHigh;
        }
        this.approxHigh = attributeValue4;
        int attributeValue5 = MarkerSegment.getAttributeValue(node, attributes, "approxLow", 0, 15, false);
        if (attributeValue5 == -1) {
            attributeValue5 = this.approxLow;
        }
        this.approxLow = attributeValue5;
        NodeList childNodes = node.getChildNodes();
        if (childNodes.getLength() != attributeValue) {
            throw new IIOInvalidTreeException("numScanComponents must match the number of children", node);
        }
        this.componentSpecs = new ScanComponentSpec[attributeValue];
        for (int i = 0; i < attributeValue; i++) {
            this.componentSpecs[i] = new ScanComponentSpec(childNodes.item(i));
        }
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void write(ImageOutputStream imageOutputStream) throws IOException {
    }

    /* loaded from: classes9.dex */
    public class ScanComponentSpec implements Cloneable {
        int acHuffTable;
        int componentSelector;
        int dcHuffTable;

        public ScanComponentSpec(byte b, int i) {
            this.componentSelector = b;
            this.dcHuffTable = i;
            this.acHuffTable = i;
        }

        public Object clone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        public IIOMetadataNode getNativeNode() {
            IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("scanComponentSpec");
            iIOMetadataNode.setAttribute("componentSelector", Integer.toString(this.componentSelector));
            iIOMetadataNode.setAttribute("dcHuffTable", Integer.toString(this.dcHuffTable));
            iIOMetadataNode.setAttribute("acHuffTable", Integer.toString(this.acHuffTable));
            return iIOMetadataNode;
        }

        public void print() {
            System.out.print("Component Selector: ");
            System.out.println(this.componentSelector);
            System.out.print("DC huffman table: ");
            System.out.println(this.dcHuffTable);
            System.out.print("AC huffman table: ");
            System.out.println(this.acHuffTable);
        }

        public ScanComponentSpec(JPEGBuffer jPEGBuffer) {
            byte[] bArr = jPEGBuffer.buf;
            int i = jPEGBuffer.bufPtr;
            int i2 = i + 1;
            this.componentSelector = bArr[i];
            byte b = bArr[i2];
            this.dcHuffTable = b >> 4;
            jPEGBuffer.bufPtr = i2 + 1;
            this.acHuffTable = b & 15;
        }

        public ScanComponentSpec(Node node) throws IIOInvalidTreeException {
            NamedNodeMap attributes = node.getAttributes();
            this.componentSelector = MarkerSegment.getAttributeValue(node, attributes, "componentSelector", 0, 255, true);
            this.dcHuffTable = MarkerSegment.getAttributeValue(node, attributes, "dcHuffTable", 0, 3, true);
            this.acHuffTable = MarkerSegment.getAttributeValue(node, attributes, "acHuffTable", 0, 3, true);
        }
    }

    public SOSMarkerSegment(JPEGBuffer jPEGBuffer) throws IOException {
        super(jPEGBuffer);
        byte[] bArr = jPEGBuffer.buf;
        int i = jPEGBuffer.bufPtr;
        jPEGBuffer.bufPtr = i + 1;
        int i2 = bArr[i];
        this.componentSpecs = new ScanComponentSpec[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.componentSpecs[i3] = new ScanComponentSpec(jPEGBuffer);
        }
        byte[] bArr2 = jPEGBuffer.buf;
        int i4 = jPEGBuffer.bufPtr;
        int i5 = i4 + 1;
        this.startSpectralSelection = bArr2[i4];
        int i6 = i5 + 1;
        this.endSpectralSelection = bArr2[i5];
        byte b = bArr2[i6];
        this.approxHigh = b >> 4;
        jPEGBuffer.bufPtr = i6 + 1;
        this.approxLow = b & 15;
        jPEGBuffer.bufAvail -= this.length;
    }

    public SOSMarkerSegment(Node node) throws IIOInvalidTreeException {
        super(218);
        this.startSpectralSelection = 0;
        this.endSpectralSelection = 63;
        this.approxHigh = 0;
        this.approxLow = 0;
        updateFromNativeNode(node, true);
    }
}
