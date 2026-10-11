package com.sun.imageio.plugins.jpeg;

import java.io.IOException;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes9.dex */
class SOFMarkerSegment extends MarkerSegment {
    ComponentSpec[] componentSpecs;
    int numLines;
    int samplePrecision;
    int samplesPerLine;

    public SOFMarkerSegment(boolean z, boolean z2, boolean z3, byte[] bArr, int i) {
        super(z ? 194 : z2 ? 193 : 192);
        int i2;
        this.samplePrecision = 8;
        this.numLines = 0;
        this.samplesPerLine = 0;
        this.componentSpecs = new ComponentSpec[i];
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = 1;
            if (z3) {
                if (i3 == 1 || i3 == 2) {
                    i2 = 1;
                    this.componentSpecs[i3] = new ComponentSpec(bArr[i3], i4, i2);
                } else {
                    i4 = 2;
                }
            }
            i2 = 0;
            this.componentSpecs[i3] = new ComponentSpec(bArr[i3], i4, i2);
        }
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public Object clone() {
        SOFMarkerSegment sOFMarkerSegment = (SOFMarkerSegment) super.clone();
        ComponentSpec[] componentSpecArr = this.componentSpecs;
        if (componentSpecArr != null) {
            sOFMarkerSegment.componentSpecs = (ComponentSpec[]) componentSpecArr.clone();
            int i = 0;
            while (true) {
                ComponentSpec[] componentSpecArr2 = this.componentSpecs;
                if (i >= componentSpecArr2.length) {
                    break;
                }
                sOFMarkerSegment.componentSpecs[i] = (ComponentSpec) componentSpecArr2[i].clone();
                i++;
            }
        }
        return sOFMarkerSegment;
    }

    public ComponentSpec getComponentSpec(byte b, int i, int i2) {
        return new ComponentSpec(b, i, i2);
    }

