package com.sun.imageio.plugins.jpeg;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.sun.imageio.plugins.jpeg.DHTMarkerSegment;
import com.sun.imageio.plugins.jpeg.SOFMarkerSegment;
import com.sun.imageio.plugins.jpeg.SOSMarkerSegment;
import java.awt.Point;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_ColorSpace;
import java.awt.color.ICC_Profile;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.imageio.IIOException;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.plugins.jpeg.JPEGImageWriteParam;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes9.dex */
public class JPEGMetadata extends IIOMetadata implements Cloneable {
    private static final boolean debug = false;
    private boolean hasAlpha;
    private boolean inThumb;
    final boolean isStream;
    List<MarkerSegment> markerSequence;
    private List<MarkerSegment> resetSequence;
    private boolean transparencyDone;

    public JPEGMetadata(boolean z, boolean z2) {
        super(true, "javax_imageio_jpeg_image_1.0", JPEG.nativeImageMetadataFormatClassName, null, null);
        this.resetSequence = null;
        this.inThumb = false;
        this.markerSequence = new ArrayList();
        this.inThumb = z2;
        this.isStream = z;
        if (z) {
            this.nativeMetadataFormatName = JPEG.nativeStreamMetadataFormatName;
            this.nativeMetadataFormatClassName = JPEG.nativeStreamMetadataFormatClassName;
        }
    }

    private List<MarkerSegment> cloneSequence() {
        if (this.markerSequence == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.markerSequence.size());
        Iterator<MarkerSegment> it2 = this.markerSequence.iterator();
        while (it2.hasNext()) {
            arrayList.add((MarkerSegment) it2.next().clone());
        }
        return arrayList;
    }

