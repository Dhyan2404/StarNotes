package com.sun.imageio.plugins.tiff;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.gson.internal.bind.TypeAdapters;
import com.onyx.android.sdk.base.utils.ColorUtils;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.plugins.tiff.TIFFDirectory;
import javax.imageio.plugins.tiff.TIFFField;
import javax.imageio.plugins.tiff.TIFFTag;
import javax.imageio.plugins.tiff.TIFFTagSet;
import javax.imageio.stream.ImageInputStream;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes9.dex */
public class TIFFImageMetadata extends IIOMetadata {
    public static final String NATIVE_METADATA_FORMAT_CLASS_NAME = "javax.imageio.plugins.tiff.TIFFImageMetadataFormat";
    public static final String NATIVE_METADATA_FORMAT_NAME = "javax_imageio_tiff_image_1.0";
    private static final String[] colorSpaceNames = {"GRAY", "GRAY", ColorUtils.RGB_COLOR_START, ColorUtils.RGB_COLOR_START, "GRAY", "CMYK", "YCbCr", "Lab", "Lab"};
    private static final String[] orientationNames = {null, "Normal", "FlipH", "Rotate180", "FlipV", "FlipHRotate90", "Rotate270", "FlipVRotate90", "Rotate90"};
    TIFFIFD rootIFD;
    private List<TIFFTagSet> tagSets;

    public TIFFImageMetadata(List<TIFFTagSet> list) {
        super(true, NATIVE_METADATA_FORMAT_NAME, NATIVE_METADATA_FORMAT_CLASS_NAME, null, null);
        this.tagSets = list;
        this.rootIFD = new TIFFIFD(list);
    }

    private static void fatal(Node node, String str) throws IIOInvalidTreeException {
        throw new IIOInvalidTreeException(str, node);
    }

    private static String getAttribute(Node node, String str) {
        Node namedItem = node.getAttributes().getNamedItem(str);
        if (namedItem != null) {
            return namedItem.getNodeValue();
        }
        return null;
    }

    private Node getChildNode(Node node, String str) {
        if (node.hasChildNodes()) {
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            for (int i = 0; i < length; i++) {
                Node item = childNodes.item(i);
                if (item.getNodeName().equals(str)) {
                    return item;
                }
            }
        }
        return null;
    }

    private Node getIFDAsTree(TIFFIFD tiffifd, String str, int i) {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("TIFFIFD");
        if (i != 0) {
            iIOMetadataNode.setAttribute("parentTagNumber", Integer.toString(i));
        }
        if (str != null) {
            iIOMetadataNode.setAttribute("parentTagName", str);
        }
        List<TIFFTagSet> tagSetList = tiffifd.getTagSetList();
        if (tagSetList.size() > 0) {
            Iterator<TIFFTagSet> it2 = tagSetList.iterator();
            StringBuilder sb = new StringBuilder();
            while (it2.hasNext()) {
                sb.append(it2.next().getClass().getName());
                if (it2.hasNext()) {
                    sb.append(",");
                }
            }
            iIOMetadataNode.setAttribute("tagSets", sb.toString());
        }
        Iterator<TIFFField> it3 = tiffifd.iterator();
        while (it3.hasNext()) {
            TIFFField next = it3.next();
            TIFFTag tag = TIFFIFD.getTag(next.getTagNumber(), tagSetList);
            Node asNativeNode = tag == null ? next.getAsNativeNode() : (tag.isIFDPointer() && next.hasDirectory()) ? getIFDAsTree(TIFFIFD.getDirectoryAsIFD(next.getDirectory()), tag.getName(), tag.getNumber()) : next.getAsNativeNode();
            if (asNativeNode != null) {
                iIOMetadataNode.appendChild(asNativeNode);
            }
        }
        return iIOMetadataNode;
    }