    public int getIDencodedCSType() {
        int i = 0;
        while (true) {
            ComponentSpec[] componentSpecArr = this.componentSpecs;
            if (i >= componentSpecArr.length) {
                return (componentSpecArr.length == 3 && componentSpecArr[0].componentId == 82 && componentSpecArr[1].componentId == 71 && componentSpecArr[2].componentId == 66) ? 2 : 0;
            }
            if (componentSpecArr[i].componentId < 65) {
                return 0;
            }
            i++;
        }
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public IIOMetadataNode getNativeNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("sof");
        iIOMetadataNode.setAttribute("process", Integer.toString(this.tag - 192));
        iIOMetadataNode.setAttribute("samplePrecision", Integer.toString(this.samplePrecision));
        iIOMetadataNode.setAttribute("numLines", Integer.toString(this.numLines));
        iIOMetadataNode.setAttribute("samplesPerLine", Integer.toString(this.samplesPerLine));
        iIOMetadataNode.setAttribute("numFrameComponents", Integer.toString(this.componentSpecs.length));
        int i = 0;
        while (true) {
            ComponentSpec[] componentSpecArr = this.componentSpecs;
            if (i >= componentSpecArr.length) {
                return iIOMetadataNode;
            }
            iIOMetadataNode.appendChild(componentSpecArr[i].getNativeNode());
            i++;
        }
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void print() {
        printTag("SOF");
        System.out.print("Sample precision: ");
        System.out.println(this.samplePrecision);
        System.out.print("Number of lines: ");
        System.out.println(this.numLines);
        System.out.print("Samples per line: ");
        System.out.println(this.samplesPerLine);
        System.out.print("Number of components: ");
        System.out.println(this.componentSpecs.length);
        int i = 0;
        while (true) {
            ComponentSpec[] componentSpecArr = this.componentSpecs;
            if (i >= componentSpecArr.length) {
                return;
            }
            componentSpecArr[i].print();
            i++;
        }
    }

    public void updateFromNativeNode(Node node, boolean z) throws IIOInvalidTreeException {
        NamedNodeMap attributes = node.getAttributes();
        int attributeValue = MarkerSegment.getAttributeValue(node, attributes, "process", 0, 2, false);
        this.tag = attributeValue != -1 ? attributeValue + 192 : this.tag;
        MarkerSegment.getAttributeValue(node, attributes, "samplePrecision", 8, 8, false);
        int attributeValue2 = MarkerSegment.getAttributeValue(node, attributes, "numLines", 0, 65535, false);
        if (attributeValue2 == -1) {
            attributeValue2 = this.numLines;
        }
        this.numLines = attributeValue2;
        int attributeValue3 = MarkerSegment.getAttributeValue(node, attributes, "samplesPerLine", 0, 65535, false);
        if (attributeValue3 == -1) {
            attributeValue3 = this.samplesPerLine;
        }
        this.samplesPerLine = attributeValue3;
        int attributeValue4 = MarkerSegment.getAttributeValue(node, attributes, "numFrameComponents", 1, 4, false);
        NodeList childNodes = node.getChildNodes();
        if (childNodes.getLength() != attributeValue4) {
            throw new IIOInvalidTreeException("numFrameComponents must match number of children", node);
        }
        this.componentSpecs = new ComponentSpec[attributeValue4];
        for (int i = 0; i < attributeValue4; i++) {
            this.componentSpecs[i] = new ComponentSpec(childNodes.item(i));
        }
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void write(ImageOutputStream imageOutputStream) throws IOException {
    }

    /* loaded from: classes9.dex */
    public class ComponentSpec implements Cloneable {
        int HsamplingFactor;
        int QtableSelector;
        int VsamplingFactor;
        int componentId;

        public ComponentSpec(byte b, int i, int i2) {
            this.componentId = b;
            this.HsamplingFactor = i;
            this.VsamplingFactor = i;
            this.QtableSelector = i2;
        }

        public Object clone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        public IIOMetadataNode getNativeNode() {
            IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("componentSpec");
            iIOMetadataNode.setAttribute("componentId", Integer.toString(this.componentId));
            iIOMetadataNode.setAttribute("HsamplingFactor", Integer.toString(this.HsamplingFactor));
            iIOMetadataNode.setAttribute("VsamplingFactor", Integer.toString(this.VsamplingFactor));
            iIOMetadataNode.setAttribute("QtableSelector", Integer.toString(this.QtableSelector));
            return iIOMetadataNode;
        }

        public void print() {
            System.out.print("Component ID: ");
            System.out.println(this.componentId);
            System.out.print("H sampling factor: ");
            System.out.println(this.HsamplingFactor);
            System.out.print("V sampling factor: ");
            System.out.println(this.VsamplingFactor);
            System.out.print("Q table selector: ");
            System.out.println(this.QtableSelector);
        }

        public ComponentSpec(JPEGBuffer jPEGBuffer) {
            byte[] bArr = jPEGBuffer.buf;
            int i = jPEGBuffer.bufPtr;
            int i2 = i + 1;
            this.componentId = bArr[i];
            byte b = bArr[i2];
            this.HsamplingFactor = b >>> 4;
            int i3 = i2 + 1;
            this.VsamplingFactor = b & 15;
            jPEGBuffer.bufPtr = i3 + 1;
            this.QtableSelector = bArr[i3];
        }

        public ComponentSpec(Node node) throws IIOInvalidTreeException {
            NamedNodeMap attributes = node.getAttributes();
            this.componentId = MarkerSegment.getAttributeValue(node, attributes, "componentId", 0, 255, true);
            this.HsamplingFactor = MarkerSegment.getAttributeValue(node, attributes, "HsamplingFactor", 1, 255, true);
            this.VsamplingFactor = MarkerSegment.getAttributeValue(node, attributes, "VsamplingFactor", 1, 255, true);
            this.QtableSelector = MarkerSegment.getAttributeValue(node, attributes, "QtableSelector", 0, 3, true);
        }
    }

    public SOFMarkerSegment(JPEGBuffer jPEGBuffer) throws IOException {
        super(jPEGBuffer);
        byte[] bArr = jPEGBuffer.buf;
        int i = jPEGBuffer.bufPtr;
        int i2 = i + 1;
        this.samplePrecision = bArr[i];
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        this.numLines = (bArr[i3] & 255) | ((bArr[i2] & 255) << 8);
        int i5 = i4 + 1;
        int i6 = (bArr[i4] & 255) << 8;
        int i7 = i5 + 1;
        this.samplesPerLine = (bArr[i5] & 255) | i6;
        jPEGBuffer.bufPtr = i7 + 1;
        int i8 = bArr[i7] & 255;
        this.componentSpecs = new ComponentSpec[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            this.componentSpecs[i9] = new ComponentSpec(jPEGBuffer);
        }
        jPEGBuffer.bufAvail -= this.length;
    }

    public SOFMarkerSegment(Node node) throws IIOInvalidTreeException {
        super(192);
        this.samplePrecision = 8;
        this.numLines = 0;
        this.samplesPerLine = 0;
        updateFromNativeNode(node, true);
    }
}