    private int countScanBands() {
        ArrayList arrayList = new ArrayList();
        for (MarkerSegment markerSegment : this.markerSequence) {
            if (markerSegment instanceof SOSMarkerSegment) {
                for (SOSMarkerSegment.ScanComponentSpec scanComponentSpec : ((SOSMarkerSegment) markerSegment).componentSpecs) {
                    Integer valueOf = Integer.valueOf(scanComponentSpec.componentSelector);
                    if (!arrayList.contains(valueOf)) {
                        arrayList.add(valueOf);
                    }
                }
            }
        }
        return arrayList.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Point findIntegerRatio(float f) {
        boolean z;
        float abs = Math.abs(f);
        int i = 1;
        if (abs <= 0.005f) {
            return new Point(1, 255);
        }
        if (abs >= 255.0f) {
            return new Point(255, 1);
        }
        if (abs < 1.0d) {
            abs = 1.0f / abs;
            z = true;
        } else {
            z = false;
        }
        int round = Math.round(abs);
        float f2 = Math.abs(abs - round);
        while (f2 > 0.005f) {
            i++;
            int abs2 = Math.abs(abs - (Math.round(r2 * abs) / i));
            round = abs2;
            f2 = abs2;
        }
        return z ? new Point(i, round) : new Point(round, i);
    }

    private int findLastUnknownMarkerSegmentPosition() {
        List<MarkerSegment> list = this.markerSequence;
        ListIterator<MarkerSegment> listIterator = list.listIterator(list.size());
        int size = this.markerSequence.size() - 1;
        while (listIterator.hasPrevious()) {
            if (listIterator.previous().unknown) {
                return size;
            }
            size--;
        }
        return -1;
    }

    private int findMarkerSegmentPosition(Class<? extends MarkerSegment> cls, boolean z) {
        if (z) {
            ListIterator<MarkerSegment> listIterator = this.markerSequence.listIterator();
            int i = 0;
            while (listIterator.hasNext()) {
                if (cls.isInstance(listIterator.next())) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        List<MarkerSegment> list = this.markerSequence;
        ListIterator<MarkerSegment> listIterator2 = list.listIterator(list.size());
        int size = this.markerSequence.size();
        do {
            size--;
            if (!listIterator2.hasPrevious()) {
                return -1;
            }
        } while (!cls.isInstance(listIterator2.previous()));
        return size;
    }

    private void insertAdobeMarkerSegment(AdobeMarkerSegment adobeMarkerSegment) {
        boolean z = findMarkerSegment(JFIFMarkerSegment.class, true) != null;
        int findLastUnknownMarkerSegmentPosition = findLastUnknownMarkerSegmentPosition();
        if (z) {
            this.markerSequence.add(1, adobeMarkerSegment);
        } else if (findLastUnknownMarkerSegmentPosition != -1) {
            this.markerSequence.add(findLastUnknownMarkerSegmentPosition + 1, adobeMarkerSegment);
        } else {
            this.markerSequence.add(0, adobeMarkerSegment);
        }
    }

    private void insertCOMMarkerSegment(COMMarkerSegment cOMMarkerSegment) {
        int findMarkerSegmentPosition = findMarkerSegmentPosition(COMMarkerSegment.class, false);
        boolean z = findMarkerSegment(JFIFMarkerSegment.class, true) != null;
        int findMarkerSegmentPosition2 = findMarkerSegmentPosition(AdobeMarkerSegment.class, true);
        if (findMarkerSegmentPosition != -1) {
            this.markerSequence.add(findMarkerSegmentPosition + 1, cOMMarkerSegment);
            return;
        }
        if (z) {
            this.markerSequence.add(1, cOMMarkerSegment);
        } else if (findMarkerSegmentPosition2 != -1) {
            this.markerSequence.add(findMarkerSegmentPosition2 + 1, cOMMarkerSegment);
        } else {
            this.markerSequence.add(0, cOMMarkerSegment);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004b, code lost:
    
        if (r3.transform != 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0051, code lost:
    
        if (r3.transform != 1) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isConsistent() {
        /*
            r8 = this;
            java.lang.Class<com.sun.imageio.plugins.jpeg.SOFMarkerSegment> r0 = com.sun.imageio.plugins.jpeg.SOFMarkerSegment.class
            r1 = 1
            com.sun.imageio.plugins.jpeg.MarkerSegment r0 = r8.findMarkerSegment(r0, r1)
            com.sun.imageio.plugins.jpeg.SOFMarkerSegment r0 = (com.sun.imageio.plugins.jpeg.SOFMarkerSegment) r0
            java.lang.Class<com.sun.imageio.plugins.jpeg.JFIFMarkerSegment> r2 = com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.class
            com.sun.imageio.plugins.jpeg.MarkerSegment r2 = r8.findMarkerSegment(r2, r1)
            com.sun.imageio.plugins.jpeg.JFIFMarkerSegment r2 = (com.sun.imageio.plugins.jpeg.JFIFMarkerSegment) r2
            java.lang.Class<com.sun.imageio.plugins.jpeg.AdobeMarkerSegment> r3 = com.sun.imageio.plugins.jpeg.AdobeMarkerSegment.class
            com.sun.imageio.plugins.jpeg.MarkerSegment r3 = r8.findMarkerSegment(r3, r1)
            com.sun.imageio.plugins.jpeg.AdobeMarkerSegment r3 = (com.sun.imageio.plugins.jpeg.AdobeMarkerSegment) r3
            boolean r4 = r8.isStream
            if (r4 != 0) goto L67
            r4 = 0
            if (r0 == 0) goto L56
            com.sun.imageio.plugins.jpeg.SOFMarkerSegment$ComponentSpec[] r5 = r0.componentSpecs
            int r5 = r5.length
            int r8 = r8.countScanBands()
            if (r8 == 0) goto L2d
            if (r8 == r5) goto L2d
            r8 = r4
            goto L2e
        L2d:
            r8 = r1
        L2e:
            if (r2 == 0) goto L54
            r2 = 3
            if (r5 == r1) goto L36
            if (r5 == r2) goto L36
            r8 = r4
        L36:
            r6 = r4
        L37:
            if (r6 >= r5) goto L45
            com.sun.imageio.plugins.jpeg.SOFMarkerSegment$ComponentSpec[] r7 = r0.componentSpecs
            r7 = r7[r6]
            int r7 = r7.componentId
            int r6 = r6 + 1
            if (r7 == r6) goto L37
            r8 = r4
            goto L37
        L45:
            if (r3 == 0) goto L54
            if (r5 != r1) goto L4d
            int r0 = r3.transform
            if (r0 != 0) goto L66
        L4d:
            if (r5 != r2) goto L54
            int r0 = r3.transform
            if (r0 == r1) goto L54
            goto L66
        L54:
            r1 = r8
            goto L67
        L56:
            java.lang.Class<com.sun.imageio.plugins.jpeg.SOSMarkerSegment> r5 = com.sun.imageio.plugins.jpeg.SOSMarkerSegment.class
            com.sun.imageio.plugins.jpeg.MarkerSegment r8 = r8.findMarkerSegment(r5, r1)
            com.sun.imageio.plugins.jpeg.SOSMarkerSegment r8 = (com.sun.imageio.plugins.jpeg.SOSMarkerSegment) r8
            if (r2 != 0) goto L66
            if (r3 != 0) goto L66
            if (r0 != 0) goto L66
            if (r8 == 0) goto L67
        L66:
            r1 = r4
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.jpeg.JPEGMetadata.isConsistent():boolean");
    }

    private void mergeAdobeNode(Node node) throws IIOInvalidTreeException {
        AdobeMarkerSegment adobeMarkerSegment = (AdobeMarkerSegment) findMarkerSegment(AdobeMarkerSegment.class, true);
        if (adobeMarkerSegment != null) {
            adobeMarkerSegment.updateFromNativeNode(node, false);
        } else {
            insertAdobeMarkerSegment(new AdobeMarkerSegment(node));
        }
    }

    private void mergeCOMNode(Node node) throws IIOInvalidTreeException {
        insertCOMMarkerSegment(new COMMarkerSegment(node));
    }

    private void mergeDHTNode(Node node) throws IIOInvalidTreeException {
        ArrayList arrayList = new ArrayList();
        for (MarkerSegment markerSegment : this.markerSequence) {
            if (markerSegment instanceof DHTMarkerSegment) {
                arrayList.add((DHTMarkerSegment) markerSegment);
            }
        }
        if (arrayList.isEmpty()) {
            DHTMarkerSegment dHTMarkerSegment = new DHTMarkerSegment(node);
            int findMarkerSegmentPosition = findMarkerSegmentPosition(DQTMarkerSegment.class, false);
            int findMarkerSegmentPosition2 = findMarkerSegmentPosition(SOFMarkerSegment.class, true);
            int findMarkerSegmentPosition3 = findMarkerSegmentPosition(SOSMarkerSegment.class, true);
            if (findMarkerSegmentPosition != -1) {
                this.markerSequence.add(findMarkerSegmentPosition + 1, dHTMarkerSegment);
                return;
            }
            if (findMarkerSegmentPosition2 != -1) {
                this.markerSequence.add(findMarkerSegmentPosition2, dHTMarkerSegment);
                return;
            } else if (findMarkerSegmentPosition3 != -1) {
                this.markerSequence.add(findMarkerSegmentPosition3, dHTMarkerSegment);
                return;
            } else {
                this.markerSequence.add(dHTMarkerSegment);
                return;
            }
        }
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            NamedNodeMap attributes = item.getAttributes();
            int attributeValue = MarkerSegment.getAttributeValue(item, attributes, "htableId", 0, 3, true);
            int attributeValue2 = MarkerSegment.getAttributeValue(item, attributes, "class", 0, 1, true);
            DHTMarkerSegment dHTMarkerSegment2 = null;
            int i2 = -1;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                DHTMarkerSegment dHTMarkerSegment3 = (DHTMarkerSegment) arrayList.get(i3);
                int i4 = 0;
                while (true) {
                    if (i4 >= dHTMarkerSegment3.tables.size()) {
                        break;
                    }
                    DHTMarkerSegment.Htable htable = dHTMarkerSegment3.tables.get(i4);
                    if (attributeValue == htable.tableID && attributeValue2 == htable.tableClass) {
                        dHTMarkerSegment2 = dHTMarkerSegment3;
                        i2 = i4;
                        break;
                    }
                    i4++;
                }
                if (dHTMarkerSegment2 != null) {
                    break;
                }
            }
            if (dHTMarkerSegment2 != null) {
                dHTMarkerSegment2.tables.set(i2, dHTMarkerSegment2.getHtableFromNode(item));
            } else {
                DHTMarkerSegment dHTMarkerSegment4 = (DHTMarkerSegment) arrayList.get(arrayList.size() - 1);
                dHTMarkerSegment4.tables.add(dHTMarkerSegment4.getHtableFromNode(item));
            }
        }
    }

    private void mergeDQTNode(Node node) throws IIOInvalidTreeException {
        ArrayList arrayList = new ArrayList();
        for (MarkerSegment markerSegment : this.markerSequence) {
            if (markerSegment instanceof DQTMarkerSegment) {
                arrayList.add((DQTMarkerSegment) markerSegment);
            }
        }
        if (arrayList.isEmpty()) {
            DQTMarkerSegment dQTMarkerSegment = new DQTMarkerSegment(node);
            int findMarkerSegmentPosition = findMarkerSegmentPosition(DHTMarkerSegment.class, true);
            int findMarkerSegmentPosition2 = findMarkerSegmentPosition(SOFMarkerSegment.class, true);
            int findMarkerSegmentPosition3 = findMarkerSegmentPosition(SOSMarkerSegment.class, true);
            if (findMarkerSegmentPosition != -1) {
                this.markerSequence.add(findMarkerSegmentPosition, dQTMarkerSegment);
                return;
            }
            if (findMarkerSegmentPosition2 != -1) {
                this.markerSequence.add(findMarkerSegmentPosition2, dQTMarkerSegment);
                return;
            } else if (findMarkerSegmentPosition3 != -1) {
                this.markerSequence.add(findMarkerSegmentPosition3, dQTMarkerSegment);
                return;
            } else {
                this.markerSequence.add(dQTMarkerSegment);
                return;
            }
        }
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            DQTMarkerSegment dQTMarkerSegment2 = null;
            int attributeValue = MarkerSegment.getAttributeValue(item, null, "qtableId", 0, 3, true);
            int i2 = -1;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                DQTMarkerSegment dQTMarkerSegment3 = (DQTMarkerSegment) arrayList.get(i3);
                int i4 = 0;
                while (true) {
                    if (i4 >= dQTMarkerSegment3.tables.size()) {
                        break;
                    }
                    if (attributeValue == dQTMarkerSegment3.tables.get(i4).tableID) {
                        dQTMarkerSegment2 = dQTMarkerSegment3;
                        i2 = i4;
                        break;
                    }
                    i4++;
                }
                if (dQTMarkerSegment2 != null) {
                    break;
                }
            }
            if (dQTMarkerSegment2 != null) {
                dQTMarkerSegment2.tables.set(i2, dQTMarkerSegment2.getQtableFromNode(item));
            } else {
                DQTMarkerSegment dQTMarkerSegment4 = (DQTMarkerSegment) arrayList.get(arrayList.size() - 1);
                dQTMarkerSegment4.tables.add(dQTMarkerSegment4.getQtableFromNode(item));
            }
        }
    }

    private void mergeDRINode(Node node) throws IIOInvalidTreeException {
        DRIMarkerSegment dRIMarkerSegment = (DRIMarkerSegment) findMarkerSegment(DRIMarkerSegment.class, true);
        if (dRIMarkerSegment != null) {
            dRIMarkerSegment.updateFromNativeNode(node, false);
            return;
        }
        DRIMarkerSegment dRIMarkerSegment2 = new DRIMarkerSegment(node);
        int findMarkerSegmentPosition = findMarkerSegmentPosition(SOFMarkerSegment.class, true);
        int findMarkerSegmentPosition2 = findMarkerSegmentPosition(SOSMarkerSegment.class, true);
        if (findMarkerSegmentPosition != -1) {
            this.markerSequence.add(findMarkerSegmentPosition, dRIMarkerSegment2);
        } else if (findMarkerSegmentPosition2 != -1) {
            this.markerSequence.add(findMarkerSegmentPosition2, dRIMarkerSegment2);
        } else {
            this.markerSequence.add(dRIMarkerSegment2);
        }
    }

    private void mergeJFIFsubtree(Node node) throws IIOInvalidTreeException {
        if (node.getChildNodes().getLength() != 0) {
            Node firstChild = node.getFirstChild();
            JFIFMarkerSegment jFIFMarkerSegment = (JFIFMarkerSegment) findMarkerSegment(JFIFMarkerSegment.class, true);
            if (jFIFMarkerSegment != null) {
                jFIFMarkerSegment.updateFromNativeNode(firstChild, false);
            } else {
                this.markerSequence.add(0, new JFIFMarkerSegment(firstChild));
            }
        }
    }

    private void mergeNativeTree(Node node) throws IIOInvalidTreeException {
        String nodeName = node.getNodeName();
        if (nodeName != (this.isStream ? JPEG.nativeStreamMetadataFormatName : "javax_imageio_jpeg_image_1.0")) {
            throw new IIOInvalidTreeException("Invalid root node name: " + nodeName, node);
        }
        if (node.getChildNodes().getLength() != 2) {
            throw new IIOInvalidTreeException("JPEGvariety and markerSequence nodes must be present", node);
        }
        mergeJFIFsubtree(node.getFirstChild());
        mergeSequenceSubtree(node.getLastChild());
    }

    private void mergeSOFNode(Node node) throws IIOInvalidTreeException {
        SOFMarkerSegment sOFMarkerSegment = (SOFMarkerSegment) findMarkerSegment(SOFMarkerSegment.class, true);
        if (sOFMarkerSegment != null) {
            sOFMarkerSegment.updateFromNativeNode(node, false);
            return;
        }
        SOFMarkerSegment sOFMarkerSegment2 = new SOFMarkerSegment(node);
        int findMarkerSegmentPosition = findMarkerSegmentPosition(SOSMarkerSegment.class, true);
        if (findMarkerSegmentPosition != -1) {
            this.markerSequence.add(findMarkerSegmentPosition, sOFMarkerSegment2);
        } else {
            this.markerSequence.add(sOFMarkerSegment2);
        }
    }

    private void mergeSOSNode(Node node) throws IIOInvalidTreeException {
        SOSMarkerSegment sOSMarkerSegment = (SOSMarkerSegment) findMarkerSegment(SOSMarkerSegment.class, true);
        SOSMarkerSegment sOSMarkerSegment2 = (SOSMarkerSegment) findMarkerSegment(SOSMarkerSegment.class, false);
        if (sOSMarkerSegment == null) {
            this.markerSequence.add(new SOSMarkerSegment(node));
        } else {
            if (sOSMarkerSegment != sOSMarkerSegment2) {
                throw new IIOInvalidTreeException("Can't merge SOS node into a tree with > 1 SOS node", node);
            }
            sOSMarkerSegment.updateFromNativeNode(node, false);
        }
    }

    private void mergeSequenceSubtree(Node node) throws IIOInvalidTreeException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName.equals("dqt")) {
                mergeDQTNode(item);
            } else if (nodeName.equals("dht")) {
                mergeDHTNode(item);
            } else if (nodeName.equals("dri")) {
                mergeDRINode(item);
            } else if (nodeName.equals("com")) {
                mergeCOMNode(item);
            } else if (nodeName.equals("app14Adobe")) {
                mergeAdobeNode(item);
            } else if (nodeName.equals("unknown")) {
                mergeUnknownNode(item);
            } else if (nodeName.equals("sof")) {
                mergeSOFNode(item);
            } else {
                if (!nodeName.equals("sos")) {
                    throw new IIOInvalidTreeException("Invalid node: " + nodeName, item);
                }
                mergeSOSNode(item);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:183:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void mergeStandardChromaNode(org.w3c.dom.Node r18, org.w3c.dom.NodeList r19) throws javax.imageio.metadata.IIOInvalidTreeException {
        /*
            Method dump skipped, instructions count: 860
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.jpeg.JPEGMetadata.mergeStandardChromaNode(org.w3c.dom.Node, org.w3c.dom.NodeList):void");
    }

    private void mergeStandardCompressionNode(Node node) throws IIOInvalidTreeException {
    }

    private void mergeStandardDataNode(Node node) throws IIOInvalidTreeException {
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x003e, code lost:
    
        if (r3.transform != (r4 == 1 ? 0 : 1)) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void mergeStandardDimensionNode(org.w3c.dom.Node r12) throws javax.imageio.metadata.IIOInvalidTreeException {
        /*
            r11 = this;
            java.lang.Class<com.sun.imageio.plugins.jpeg.JFIFMarkerSegment> r0 = com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.class
            r1 = 1
            com.sun.imageio.plugins.jpeg.MarkerSegment r0 = r11.findMarkerSegment(r0, r1)
            com.sun.imageio.plugins.jpeg.JFIFMarkerSegment r0 = (com.sun.imageio.plugins.jpeg.JFIFMarkerSegment) r0
            r2 = 0
            if (r0 != 0) goto L4d
            java.lang.Class<com.sun.imageio.plugins.jpeg.SOFMarkerSegment> r3 = com.sun.imageio.plugins.jpeg.SOFMarkerSegment.class
            com.sun.imageio.plugins.jpeg.MarkerSegment r3 = r11.findMarkerSegment(r3, r1)
            com.sun.imageio.plugins.jpeg.SOFMarkerSegment r3 = (com.sun.imageio.plugins.jpeg.SOFMarkerSegment) r3
            if (r3 == 0) goto L40
            com.sun.imageio.plugins.jpeg.SOFMarkerSegment$ComponentSpec[] r4 = r3.componentSpecs
            int r4 = r4.length
            if (r4 == r1) goto L1e
            r5 = 3
            if (r4 != r5) goto L40
        L1e:
            r6 = r1
            r5 = r2
        L20:
            com.sun.imageio.plugins.jpeg.SOFMarkerSegment$ComponentSpec[] r7 = r3.componentSpecs
            int r8 = r7.length
            if (r5 >= r8) goto L2f
            r7 = r7[r5]
            int r7 = r7.componentId
            int r5 = r5 + 1
            if (r7 == r5) goto L20
            r6 = r2
            goto L20
        L2f:
            java.lang.Class<com.sun.imageio.plugins.jpeg.AdobeMarkerSegment> r3 = com.sun.imageio.plugins.jpeg.AdobeMarkerSegment.class
            com.sun.imageio.plugins.jpeg.MarkerSegment r3 = r11.findMarkerSegment(r3, r1)
            com.sun.imageio.plugins.jpeg.AdobeMarkerSegment r3 = (com.sun.imageio.plugins.jpeg.AdobeMarkerSegment) r3
            if (r3 == 0) goto L41
            int r3 = r3.transform
            if (r4 != r1) goto L3e
            r1 = r2
        L3e:
            if (r3 == r1) goto L41
        L40:
            r6 = r2
        L41:
            if (r6 == 0) goto L4d
            com.sun.imageio.plugins.jpeg.JFIFMarkerSegment r0 = new com.sun.imageio.plugins.jpeg.JFIFMarkerSegment
            r0.<init>()
            java.util.List<com.sun.imageio.plugins.jpeg.MarkerSegment> r11 = r11.markerSequence
            r11.add(r2, r0)
        L4d:
            if (r0 == 0) goto Ld2
            org.w3c.dom.NodeList r11 = r12.getChildNodes()
            r12 = r2
        L54:
            int r1 = r11.getLength()
            if (r12 >= r1) goto Ld2
            org.w3c.dom.Node r1 = r11.item(r12)
            org.w3c.dom.NamedNodeMap r3 = r1.getAttributes()
            java.lang.String r1 = r1.getNodeName()
            java.lang.String r4 = "PixelAspectRatio"
            boolean r4 = r1.equals(r4)
            java.lang.String r5 = "value"
            if (r4 == 0) goto L89
            org.w3c.dom.Node r1 = r3.getNamedItem(r5)
            java.lang.String r1 = r1.getNodeValue()
            float r1 = java.lang.Float.parseFloat(r1)
            java.awt.Point r1 = findIntegerRatio(r1)
            r0.resUnits = r2
            int r3 = r1.f97730x
            int r1 = r1.f97731y
            r0.Xdensity = r1
            goto Lcf
        L89:
            java.lang.String r4 = "HorizontalPixelSize"
            boolean r4 = r1.equals(r4)
            r6 = 2
            r7 = 4621819117588971520(0x4024000000000000, double:10.0)
            r9 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            if (r4 == 0) goto Laf
            org.w3c.dom.Node r1 = r3.getNamedItem(r5)
            java.lang.String r1 = r1.getNodeValue()
            float r1 = java.lang.Float.parseFloat(r1)
            double r3 = (double) r1
            double r3 = r3 * r7
            double r9 = r9 / r3
            long r3 = java.lang.Math.round(r9)
            int r1 = (int) r3
            r0.resUnits = r6
            r0.Xdensity = r1
            goto Lcf
        Laf:
            java.lang.String r4 = "VerticalPixelSize"
            boolean r1 = r1.equals(r4)
            if (r1 == 0) goto Lcf
            org.w3c.dom.Node r1 = r3.getNamedItem(r5)
            java.lang.String r1 = r1.getNodeValue()
            float r1 = java.lang.Float.parseFloat(r1)
            double r3 = (double) r1
            double r3 = r3 * r7
            double r9 = r9 / r3
            long r3 = java.lang.Math.round(r9)
            int r1 = (int) r3
            r0.resUnits = r6
            r0.Ydensity = r1
        Lcf:
            int r12 = r12 + 1
            goto L54
        Ld2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.jpeg.JPEGMetadata.mergeStandardDimensionNode(org.w3c.dom.Node):void");
    }

    private void mergeStandardDocumentNode(Node node) throws IIOInvalidTreeException {
    }

    private void mergeStandardTextNode(Node node) throws IIOInvalidTreeException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            NamedNodeMap attributes = childNodes.item(i).getAttributes();
            Node namedItem = attributes.getNamedItem("compression");
            if (namedItem == null || namedItem.getNodeValue().equals("none")) {
                insertCOMMarkerSegment(new COMMarkerSegment(attributes.getNamedItem("value").getNodeValue()));
            }
        }
    }

    private void mergeStandardTransparencyNode(Node node) throws IIOInvalidTreeException {
        SOFMarkerSegment.ComponentSpec[] componentSpecArr;
        if (this.transparencyDone || this.isStream) {
            return;
        }
        boolean wantAlpha = wantAlpha(node);
        JFIFMarkerSegment jFIFMarkerSegment = (JFIFMarkerSegment) findMarkerSegment(JFIFMarkerSegment.class, true);
        AdobeMarkerSegment adobeMarkerSegment = (AdobeMarkerSegment) findMarkerSegment(AdobeMarkerSegment.class, true);
        SOFMarkerSegment sOFMarkerSegment = (SOFMarkerSegment) findMarkerSegment(SOFMarkerSegment.class, true);
        SOSMarkerSegment sOSMarkerSegment = (SOSMarkerSegment) findMarkerSegment(SOSMarkerSegment.class, true);
        if ((sOFMarkerSegment != null && sOFMarkerSegment.tag == 194) || sOFMarkerSegment == null) {
            return;
        }
        int length = sOFMarkerSegment.componentSpecs.length;
        if ((length == 2 || length == 4) == wantAlpha) {
            return;
        }
        if (!wantAlpha) {
            int i = length - 1;
            SOFMarkerSegment.ComponentSpec[] componentSpecArr2 = new SOFMarkerSegment.ComponentSpec[i];
            for (int i2 = 0; i2 < i; i2++) {
                componentSpecArr2[i2] = sOFMarkerSegment.componentSpecs[i2];
            }
            sOFMarkerSegment.componentSpecs = componentSpecArr2;
            SOSMarkerSegment.ScanComponentSpec[] scanComponentSpecArr = new SOSMarkerSegment.ScanComponentSpec[i];
            for (int i3 = 0; i3 < i; i3++) {
                scanComponentSpecArr[i3] = sOSMarkerSegment.componentSpecs[i3];
            }
            sOSMarkerSegment.componentSpecs = scanComponentSpecArr;
            return;
        }
        int i4 = length + 1;
        if (jFIFMarkerSegment != null) {
            this.markerSequence.remove(jFIFMarkerSegment);
        }
        if (adobeMarkerSegment != null) {
            adobeMarkerSegment.transform = 0;
        }
        SOFMarkerSegment.ComponentSpec[] componentSpecArr3 = new SOFMarkerSegment.ComponentSpec[i4];
        int i5 = 0;
        while (true) {
            componentSpecArr = sOFMarkerSegment.componentSpecs;
            if (i5 >= componentSpecArr.length) {
                break;
            }
            componentSpecArr3[i5] = componentSpecArr[i5];
            i5++;
        }
        SOFMarkerSegment.ComponentSpec componentSpec = componentSpecArr[0];
        byte b = (byte) (((byte) componentSpec.componentId) > 1 ? 65 : 4);
        int i6 = i4 - 1;
        componentSpecArr3[i6] = sOFMarkerSegment.getComponentSpec(b, componentSpec.HsamplingFactor, componentSpec.QtableSelector);
        sOFMarkerSegment.componentSpecs = componentSpecArr3;
        SOSMarkerSegment.ScanComponentSpec[] scanComponentSpecArr2 = new SOSMarkerSegment.ScanComponentSpec[i4];
        int i7 = 0;
        while (true) {
            SOSMarkerSegment.ScanComponentSpec[] scanComponentSpecArr3 = sOSMarkerSegment.componentSpecs;
            if (i7 >= scanComponentSpecArr3.length) {
                scanComponentSpecArr2[i6] = sOSMarkerSegment.getScanComponentSpec(b, 0);
                sOSMarkerSegment.componentSpecs = scanComponentSpecArr2;
                return;
            } else {
                scanComponentSpecArr2[i7] = scanComponentSpecArr3[i7];
                i7++;
            }
        }
    }

    private void mergeStandardTree(Node node) throws IIOInvalidTreeException {
        this.transparencyDone = false;
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName.equals("Chroma")) {
                mergeStandardChromaNode(item, childNodes);
            } else if (nodeName.equals(ExifInterface.TAG_COMPRESSION)) {
                mergeStandardCompressionNode(item);
            } else if (nodeName.equals("Data")) {
                mergeStandardDataNode(item);
            } else if (nodeName.equals("Dimension")) {
                mergeStandardDimensionNode(item);
            } else if (nodeName.equals("Document")) {
                mergeStandardDocumentNode(item);
            } else if (nodeName.equals("Text")) {
                mergeStandardTextNode(item);
            } else {
                if (!nodeName.equals("Transparency")) {
                    throw new IIOInvalidTreeException("Invalid node: " + nodeName, item);
                }
                mergeStandardTransparencyNode(item);
            }
        }
    }

    private void mergeUnknownNode(Node node) throws IIOInvalidTreeException {
        MarkerSegment markerSegment = new MarkerSegment(node);
        int findLastUnknownMarkerSegmentPosition = findLastUnknownMarkerSegmentPosition();
        boolean z = findMarkerSegment(JFIFMarkerSegment.class, true) != null;
        int findMarkerSegmentPosition = findMarkerSegmentPosition(AdobeMarkerSegment.class, true);
        if (findLastUnknownMarkerSegmentPosition != -1) {
            this.markerSequence.add(findLastUnknownMarkerSegmentPosition + 1, markerSegment);
        } else if (z) {
            this.markerSequence.add(1, markerSegment);
        }
        if (findMarkerSegmentPosition != -1) {
            this.markerSequence.add(findMarkerSegmentPosition, markerSegment);
        } else {
            this.markerSequence.add(0, markerSegment);
        }
    }

    private void setFromNativeTree(Node node) throws IIOInvalidTreeException {
        if (this.resetSequence == null) {
            this.resetSequence = this.markerSequence;
        }
        this.markerSequence = new ArrayList();
        String nodeName = node.getNodeName();
        boolean z = this.isStream;
        if (nodeName != (z ? JPEG.nativeStreamMetadataFormatName : "javax_imageio_jpeg_image_1.0")) {
            throw new IIOInvalidTreeException("Invalid root node name: " + nodeName, node);
        }
        if (!z) {
            if (node.getChildNodes().getLength() != 2) {
                throw new IIOInvalidTreeException("JPEGvariety and markerSequence nodes must be present", node);
            }
            Node firstChild = node.getFirstChild();
            if (firstChild.getChildNodes().getLength() != 0) {
                this.markerSequence.add(new JFIFMarkerSegment(firstChild.getFirstChild()));
            }
        }
        if (!this.isStream) {
            node = node.getLastChild();
        }
        setFromMarkerSequenceNode(node);
    }

    private boolean wantAlpha(Node node) {
        Node firstChild = node.getFirstChild();
        boolean z = firstChild.getNodeName().equals("Alpha") && firstChild.hasAttributes() && !firstChild.getAttributes().getNamedItem("value").getNodeValue().equals("none");
        this.transparencyDone = true;
        return z;
    }

    public Object clone() {
        JPEGMetadata jPEGMetadata;
        try {
            jPEGMetadata = (JPEGMetadata) super.clone();
        } catch (CloneNotSupportedException unused) {
            jPEGMetadata = null;
        }
        if (this.markerSequence != null) {
            jPEGMetadata.markerSequence = cloneSequence();
        }
        jPEGMetadata.resetSequence = null;
        return jPEGMetadata;
    }

    public MarkerSegment findMarkerSegment(int i) {
        for (MarkerSegment markerSegment : this.markerSequence) {
            if (markerSegment.tag == i) {
                return markerSegment;
            }
        }
        return null;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public Node getAsTree(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null formatName!");
        }
        if (this.isStream) {
            if (str.equals(JPEG.nativeStreamMetadataFormatName)) {
                return getNativeTree();
            }
        } else {
            if (str.equals("javax_imageio_jpeg_image_1.0")) {
                return getNativeTree();
            }
            if (str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
                return getStandardTree();
            }
        }
        throw new IllegalArgumentException("Unsupported format name: " + str);
    }

    public IIOMetadataNode getNativeTree() {
        IIOMetadataNode iIOMetadataNode;
        IIOMetadataNode iIOMetadataNode2;
        Iterator<MarkerSegment> it2 = this.markerSequence.iterator();
        if (this.isStream) {
            iIOMetadataNode2 = new IIOMetadataNode(JPEG.nativeStreamMetadataFormatName);
            iIOMetadataNode = iIOMetadataNode2;
        } else {
            iIOMetadataNode = new IIOMetadataNode("markerSequence");
            if (this.inThumb) {
                iIOMetadataNode2 = iIOMetadataNode;
            } else {
                IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("javax_imageio_jpeg_image_1.0");
                IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("JPEGvariety");
                iIOMetadataNode3.appendChild(iIOMetadataNode4);
                JFIFMarkerSegment jFIFMarkerSegment = (JFIFMarkerSegment) findMarkerSegment(JFIFMarkerSegment.class, true);
                if (jFIFMarkerSegment != null) {
                    it2.next();
                    iIOMetadataNode4.appendChild(jFIFMarkerSegment.getNativeNode());
                }
                iIOMetadataNode3.appendChild(iIOMetadataNode);
                iIOMetadataNode2 = iIOMetadataNode3;
            }
        }
        while (it2.hasNext()) {
            iIOMetadataNode.appendChild(it2.next().getNativeNode());
        }
        return iIOMetadataNode2;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardChromaNode() {
        boolean z;
        this.hasAlpha = false;
        SOFMarkerSegment sOFMarkerSegment = (SOFMarkerSegment) findMarkerSegment(SOFMarkerSegment.class, true);
        if (sOFMarkerSegment == null) {
            return null;
        }
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Chroma");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("ColorSpaceType");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        int length = sOFMarkerSegment.componentSpecs.length;
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("NumChannels");
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        iIOMetadataNode3.setAttribute("value", Integer.toString(length));
        if (findMarkerSegment(JFIFMarkerSegment.class, true) != null) {
            if (length == 1) {
                iIOMetadataNode2.setAttribute("name", "GRAY");
            } else {
                iIOMetadataNode2.setAttribute("name", "YCbCr");
            }
            return iIOMetadataNode;
        }
        AdobeMarkerSegment adobeMarkerSegment = (AdobeMarkerSegment) findMarkerSegment(AdobeMarkerSegment.class, true);
        if (adobeMarkerSegment != null) {
            int i = adobeMarkerSegment.transform;
            if (i != 0) {
                if (i == 1) {
                    iIOMetadataNode2.setAttribute("name", "YCbCr");
                } else if (i == 2) {
                    iIOMetadataNode2.setAttribute("name", "YCCK");
                }
            } else if (length == 3) {
                iIOMetadataNode2.setAttribute("name", ColorUtils.RGB_COLOR_START);
            } else if (length == 4) {
                iIOMetadataNode2.setAttribute("name", "CMYK");
            }
            return iIOMetadataNode;
        }
        if (length < 3) {
            iIOMetadataNode2.setAttribute("name", "GRAY");
            if (length == 2) {
                this.hasAlpha = true;
            }
            return iIOMetadataNode;
        }
        SOFMarkerSegment.ComponentSpec[] componentSpecArr = sOFMarkerSegment.componentSpecs;
        SOFMarkerSegment.ComponentSpec componentSpec = componentSpecArr[0];
        int i2 = componentSpec.componentId;
        int i3 = componentSpecArr[1].componentId;
        int i4 = componentSpecArr[2].componentId;
        if (i2 == 1 && i3 == 2 && i4 == 3) {
            iIOMetadataNode2.setAttribute("name", "YCbCr");
            if (length == 4) {
                this.hasAlpha = true;
            }
            return iIOMetadataNode;
        }
        if (i2 == 82 && i3 == 71 && i4 == 66) {
            iIOMetadataNode2.setAttribute("name", ColorUtils.RGB_COLOR_START);
            if (length == 4 && sOFMarkerSegment.componentSpecs[3].componentId == 65) {
                this.hasAlpha = true;
            }
            return iIOMetadataNode;
        }
        if (i2 == 89 && i3 == 67 && i4 == 99) {
            iIOMetadataNode2.setAttribute("name", "PhotoYCC");
            if (length == 4 && sOFMarkerSegment.componentSpecs[3].componentId == 65) {
                this.hasAlpha = true;
            }
            return iIOMetadataNode;
        }
        int i5 = componentSpec.HsamplingFactor;
        int i6 = componentSpec.VsamplingFactor;
        int i7 = 1;
        while (true) {
            SOFMarkerSegment.ComponentSpec[] componentSpecArr2 = sOFMarkerSegment.componentSpecs;
            if (i7 >= componentSpecArr2.length) {
                z = false;
                break;
            }
            SOFMarkerSegment.ComponentSpec componentSpec2 = componentSpecArr2[i7];
            if (componentSpec2.HsamplingFactor != i5 || componentSpec2.VsamplingFactor != i6) {
                break;
            }
            i7++;
        }
        z = true;
        if (z) {
            iIOMetadataNode2.setAttribute("name", "YCbCr");
            if (length == 4) {
                this.hasAlpha = true;
            }
            return iIOMetadataNode;
        }
        if (length == 3) {
            iIOMetadataNode2.setAttribute("name", ColorUtils.RGB_COLOR_START);
        } else {
            iIOMetadataNode2.setAttribute("name", "CMYK");
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardCompressionNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(ExifInterface.TAG_COMPRESSION);
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("CompressionTypeName");
        iIOMetadataNode2.setAttribute("value", "JPEG");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("Lossless");
        iIOMetadataNode3.setAttribute("value", "FALSE");
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        Iterator<MarkerSegment> it2 = this.markerSequence.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().tag == 218) {
                i++;
            }
        }
        if (i != 0) {
            IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("NumProgressiveScans");
            iIOMetadataNode4.setAttribute("value", Integer.toString(i));
            iIOMetadataNode.appendChild(iIOMetadataNode4);
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDimensionNode() {
        float f;
        int i;
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Dimension");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("ImageOrientation");
        iIOMetadataNode2.setAttribute("value", "normal");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        JFIFMarkerSegment jFIFMarkerSegment = (JFIFMarkerSegment) findMarkerSegment(JFIFMarkerSegment.class, true);
        if (jFIFMarkerSegment != null) {
            if (jFIFMarkerSegment.resUnits == 0) {
                f = jFIFMarkerSegment.Xdensity;
                i = jFIFMarkerSegment.Ydensity;
            } else {
                f = jFIFMarkerSegment.Ydensity;
                i = jFIFMarkerSegment.Xdensity;
            }
            float f2 = f / i;
            IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("PixelAspectRatio");
            iIOMetadataNode3.setAttribute("value", Float.toString(f2));
            iIOMetadataNode.insertBefore(iIOMetadataNode3, iIOMetadataNode2);
            int i2 = jFIFMarkerSegment.resUnits;
            if (i2 != 0) {
                float f3 = i2 == 1 ? 25.4f : 10.0f;
                IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("HorizontalPixelSize");
                iIOMetadataNode4.setAttribute("value", Float.toString(f3 / jFIFMarkerSegment.Xdensity));
                iIOMetadataNode.appendChild(iIOMetadataNode4);
                IIOMetadataNode iIOMetadataNode5 = new IIOMetadataNode("VerticalPixelSize");
                iIOMetadataNode5.setAttribute("value", Float.toString(f3 / jFIFMarkerSegment.Ydensity));
                iIOMetadataNode.appendChild(iIOMetadataNode5);
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTextNode() {
        if (findMarkerSegment(254) == null) {
            return null;
        }
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Text");
        for (MarkerSegment markerSegment : this.markerSequence) {
            if (markerSegment.tag == 254) {
                IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("TextEntry");
                iIOMetadataNode2.setAttribute("keyword", "comment");
                iIOMetadataNode2.setAttribute("value", ((COMMarkerSegment) markerSegment).getComment());
                iIOMetadataNode.appendChild(iIOMetadataNode2);
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTransparencyNode() {
        if (!this.hasAlpha) {
            return null;
        }
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Transparency");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("Alpha");
        iIOMetadataNode2.setAttribute("value", "nonpremultiplied");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public boolean isReadOnly() {
        return false;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void mergeTree(String str, Node node) throws IIOInvalidTreeException {
        List<MarkerSegment> cloneSequence;
        if (str == null) {
            throw new IllegalArgumentException("null formatName!");
        }
        if (node == null) {
            throw new IllegalArgumentException("null root!");
        }
        if (this.resetSequence == null) {
            cloneSequence = cloneSequence();
            this.resetSequence = cloneSequence;
        } else {
            cloneSequence = cloneSequence();
        }
        if (this.isStream && str.equals(JPEG.nativeStreamMetadataFormatName)) {
            mergeNativeTree(node);
        } else if (!this.isStream && str.equals("javax_imageio_jpeg_image_1.0")) {
            mergeNativeTree(node);
        } else {
            if (this.isStream || !str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
                throw new IllegalArgumentException("Unsupported format name: " + str);
            }
            mergeStandardTree(node);
        }
        if (isConsistent()) {
            return;
        }
        this.markerSequence = cloneSequence;
        throw new IIOInvalidTreeException("Merged tree is invalid; original restored", node);
    }

    public void print() {
        for (int i = 0; i < this.markerSequence.size(); i++) {
            this.markerSequence.get(i).print();
        }
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void reset() {
        List<MarkerSegment> list = this.resetSequence;
        if (list != null) {
            this.markerSequence = list;
            this.resetSequence = null;
        }
    }

    public void setFromMarkerSequenceNode(Node node) throws IIOInvalidTreeException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName.equals("dqt")) {
                this.markerSequence.add(new DQTMarkerSegment(item));
            } else if (nodeName.equals("dht")) {
                this.markerSequence.add(new DHTMarkerSegment(item));
            } else if (nodeName.equals("dri")) {
                this.markerSequence.add(new DRIMarkerSegment(item));
            } else if (nodeName.equals("com")) {
                this.markerSequence.add(new COMMarkerSegment(item));
            } else if (nodeName.equals("app14Adobe")) {
                this.markerSequence.add(new AdobeMarkerSegment(item));
            } else if (nodeName.equals("unknown")) {
                this.markerSequence.add(new MarkerSegment(item));
            } else if (nodeName.equals("sof")) {
                this.markerSequence.add(new SOFMarkerSegment(item));
            } else {
                if (!nodeName.equals("sos")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Invalid ");
                    sb.append(this.isStream ? "stream " : "image ");
                    sb.append("child: ");
                    sb.append(nodeName);
                    throw new IIOInvalidTreeException(sb.toString(), item);
                }
                this.markerSequence.add(new SOSMarkerSegment(item));
            }
        }
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void setFromTree(String str, Node node) throws IIOInvalidTreeException {
        if (str == null) {
            throw new IllegalArgumentException("null formatName!");
        }
        if (node == null) {
            throw new IllegalArgumentException("null root!");
        }
        if (this.isStream && str.equals(JPEG.nativeStreamMetadataFormatName)) {
            setFromNativeTree(node);
            return;
        }
        if (!this.isStream && str.equals("javax_imageio_jpeg_image_1.0")) {
            setFromNativeTree(node);
            return;
        }
        if (!this.isStream && str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
            super.setFromTree(str, node);
            return;
        }
        throw new IllegalArgumentException("Unsupported format name: " + str);
    }

    public void writeToStream(ImageOutputStream imageOutputStream, boolean z, boolean z2, List<? extends BufferedImage> list, ICC_Profile iCC_Profile, boolean z3, int i, JPEGImageWriter jPEGImageWriter) throws IOException {
        if (z2) {
            JFIFMarkerSegment.writeDefaultJFIF(imageOutputStream, list, iCC_Profile, jPEGImageWriter);
            if (!z3 && i != -1 && i != 0 && i != 1) {
                jPEGImageWriter.warningOccurred(13);
                z3 = true;
            }
        }
        for (MarkerSegment markerSegment : this.markerSequence) {
            if (markerSegment instanceof JFIFMarkerSegment) {
                if (!z) {
                    ((JFIFMarkerSegment) markerSegment).writeWithThumbs(imageOutputStream, list, jPEGImageWriter);
                    if (iCC_Profile != null) {
                        JFIFMarkerSegment.writeICC(iCC_Profile, imageOutputStream);
                    }
                }
            } else if (!(markerSegment instanceof AdobeMarkerSegment)) {
                markerSegment.write(imageOutputStream);
            } else if (!z3) {
                if (i != -1) {
                    AdobeMarkerSegment adobeMarkerSegment = (AdobeMarkerSegment) markerSegment.clone();
                    adobeMarkerSegment.transform = i;
                    adobeMarkerSegment.write(imageOutputStream);
                } else if (z2) {
                    AdobeMarkerSegment adobeMarkerSegment2 = (AdobeMarkerSegment) markerSegment;
                    int i2 = adobeMarkerSegment2.transform;
                    if (i2 == 0 || i2 == 1) {
                        adobeMarkerSegment2.write(imageOutputStream);
                    } else {
                        jPEGImageWriter.warningOccurred(13);
                    }
                } else {
                    markerSegment.write(imageOutputStream);
                }
            }
        }
    }

    public MarkerSegment findMarkerSegment(Class<? extends MarkerSegment> cls, boolean z) {
        if (z) {
            for (MarkerSegment markerSegment : this.markerSequence) {
                if (cls.isInstance(markerSegment)) {
                    return markerSegment;
                }
            }
            return null;
        }
        List<MarkerSegment> list = this.markerSequence;
        ListIterator<MarkerSegment> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            MarkerSegment previous = listIterator.previous();
            if (cls.isInstance(previous)) {
                return previous;
            }
        }
        return null;
    }

    public JPEGMetadata(boolean z, boolean z2, ImageInputStream imageInputStream, JPEGImageReader jPEGImageReader) throws IOException {
        this(z, z2);
        JPEGBuffer jPEGBuffer = new JPEGBuffer(imageInputStream);
        boolean z3 = false;
        jPEGBuffer.loadBuf(0);
        byte[] bArr = jPEGBuffer.buf;
        if ((bArr[0] & 255) == 255 && (bArr[1] & 255) == 216 && (bArr[2] & 255) == 255) {
            jPEGBuffer.bufAvail -= 2;
            jPEGBuffer.bufPtr = 2;
            while (true) {
                MarkerSegment markerSegment = null;
                while (!z3) {
                    jPEGBuffer.loadBuf(1);
                    jPEGBuffer.scanForFF(jPEGImageReader);
                    byte[] bArr2 = jPEGBuffer.buf;
                    int i = jPEGBuffer.bufPtr;
                    int i2 = bArr2[i] & 255;
                    if (i2 == 0) {
                        jPEGBuffer.bufAvail--;
                        jPEGBuffer.bufPtr = i + 1;
                    } else if (i2 == 196) {
                        markerSegment = new DHTMarkerSegment(jPEGBuffer);
                    } else if (i2 == 221) {
                        markerSegment = new DRIMarkerSegment(jPEGBuffer);
                    } else if (i2 == 224) {
                        jPEGBuffer.loadBuf(8);
                        byte[] bArr3 = jPEGBuffer.buf;
                        int i3 = jPEGBuffer.bufPtr;
                        byte b = bArr3[i3 + 3];
                        if (b == 74 && bArr3[i3 + 4] == 70 && bArr3[i3 + 5] == 73 && bArr3[i3 + 6] == 70 && bArr3[i3 + 7] == 0) {
                            if (this.inThumb) {
                                jPEGImageReader.warningOccurred(1);
                                new JFIFMarkerSegment(jPEGBuffer);
                            } else if (!z) {
                                if (this.markerSequence.isEmpty()) {
                                    markerSegment = new JFIFMarkerSegment(jPEGBuffer);
                                } else {
                                    throw new IIOException("JFIF APP0 must be first marker after SOI");
                                }
                            } else {
                                throw new IIOException("JFIF not permitted in stream metadata");
                            }
                        } else if (b != 74 || bArr3[i3 + 4] != 70 || bArr3[i3 + 5] != 88 || bArr3[i3 + 6] != 88 || bArr3[i3 + 7] != 0) {
                            markerSegment = new MarkerSegment(jPEGBuffer);
                            markerSegment.loadData(jPEGBuffer);
                        } else if (!z) {
                            if (!this.inThumb) {
                                JFIFMarkerSegment jFIFMarkerSegment = (JFIFMarkerSegment) findMarkerSegment(JFIFMarkerSegment.class, true);
                                if (jFIFMarkerSegment != null) {
                                    jFIFMarkerSegment.addJFXX(jPEGBuffer, jPEGImageReader);
                                } else {
                                    throw new IIOException("JFXX encountered without prior JFIF!");
                                }
                            } else {
                                throw new IIOException("JFXX markers not allowed in JFIF JPEG thumbnail");
                            }
                        } else {
                            throw new IIOException("JFXX not permitted in stream metadata");
                        }
                    } else if (i2 == 226) {
                        jPEGBuffer.loadBuf(15);
                        byte[] bArr4 = jPEGBuffer.buf;
                        int i4 = jPEGBuffer.bufPtr;
                        if (bArr4[i4 + 3] != 73 || bArr4[i4 + 4] != 67 || bArr4[i4 + 5] != 67 || bArr4[i4 + 6] != 95 || bArr4[i4 + 7] != 80 || bArr4[i4 + 8] != 82 || bArr4[i4 + 9] != 79 || bArr4[i4 + 10] != 70 || bArr4[i4 + 11] != 73 || bArr4[i4 + 12] != 76 || bArr4[i4 + 13] != 69 || bArr4[i4 + 14] != 0) {
                            markerSegment = new MarkerSegment(jPEGBuffer);
                            markerSegment.loadData(jPEGBuffer);
                        } else if (!z) {
                            JFIFMarkerSegment jFIFMarkerSegment2 = (JFIFMarkerSegment) findMarkerSegment(JFIFMarkerSegment.class, true);
                            if (jFIFMarkerSegment2 == null) {
                                markerSegment = new MarkerSegment(jPEGBuffer);
                                markerSegment.loadData(jPEGBuffer);
                            } else {
                                jFIFMarkerSegment2.addICC(jPEGBuffer);
                            }
                        } else {
                            throw new IIOException("ICC profiles not permitted in stream metadata");
                        }
                    } else if (i2 == 238) {
                        jPEGBuffer.loadBuf(8);
                        byte[] bArr5 = jPEGBuffer.buf;
                        int i5 = jPEGBuffer.bufPtr;
                        if (bArr5[i5 + 3] != 65 || bArr5[i5 + 4] != 100 || bArr5[i5 + 5] != 111 || bArr5[i5 + 6] != 98 || bArr5[i5 + 7] != 101) {
                            markerSegment = new MarkerSegment(jPEGBuffer);
                            markerSegment.loadData(jPEGBuffer);
                        } else if (!z) {
                            markerSegment = new AdobeMarkerSegment(jPEGBuffer);
                        } else {
                            throw new IIOException("Adobe APP14 markers not permitted in stream metadata");
                        }
                    } else if (i2 != 254) {
                        switch (i2) {
                            case 192:
                            case 193:
                            case 194:
                                if (!z) {
                                    markerSegment = new SOFMarkerSegment(jPEGBuffer);
                                    break;
                                } else {
                                    throw new IIOException("SOF not permitted in stream metadata");
                                }
                            default:
                                switch (i2) {
                                    case 208:
                                    case 209:
                                    case 210:
                                    case 211:
                                    case 212:
                                    case 213:
                                    case 214:
                                    case 215:
                                        jPEGBuffer.bufPtr = i + 1;
                                        jPEGBuffer.bufAvail--;
                                        break;
                                    default:
                                        switch (i2) {
                                            case 217:
                                                jPEGBuffer.bufPtr = i + 1;
                                                jPEGBuffer.bufAvail--;
                                                z3 = true;
                                                break;
                                            case 218:
                                                if (!z) {
                                                    markerSegment = new SOSMarkerSegment(jPEGBuffer);
                                                    break;
                                                } else {
                                                    throw new IIOException("SOS not permitted in stream metadata");
                                                }
                                            case 219:
                                                markerSegment = new DQTMarkerSegment(jPEGBuffer);
                                                break;
                                            default:
                                                markerSegment = new MarkerSegment(jPEGBuffer);
                                                markerSegment.loadData(jPEGBuffer);
                                                markerSegment.unknown = true;
                                                break;
                                        }
                                }
                        }
                    } else {
                        markerSegment = new COMMarkerSegment(jPEGBuffer);
                    }
                    if (markerSegment != null) {
                        break;
                    }
                }
                jPEGBuffer.pushBack();
                if (!isConsistent()) {
                    throw new IIOException("Inconsistent metadata read from stream");
                }
                return;
                this.markerSequence.add(markerSegment);
            }
        } else {
            throw new IIOException("Image format error");
        }
    }

    public JPEGMetadata(ImageWriteParam imageWriteParam, JPEGImageWriter jPEGImageWriter) {
        this(true, false);
        JPEGImageWriteParam jPEGImageWriteParam = null;
        if (imageWriteParam != null && (imageWriteParam instanceof JPEGImageWriteParam)) {
            JPEGImageWriteParam jPEGImageWriteParam2 = (JPEGImageWriteParam) imageWriteParam;
            if (jPEGImageWriteParam2.areTablesSet()) {
                jPEGImageWriteParam = jPEGImageWriteParam2;
            }
        }
        if (jPEGImageWriteParam != null) {
            this.markerSequence.add(new DQTMarkerSegment(jPEGImageWriteParam.getQTables()));
            this.markerSequence.add(new DHTMarkerSegment(jPEGImageWriteParam.getDCHuffmanTables(), jPEGImageWriteParam.getACHuffmanTables()));
        } else {
            this.markerSequence.add(new DQTMarkerSegment(JPEG.getDefaultQTables()));
            this.markerSequence.add(new DHTMarkerSegment(JPEG.getDefaultHuffmanTables(true), JPEG.getDefaultHuffmanTables(false)));
        }
        if (!isConsistent()) {
            throw new InternalError("Default stream metadata is inconsistent");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public JPEGMetadata(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam, JPEGImageWriter jPEGImageWriter) {
        this(false, false);
        boolean z;
        boolean z2;
        boolean z3;
        float f;
        ImageTypeSpecifier imageTypeSpecifier2;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        int i2;
        boolean z7;
        int i3;
        int i4;
        boolean z8;
        int i5;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13 = false;
        byte[] bArr = {1, 2, 3, 4};
        float f2 = 0.75f;
        ColorSpace colorSpace = null;
        if (imageWriteParam != null) {
            imageTypeSpecifier2 = imageWriteParam.getDestinationType();
            if (imageTypeSpecifier2 != null && imageTypeSpecifier != null) {
                jPEGImageWriter.warningOccurred(0);
                imageTypeSpecifier2 = null;
            }
            if (imageWriteParam.canWriteProgressive() && imageWriteParam.getProgressiveMode() == 1) {
                z10 = false;
                z9 = true;
            } else {
                z9 = false;
                z10 = true;
            }
            if (imageWriteParam instanceof JPEGImageWriteParam) {
                JPEGImageWriteParam jPEGImageWriteParam = (JPEGImageWriteParam) imageWriteParam;
                if (!jPEGImageWriteParam.areTablesSet()) {
                    z11 = false;
                    z12 = true;
                    z10 = z10;
                } else if (jPEGImageWriteParam.getDCHuffmanTables().length > 2 || jPEGImageWriteParam.getACHuffmanTables().length > 2) {
                    z10 = false;
                    z12 = false;
                    z11 = true;
                } else {
                    z10 = false;
                    z11 = false;
                    z12 = false;
                }
                if (!z9 && jPEGImageWriteParam.getOptimizeHuffmanTables()) {
                    z10 = false;
                }
            } else {
                z11 = false;
                z12 = true;
            }
            if (imageWriteParam.canWriteCompressed() && imageWriteParam.getCompressionMode() == 2) {
                f2 = imageWriteParam.getCompressionQuality();
            }
            f = f2;
            z4 = z11;
            boolean z14 = z10;
            z = z9;
            z2 = z14;
            z3 = z12;
        } else {
            z = false;
            z2 = true;
            z3 = true;
            f = 0.75f;
            imageTypeSpecifier2 = null;
            z4 = false;
        }
        if (imageTypeSpecifier2 != null) {
            ColorModel colorModel = imageTypeSpecifier2.getColorModel();
            int numComponents = colorModel.getNumComponents();
            boolean z15 = colorModel.getNumColorComponents() != numComponents;
            boolean hasAlpha = colorModel.hasAlpha();
            colorSpace = colorModel.getColorSpace();
            int type = colorSpace.getType();
            if (type != 3) {
                if (type == 5) {
                    bArr[0] = 82;
                    bArr[1] = JSONB.Constants.BC_INT32_SHORT_MAX;
                    bArr[2] = 66;
                    if (hasAlpha) {
                        bArr[3] = 65;
                    }
                    i = 0;
                    i5 = 0;
                    z7 = false;
                    z8 = true;
                } else if (type == 6 && !z15) {
                    i = 0;
                    z8 = false;
                    z7 = false;
                    i5 = 1;
                } else {
                    i = 0;
                    i5 = 0;
                    z8 = false;
                    z7 = false;
                }
            } else if (!z15) {
                i = 0;
                z8 = false;
                i5 = 1;
                z7 = true;
            } else if (hasAlpha) {
                i = 0;
                i5 = 0;
                z8 = false;
                z7 = true;
            } else {
                i5 = 0;
                z8 = true;
                z7 = true;
                i = 2;
            }
            i3 = i5;
            i2 = numComponents;
            boolean z16 = z8;
            z5 = true;
            z6 = z16;
        } else if (imageTypeSpecifier != null) {
            ColorModel colorModel2 = imageTypeSpecifier.getColorModel();
            int numComponents2 = colorModel2.getNumComponents();
            boolean z17 = colorModel2.getNumColorComponents() != numComponents2;
            boolean hasAlpha2 = colorModel2.hasAlpha();
            ColorSpace colorSpace2 = colorModel2.getColorSpace();
            int type2 = colorSpace2.getType();
            if (type2 == 3) {
                z5 = true;
                i4 = 2;
                if (z17) {
                    if (hasAlpha2) {
                        z6 = false;
                        i3 = 0;
                        colorSpace = colorSpace2;
                        i2 = numComponents2;
                        z7 = true;
                        i = i3;
                    }
                    i3 = 0;
                    colorSpace = colorSpace2;
                    i2 = numComponents2;
                    z6 = z5;
                    i = i4;
                    z7 = z6;
                }
                z6 = false;
                colorSpace = colorSpace2;
                i2 = numComponents2;
                z7 = z5;
                i3 = z7 ? 1 : 0;
                i = 0;
            } else if (type2 != 9) {
                if (type2 != 13) {
                    if (type2 != 5) {
                        if (type2 == 6 && !z17) {
                            z6 = false;
                            z7 = false;
                            colorSpace = colorSpace2;
                            i2 = numComponents2;
                            z5 = true;
                            i3 = 1;
                            i = 0;
                        } else {
                            z6 = false;
                            z7 = false;
                            i3 = 0;
                            colorSpace = colorSpace2;
                            i2 = numComponents2;
                            z5 = true;
                        }
                    } else if (hasAlpha2) {
                        z6 = false;
                        i3 = 0;
                        colorSpace = colorSpace2;
                        i2 = numComponents2;
                        z5 = true;
                        z7 = true;
                    } else {
                        z5 = true;
                        z6 = false;
                        colorSpace = colorSpace2;
                        i2 = numComponents2;
                        z7 = z5;
                        i3 = z7 ? 1 : 0;
                        i = 0;
                    }
                } else if (colorSpace2.equals(ColorSpace.getInstance(1002))) {
                    bArr[0] = 89;
                    z5 = true;
                    bArr[1] = 67;
                    bArr[2] = 99;
                    if (hasAlpha2) {
                        bArr[3] = 65;
                    }
                    i3 = 0;
                    colorSpace = colorSpace2;
                    i2 = numComponents2;
                    z6 = true;
                    z7 = true;
                } else {
                    z5 = true;
                    z6 = false;
                    z7 = false;
                    i3 = 0;
                    colorSpace = colorSpace2;
                    i2 = numComponents2;
                }
                i = i3;
            } else {
                z5 = true;
                i4 = 2;
                i3 = 0;
                colorSpace = colorSpace2;
                i2 = numComponents2;
                z6 = z5;
                i = i4;
                z7 = z6;
            }
        } else {
            z5 = true;
            i = 0;
            z6 = false;
            i2 = 0;
            z7 = true;
            i3 = 1;
        }
        if (i3 != 0 && JPEG.isNonStandardICC(colorSpace)) {
            z13 = z5;
        }
        if (i3 != 0) {
            JFIFMarkerSegment jFIFMarkerSegment = new JFIFMarkerSegment();
            this.markerSequence.add(jFIFMarkerSegment);
            if (z13) {
                try {
                    jFIFMarkerSegment.addICC((ICC_ColorSpace) colorSpace);
                } catch (IOException unused) {
                }
            }
        }
        if (z6) {
            this.markerSequence.add(new AdobeMarkerSegment(i));
        }
        if (z3) {
            this.markerSequence.add(new DQTMarkerSegment(f, z7));
        }
        if (z2) {
            this.markerSequence.add(new DHTMarkerSegment(z7));
        }
        this.markerSequence.add(new SOFMarkerSegment(z, z4, z7, bArr, i2));
        if (!z) {
            this.markerSequence.add(new SOSMarkerSegment(z7, bArr, i2));
        }
        if (!isConsistent()) {
            throw new InternalError("Default image metadata is inconsistent");
        }
    }
}