    private Node getNativeTree() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(this.nativeMetadataFormatName);
        iIOMetadataNode.appendChild(getIFDAsTree(this.rootIFD, null, 0));
        return iIOMetadataNode;
    }

    private char[] listToCharArray(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, " ");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(Integer.valueOf(stringTokenizer.nextToken()));
        }
        int size = arrayList.size();
        char[] cArr = new char[size];
        for (int i = 0; i < size; i++) {
            cArr[i] = (char) ((Integer) arrayList.get(i)).intValue();
        }
        return cArr;
    }

    private int[] listToIntArray(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, " ");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(Integer.valueOf(stringTokenizer.nextToken()));
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((Integer) arrayList.get(i)).intValue();
        }
        return iArr;
    }

    private void mergeNativeTree(Node node) throws IIOInvalidTreeException {
        if (!node.getNodeName().equals(this.nativeMetadataFormatName)) {
            fatal(node, "Root must be " + this.nativeMetadataFormatName);
        }
        Node firstChild = node.getFirstChild();
        if (firstChild == null || !firstChild.getNodeName().equals("TIFFIFD")) {
            fatal(node, "Root must have \"TIFFIFD\" child");
        }
        TIFFIFD parseIFD = parseIFD(firstChild);
        List<TIFFTagSet> tagSetList = this.rootIFD.getTagSetList();
        for (TIFFTagSet tIFFTagSet : parseIFD.getTagSetList()) {
            if ((tIFFTagSet instanceof TIFFTagSet) && !tagSetList.contains(tIFFTagSet)) {
                this.rootIFD.addTagSet(tIFFTagSet);
            }
        }
        Iterator<TIFFField> it2 = parseIFD.iterator();
        while (it2.hasNext()) {
            this.rootIFD.addTIFFField(it2.next());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x01c8, code lost:
    
        if (r14.equals("GRAY") != false) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:409:0x087b  */
    /* JADX WARN: Removed duplicated region for block: B:419:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0212  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void mergeStandardTree(org.w3c.dom.Node r28) throws javax.imageio.metadata.IIOInvalidTreeException {
        /*
            Method dump skipped, instructions count: 2225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFImageMetadata.mergeStandardTree(org.w3c.dom.Node):void");
    }

    public static TIFFIFD parseIFD(Node node) throws IIOInvalidTreeException {
        TIFFField tIFFField;
        TIFFTagSet tIFFTagSet;
        TIFFTag tIFFTag;
        int i;
        if (!node.getNodeName().equals("TIFFIFD")) {
            fatal(node, "Expected \"TIFFIFD\" node");
        }
        String attribute = getAttribute(node, "tagSets");
        ArrayList arrayList = new ArrayList(5);
        if (attribute != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(attribute, ",");
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                try {
                    Class<?> cls = Class.forName(nextToken, false, TIFFImageMetadata.class.getClassLoader());
                    if (!TIFFTagSet.class.isAssignableFrom(cls)) {
                        fatal(node, "TagSets in IFD must be subset of TIFFTagSet class");
                    }
                    Object invoke = cls.getMethod("getInstance", null).invoke(null, null);
                    if (invoke instanceof TIFFTagSet) {
                        arrayList.add((TIFFTagSet) invoke);
                    } else {
                        fatal(node, "Specified tag set class \"" + nextToken + "\" is not an instance of TIFFTagSet");
                    }
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                } catch (IllegalAccessException e2) {
                    throw new RuntimeException(e2);
                } catch (NoSuchMethodException e3) {
                    throw new RuntimeException(e3);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException(e4);
                }
            }
        }
        TIFFIFD tiffifd = new TIFFIFD(arrayList);
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            String nodeName = firstChild.getNodeName();
            if (nodeName.equals("TIFFIFD")) {
                TIFFIFD parseIFD = parseIFD(firstChild);
                String attribute2 = getAttribute(firstChild, "parentTagName");
                String attribute3 = getAttribute(firstChild, "parentTagNumber");
                TIFFTag tag = attribute2 != null ? TIFFIFD.getTag(attribute2, arrayList) : attribute3 != null ? TIFFIFD.getTag(Integer.parseUnsignedInt(attribute3), arrayList) : null;
                if (tag == null) {
                    tag = new TIFFTag(TIFFTag.UNKNOWN_TAG_NAME, 0, 16);
                } else {
                    int i2 = 13;
                    if (!tag.isDataTypeOK(13)) {
                        if (!tag.isDataTypeOK(4)) {
                            while (i2 >= 1 && !tag.isDataTypeOK(i2)) {
                                i2--;
                            }
                        }
                    }
                    tIFFTag = tag;
                    i = i2;
                    tIFFField = new TIFFField(tIFFTag, i, 1L, (TIFFDirectory) parseIFD);
                }
                tIFFTag = tag;
                i = 4;
                tIFFField = new TIFFField(tIFFTag, i, 1L, (TIFFDirectory) parseIFD);
            } else if (nodeName.equals("TIFFField")) {
                int parseInt = Integer.parseInt(getAttribute(firstChild, "number"));
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        tIFFTagSet = null;
                        break;
                    }
                    tIFFTagSet = (TIFFTagSet) it2.next();
                    if (tIFFTagSet.getTag(parseInt) != null) {
                        break;
                    }
                }
                tIFFField = TIFFField.createFromMetadataNode(tIFFTagSet, firstChild);
            } else {
                fatal(firstChild, "Expected either \"TIFFIFD\" or \"TIFFField\" node, got " + nodeName);
                tIFFField = null;
            }
            tiffifd.addTIFFField(tIFFField);
        }
        return tiffifd;
    }

    private String repeat(String str, int i) {
        if (i == 1) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(((str.length() + 1) * i) - 1);
        stringBuffer.append(str);
        for (int i2 = 1; i2 < i; i2++) {
            stringBuffer.append(" ");
            stringBuffer.append(str);
        }
        return stringBuffer.toString();
    }

    public void addShortOrLongField(int i, long j) {
        this.rootIFD.addTIFFField(new TIFFField(this.rootIFD.getTag(i), j));
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public Node getAsTree(String str) {
        if (str.equals(this.nativeMetadataFormatName)) {
            return getNativeTree();
        }
        if (str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
            return getStandardTree();
        }
        throw new IllegalArgumentException("Not a recognized format!");
    }

    public TIFFIFD getRootIFD() {
        return this.rootIFD;
    }

    public TIFFImageMetadata getShallowClone() {
        return new TIFFImageMetadata(this.rootIFD.getShallowClone());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    @Override // javax.imageio.metadata.IIOMetadata
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public javax.imageio.metadata.IIOMetadataNode getStandardChromaNode() {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFImageMetadata.getStandardChromaNode():javax.imageio.metadata.IIOMetadataNode");
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardCompressionNode() {
        String str;
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(ExifInterface.TAG_COMPRESSION);
        TIFFField tIFFField = getTIFFField(259);
        if (tIFFField != null) {
            int i = 0;
            int asInt = tIFFField.getAsInt(0);
            boolean z = true;
            if (asInt != 1) {
                int[] iArr = TIFFImageWriter.compressionNumbers;
                while (true) {
                    if (i >= iArr.length) {
                        str = null;
                        break;
                    }
                    if (asInt == iArr[i]) {
                        str = TIFFImageWriter.compressionTypes[i];
                        z = TIFFImageWriter.isCompressionLossless[i];
                        break;
                    }
                    i++;
                }
            } else {
                str = "None";
            }
            if (str != null) {
                IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("CompressionTypeName");
                iIOMetadataNode2.setAttribute("value", str);
                iIOMetadataNode.appendChild(iIOMetadataNode2);
                IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("Lossless");
                iIOMetadataNode3.setAttribute("value", z ? "TRUE" : "FALSE");
                iIOMetadataNode.appendChild(iIOMetadataNode3);
            }
        }
        IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("NumProgressiveScans");
        iIOMetadataNode4.setAttribute("value", "1");
        iIOMetadataNode.appendChild(iIOMetadataNode4);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDataNode() {
        int[] iArr;
        String str;
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Data");
        TIFFField tIFFField = getTIFFField(262);
        boolean z = tIFFField != null && tIFFField.getAsInt(0) == 3;
        TIFFField tIFFField2 = getTIFFField(284);
        String str2 = (tIFFField2 == null || tIFFField2.getAsInt(0) != 2) ? "PixelInterleaved" : "PlaneInterleaved";
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode(ExifInterface.TAG_PLANAR_CONFIGURATION);
        iIOMetadataNode2.setAttribute("value", str2);
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        TIFFField tIFFField3 = getTIFFField(262);
        if (tIFFField3 != null) {
            if (tIFFField3.getAsInt(0) == 3) {
                str = SsManifestParser.C4932c.f26641g;
            } else {
                TIFFField tIFFField4 = getTIFFField(339);
                if (tIFFField4 != null) {
                    int asInt = tIFFField4.getAsInt(0);
                    if (asInt == 2) {
                        str = "SignedIntegral";
                    } else if (asInt != 1) {
                        str = asInt == 3 ? "Real" : null;
                    }
                }
                str = "UnsignedIntegral";
            }
            if (str != null) {
                IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("SampleFormat");
                iIOMetadataNode3.setAttribute("value", str);
                iIOMetadataNode.appendChild(iIOMetadataNode3);
            }
        }
        TIFFField tIFFField5 = getTIFFField(258);
        if (tIFFField5 != null) {
            iArr = tIFFField5.getAsInts();
        } else {
            TIFFField tIFFField6 = getTIFFField(259);
            int asInt2 = tIFFField6 != null ? tIFFField6.getAsInt(0) : 1;
            if (getTIFFField(34665) != null || asInt2 == 7 || asInt2 == 6 || getTIFFField(513) != null) {
                TIFFField tIFFField7 = getTIFFField(262);
                iArr = (tIFFField7 == null || !(tIFFField7.getAsInt(0) == 0 || tIFFField7.getAsInt(0) == 1)) ? new int[]{8, 8, 8} : new int[]{8};
            } else {
                iArr = new int[]{1};
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < iArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(" ");
            }
            stringBuffer.append(Integer.toString(iArr[i]));
        }
        IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode(ExifInterface.TAG_BITS_PER_SAMPLE);
        if (z) {
            iIOMetadataNode4.setAttribute("value", repeat(stringBuffer.toString(), 3));
        } else {
            iIOMetadataNode4.setAttribute("value", stringBuffer.toString());
        }
        iIOMetadataNode.appendChild(iIOMetadataNode4);
        TIFFField tIFFField8 = getTIFFField(266);
        int asInt3 = tIFFField8 != null ? tIFFField8.getAsInt(0) : 1;
        StringBuffer stringBuffer2 = new StringBuffer();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i2 > 0) {
                stringBuffer2.append(" ");
            }
            int i3 = iArr[i2];
            int i4 = i3 == 1 ? 7 : i3 - 1;
            if (asInt3 != 1) {
                i4 = 0;
            }
            stringBuffer2.append(Integer.toString(i4));
        }
        IIOMetadataNode iIOMetadataNode5 = new IIOMetadataNode("SampleMSB");
        if (z) {
            iIOMetadataNode5.setAttribute("value", repeat(stringBuffer2.toString(), 3));
        } else {
            iIOMetadataNode5.setAttribute("value", stringBuffer2.toString());
        }
        iIOMetadataNode.appendChild(iIOMetadataNode5);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDimensionNode() {
        int asInt;
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Dimension");
        TIFFField tIFFField = getTIFFField(282);
        long[] jArr = tIFFField != null ? (long[]) tIFFField.getAsRational(0).clone() : null;
        TIFFField tIFFField2 = getTIFFField(283);
        long[] jArr2 = tIFFField2 != null ? (long[]) tIFFField2.getAsRational(0).clone() : null;
        if (jArr != null && jArr2 != null) {
            IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("PixelAspectRatio");
            iIOMetadataNode2.setAttribute("value", Float.toString(((float) (jArr[1] * jArr2[0])) / ((float) (jArr[0] * jArr2[1]))));
            iIOMetadataNode.appendChild(iIOMetadataNode2);
        }
        if (jArr != null || jArr2 != null) {
            TIFFField tIFFField3 = getTIFFField(296);
            int asInt2 = tIFFField3 != null ? tIFFField3.getAsInt(0) : 2;
            boolean z = asInt2 != 1;
            if (asInt2 == 2) {
                if (jArr != null) {
                    jArr[0] = jArr[0] * 100;
                    jArr[1] = jArr[1] * 254;
                }
                if (jArr2 != null) {
                    jArr2[0] = jArr2[0] * 100;
                    jArr2[1] = jArr2[1] * 254;
                }
            }
            if (z) {
                if (jArr != null) {
                    IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("HorizontalPixelSize");
                    iIOMetadataNode3.setAttribute("value", Float.toString((float) ((jArr[1] * 10.0d) / jArr[0])));
                    iIOMetadataNode.appendChild(iIOMetadataNode3);
                }
                if (jArr2 != null) {
                    float f = (float) ((jArr2[1] * 10.0d) / jArr2[0]);
                    IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("VerticalPixelSize");
                    iIOMetadataNode4.setAttribute("value", Float.toString(f));
                    iIOMetadataNode.appendChild(iIOMetadataNode4);
                }
            }
        }
        TIFFField tIFFField4 = getTIFFField(296);
        int asInt3 = tIFFField4 != null ? tIFFField4.getAsInt(0) : 2;
        if (asInt3 == 2 || asInt3 == 3) {
            TIFFField tIFFField5 = getTIFFField(286);
            if (tIFFField5 != null) {
                long[] asRational = tIFFField5.getAsRational(0);
                float f2 = ((float) asRational[0]) / ((float) asRational[1]);
                float f3 = asInt3 == 2 ? f2 * 254.0f : f2 * 10.0f;
                IIOMetadataNode iIOMetadataNode5 = new IIOMetadataNode("HorizontalPosition");
                iIOMetadataNode5.setAttribute("value", Float.toString(f3));
                iIOMetadataNode.appendChild(iIOMetadataNode5);
            }
            TIFFField tIFFField6 = getTIFFField(287);
            if (tIFFField6 != null) {
                long[] asRational2 = tIFFField6.getAsRational(0);
                float f4 = ((float) asRational2[0]) / ((float) asRational2[1]);
                float f5 = asInt3 == 2 ? f4 * 254.0f : f4 * 10.0f;
                IIOMetadataNode iIOMetadataNode6 = new IIOMetadataNode("VerticalPosition");
                iIOMetadataNode6.setAttribute("value", Float.toString(f5));
                iIOMetadataNode.appendChild(iIOMetadataNode6);
            }
        }
        TIFFField tIFFField7 = getTIFFField(274);
        if (tIFFField7 != null && (asInt = tIFFField7.getAsInt(0)) >= 0) {
            String[] strArr = orientationNames;
            if (asInt < strArr.length) {
                IIOMetadataNode iIOMetadataNode7 = new IIOMetadataNode("ImageOrientation");
                iIOMetadataNode7.setAttribute("value", strArr[asInt]);
                iIOMetadataNode.appendChild(iIOMetadataNode7);
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDocumentNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Document");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("FormatVersion");
        iIOMetadataNode2.setAttribute("value", "6.0");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        TIFFField tIFFField = getTIFFField(254);
        boolean z = false;
        if (tIFFField != null) {
            int asInt = tIFFField.getAsInt(0);
            String str = (asInt & 4) != 0 ? "TransparencyMask" : (asInt & 1) != 0 ? "ReducedResolution" : (asInt & 2) != 0 ? "SinglePage" : null;
            if (str != null) {
                IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("SubimageInterpretation");
                iIOMetadataNode3.setAttribute("value", str);
                iIOMetadataNode.appendChild(iIOMetadataNode3);
            }
        }
        TIFFField tIFFField2 = getTIFFField(306);
        if (tIFFField2 != null) {
            String asString = tIFFField2.getAsString(0);
            if (asString.length() == 19) {
                IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("ImageCreationTime");
                try {
                    iIOMetadataNode4.setAttribute(TypeAdapters.C6590r.f36273a, asString.substring(0, 4));
                    iIOMetadataNode4.setAttribute(TypeAdapters.C6590r.f36274b, asString.substring(5, 7));
                    iIOMetadataNode4.setAttribute("day", asString.substring(8, 10));
                    iIOMetadataNode4.setAttribute("hour", asString.substring(11, 13));
                    iIOMetadataNode4.setAttribute(TypeAdapters.C6590r.f36277e, asString.substring(14, 16));
                    iIOMetadataNode4.setAttribute(TypeAdapters.C6590r.f36278f, asString.substring(17, 19));
                    z = true;
                } catch (IndexOutOfBoundsException unused) {
                }
                if (z) {
                    iIOMetadataNode.appendChild(iIOMetadataNode4);
                }
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTextNode() {
        int[] iArr = {269, 270, 271, 272, 285, 305, 315, 316, 333, 33432};
        IIOMetadataNode iIOMetadataNode = null;
        for (int i = 0; i < 10; i++) {
            TIFFField tIFFField = getTIFFField(iArr[i]);
            if (tIFFField != null) {
                String asString = tIFFField.getAsString(0);
                if (iIOMetadataNode == null) {
                    iIOMetadataNode = new IIOMetadataNode("Text");
                }
                IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("TextEntry");
                iIOMetadataNode2.setAttribute("keyword", tIFFField.getTag().getName());
                iIOMetadataNode2.setAttribute("value", asString);
                iIOMetadataNode.appendChild(iIOMetadataNode2);
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTransparencyNode() {
        String str;
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Transparency");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("Alpha");
        TIFFField tIFFField = getTIFFField(338);
        if (tIFFField != null) {
            for (int i : tIFFField.getAsInts()) {
                if (i == 1) {
                    str = "premultiplied";
                    break;
                }
                if (i == 2) {
                    str = "nonpremultiplied";
                    break;
                }
            }
        }
        str = "none";
        iIOMetadataNode2.setAttribute("value", str);
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    public TIFFField getTIFFField(int i) {
        return this.rootIFD.getTIFFField(i);
    }

    public void initializeFromStream(ImageInputStream imageInputStream, boolean z, boolean z2) throws IOException {
        this.rootIFD.initialize(imageInputStream, true, z, z2);
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public boolean isReadOnly() {
        return false;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void mergeTree(String str, Node node) throws IIOInvalidTreeException {
        if (str.equals(this.nativeMetadataFormatName)) {
            if (node == null) {
                throw new NullPointerException("root == null!");
            }
            mergeNativeTree(node);
        } else {
            if (!str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
                throw new IllegalArgumentException("Not a recognized format!");
            }
            if (node == null) {
                throw new NullPointerException("root == null!");
            }
            mergeStandardTree(node);
        }
    }

    public void removeTIFFField(int i) {
        this.rootIFD.removeTIFFField(i);
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void reset() {
        this.rootIFD = new TIFFIFD(this.tagSets);
    }

    public TIFFImageMetadata(TIFFIFD tiffifd) {
        super(true, NATIVE_METADATA_FORMAT_NAME, NATIVE_METADATA_FORMAT_CLASS_NAME, null, null);
        this.tagSets = tiffifd.getTagSetList();
        this.rootIFD = tiffifd;
    }
}
