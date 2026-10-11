package com.twelvemonkeys.imageio.plugins.tiff;

import androidx.exifinterface.media.ExifInterface;
import androidx.palette.graphics.Palette;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.internal.bind.TypeAdapters;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.sunia.HTREnginev2.b7n;
import com.twelvemonkeys.imageio.AbstractMetadata;
import com.twelvemonkeys.imageio.metadata.AbstractDirectory;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.exif.Rational;
import com.twelvemonkeys.imageio.metadata.exif.TIFF;
import com.twelvemonkeys.imageio.plugins.tiff.TIFFImageWriter;
import com.twelvemonkeys.lang.Validate;
import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.metadata.IIOMetadataNode;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public final class TIFFImageMetadata extends AbstractMetadata {

    /* renamed from: g */
    public static final int f94162g = 100000;

    /* renamed from: e */
    public final Directory f94163e;

    /* renamed from: f */
    public Directory f94164f;

    /* renamed from: com.twelvemonkeys.imageio.plugins.tiff.TIFFImageMetadata$a */
    /* loaded from: classes10.dex */
    public static final class C16964a extends AbstractDirectory {
        public C16964a(Collection<Entry> collection) {
            super(collection);
        }
    }

    public TIFFImageMetadata() {
        this(new C16964a(Collections.emptyList()));
    }

    /* renamed from: l */
    public static int m60591l(Entry entry) {
        Object value = entry.getValue();
        if (value instanceof Number) {
            return ((Number) value).intValue();
        }
        if (value instanceof short[]) {
            return ((short[]) value)[0];
        }
        if (value instanceof int[]) {
            return ((int[]) value)[0];
        }
        throw new IllegalArgumentException("Unsupported type: " + entry);
    }

    public final IIOMetadataNode addChildNode(IIOMetadataNode iIOMetadataNode, String str, Object obj) {
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode(str);
        if (obj != null) {
            iIOMetadataNode2.setUserObject(obj);
            iIOMetadataNode2.setNodeValue(obj.toString());
        }
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode2;
    }

    /* renamed from: b */
    public final void m60592b(IIOMetadataNode iIOMetadataNode, int i) {
        Entry entryById = this.f94164f.getEntryById(Integer.valueOf(i));
        if (entryById != null) {
            IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("TextEntry");
            iIOMetadataNode.appendChild(iIOMetadataNode2);
            iIOMetadataNode2.setAttribute("keyword", entryById.getFieldName());
            iIOMetadataNode2.setAttribute("value", entryById.getValueAsString());
        }
    }

    /* renamed from: c */
    public final IIOMetadataNode m60593c(Directory directory) {
        IIOMetadataNode iIOMetadataNode;
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("TIFFIFD");
        for (Entry entry : directory) {
            Object value = entry.getValue();
            if (value instanceof Directory) {
                iIOMetadataNode = m60593c((Directory) value);
                iIOMetadataNode.setAttribute("parentTagNumber", String.valueOf(entry.getIdentifier()));
                String fieldName = entry.getFieldName();
                if (fieldName != null) {
                    iIOMetadataNode.setAttribute("parentTagName", fieldName);
                }
            } else {
                IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("TIFFField");
                iIOMetadataNode3.setAttribute("number", String.valueOf(entry.getIdentifier()));
                String fieldName2 = entry.getFieldName();
                if (fieldName2 != null) {
                    iIOMetadataNode3.setAttribute("name", fieldName2);
                }
                int valueCount = entry.valueCount();
                if (TIFF.TYPE_NAMES[7].equals(entry.getTypeName())) {
                    IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("TIFFUndefined");
                    iIOMetadataNode3.appendChild(iIOMetadataNode4);
                    if (valueCount == 1) {
                        iIOMetadataNode4.setAttribute("value", String.valueOf(value));
                    } else {
                        iIOMetadataNode4.setAttribute("value", Arrays.toString((byte[]) value).replaceAll("\\[?\\]?", ""));
                    }
                } else {
                    IIOMetadataNode iIOMetadataNode5 = new IIOMetadataNode(m60597g(entry));
                    iIOMetadataNode3.appendChild(iIOMetadataNode5);
                    boolean z = !m60602m(entry);
                    String m60598h = m60598h(entry);
                    if (valueCount == 1) {
                        IIOMetadataNode iIOMetadataNode6 = new IIOMetadataNode(m60598h);
                        iIOMetadataNode5.appendChild(iIOMetadataNode6);
                        m60609t(value, z, iIOMetadataNode6);
                    } else {
                        for (int i = 0; i < valueCount; i++) {
                            Object obj = Array.get(value, i);
                            IIOMetadataNode iIOMetadataNode7 = new IIOMetadataNode(m60598h);
                            iIOMetadataNode5.appendChild(iIOMetadataNode7);
                            m60609t(obj, z, iIOMetadataNode7);
                        }
                    }
                }
                iIOMetadataNode = iIOMetadataNode3;
            }
            iIOMetadataNode2.appendChild(iIOMetadataNode);
        }
        return iIOMetadataNode2;
    }

    /* renamed from: d */
    public final Object m60594d(short s, int i) {
        switch (s) {
            case 1:
            case 6:
            case 7:
                return new byte[i];
            case 2:
                return new String[i];
            case 3:
            case 8:
                return new short[i];
            case 4:
            case 9:
                return new int[i];
            case 5:
            case 10:
                return new Rational[i];
            case 11:
                return new float[i];
            case 12:
                return new double[i];
            case 13:
                return new long[i];
            default:
                throw new AssertionError("Unsupported TIFF type: " + ((int) s));
        }
    }

    /* renamed from: e */
    public final String m60595e(int i, String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            if (sb.length() > 0) {
                sb.append(' ');
            }
            sb.append(strArr[i2 % strArr.length]);
        }
        return sb.toString();
    }

    /* renamed from: f */
    public Directory m60596f() {
        return this.f94164f;
    }

    /* renamed from: g */
    public final String m60597g(Entry entry) {
        String typeName = entry.getTypeName();
        if ("BYTE".equals(typeName)) {
            return "TIFFBytes";
        }
        if ("ASCII".equals(typeName)) {
            return "TIFFAsciis";
        }
        if ("SHORT".equals(typeName)) {
            return "TIFFShorts";
        }
        if ("LONG".equals(typeName)) {
            return "TIFFLongs";
        }
        if ("RATIONAL".equals(typeName)) {
            return "TIFFRationals";
        }
        if ("SBYTE".equals(typeName)) {
            return "TIFFSBytes";
        }
        if ("SSHORT".equals(typeName)) {
            return "TIFFSShorts";
        }
        if ("SLONG".equals(typeName)) {
            return "TIFFSLongs";
        }
        if ("SRATIONAL".equals(typeName)) {
            return "TIFFSRationals";
        }
        if ("FLOAT".equals(typeName)) {
            return "TIFFFloats";
        }
        if ("DOUBLE".equals(typeName)) {
            return "TIFFDoubles";
        }
        if ("LONG8".equals(typeName)) {
            return "TIFFLong8s";
        }
        if ("SLONG8".equals(typeName)) {
            return "TIFFSLong8s";
        }
        throw new IllegalArgumentException(typeName);
    }

    public final String getAttribute(Node node, String str) {
        if (node instanceof Element) {
            return ((Element) node).getAttribute(str);
        }
        return null;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardChromaNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Chroma");
        int m60591l = m60591l(this.f94164f.getEntryById(262));
        int m60599i = m60599i();
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("ColorSpaceType");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        if (m60591l != 32803 && m60591l != 34892) {
            switch (m60591l) {
                case 0:
                case 1:
                case 4:
                    iIOMetadataNode2.setAttribute("value", "GRAY");
                    break;
                case 2:
                case 3:
                    iIOMetadataNode2.setAttribute("value", ColorUtils.RGB_COLOR_START);
                    break;
                case 5:
                    if (m60599i == 3) {
                        iIOMetadataNode2.setAttribute("value", "CMY");
                        break;
                    } else {
                        iIOMetadataNode2.setAttribute("value", "CMYK");
                        break;
                    }
                case 6:
                    iIOMetadataNode2.setAttribute("value", "YCbCr");
                    break;
                default:
                    switch (m60591l) {
                        case 8:
                        case 9:
                        case 10:
                            iIOMetadataNode2.setAttribute("value", "Lab");
                            break;
                        default:
                            switch (m60591l) {
                                case b7n.f65494o /* 32844 */:
                                case b7n.f65495p /* 32845 */:
                                    iIOMetadataNode2.setAttribute("value", "Luv");
                                    break;
                                default:
                                    iIOMetadataNode2.setAttribute("value", Integer.toHexString(m60599i) + "CLR");
                                    break;
                            }
                    }
            }
        } else {
            iIOMetadataNode2.setAttribute("value", "3CLR");
        }
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("NumChannels");
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        if (m60591l == 3) {
            iIOMetadataNode3.setAttribute("value", "3");
        } else {
            iIOMetadataNode3.setAttribute("value", Integer.toString(m60599i));
        }
        IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("BlackIsZero");
        iIOMetadataNode.appendChild(iIOMetadataNode4);
        if (m60591l == 0) {
            iIOMetadataNode4.setAttribute("value", "FALSE");
        }
        Entry entryById = this.f94164f.getEntryById(320);
        if (entryById != null) {
            int[] iArr = (int[]) entryById.getValue();
            Node iIOMetadataNode5 = new IIOMetadataNode(Palette.f8616j);
            iIOMetadataNode.appendChild(iIOMetadataNode5);
            int length = iArr.length / 3;
            for (int i = 0; i < length; i++) {
                IIOMetadataNode iIOMetadataNode6 = new IIOMetadataNode("PaletteEntry");
                iIOMetadataNode6.setAttribute(FirebaseAnalytics.Param.INDEX, Integer.toString(i));
                iIOMetadataNode6.setAttribute("red", Integer.toString((iArr[i] >> 8) & 255));
                iIOMetadataNode6.setAttribute("green", Integer.toString((iArr[i + length] >> 8) & 255));
                iIOMetadataNode6.setAttribute("blue", Integer.toString((iArr[(length * 2) + i] >> 8) & 255));
                iIOMetadataNode5.appendChild(iIOMetadataNode6);
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardCompressionNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(ExifInterface.TAG_COMPRESSION);
        IIOMetadataNode addChildNode = addChildNode(iIOMetadataNode, "CompressionTypeName", null);
        Entry entryById = this.f94164f.getEntryById(259);
        int m60591l = entryById == null ? 1 : m60591l(entryById);
        switch (m60591l) {
            case 1:
                addChildNode.setAttribute("value", "None");
                break;
            case 2:
                addChildNode.setAttribute("value", "CCITT RLE");
                break;
            case 3:
                addChildNode.setAttribute("value", "CCITT T4");
                break;
            case 4:
                addChildNode.setAttribute("value", "CCITT T6");
                break;
            case 5:
                addChildNode.setAttribute("value", "LZW");
                break;
            case 6:
                addChildNode.setAttribute("value", "Old JPEG");
                break;
            case 7:
                addChildNode.setAttribute("value", "JPEG");
                break;
            case 8:
                addChildNode.setAttribute("value", "ZLib");
                break;
            case b7n.f65480a /* 32766 */:
                addChildNode.setAttribute("value", "NEXT");
                break;
            case 32771:
                addChildNode.setAttribute("value", "CCITT RLEW");
                break;
            case 32773:
                addChildNode.setAttribute("value", "PackBits");
                break;
            case b7n.f65482c /* 32809 */:
                addChildNode.setAttribute("value", "ThunderScan");
                break;
            case b7n.f65483d /* 32895 */:
                addChildNode.setAttribute("value", "IT8CTPAD");
                break;
            case b7n.f65484e /* 32896 */:
                addChildNode.setAttribute("value", "IT8LW");
                break;
            case b7n.f65485f /* 32897 */:
                addChildNode.setAttribute("value", "IT8MP");
                break;
            case b7n.f65486g /* 32898 */:
                addChildNode.setAttribute("value", "IT8BL");
                break;
            case b7n.f65487h /* 32908 */:
                addChildNode.setAttribute("value", "Pixar Film");
                break;
            case b7n.f65488i /* 32909 */:
                addChildNode.setAttribute("value", "Pixar Log");
                break;
            case 32946:
                addChildNode.setAttribute("value", "Deflate");
                break;
            case b7n.f65489j /* 32947 */:
                addChildNode.setAttribute("value", "DCS");
                break;
            case b7n.f65490k /* 34661 */:
                addChildNode.setAttribute("value", "JBIG");
                break;
            case b7n.f65491l /* 34676 */:
                addChildNode.setAttribute("value", "SGI Log");
                break;
            case b7n.f65492m /* 34677 */:
                addChildNode.setAttribute("value", "SGI Log24");
                break;
            case b7n.f65493n /* 34712 */:
                addChildNode.setAttribute("value", "JPEG 2000");
                break;
            default:
                addChildNode.setAttribute("value", "Unknown " + m60591l);
                break;
        }
        if (m60591l != 1) {
            IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("Lossless");
            iIOMetadataNode.appendChild(iIOMetadataNode2);
            if (m60591l == 6 || m60591l == 7 || m60591l == 34661 || m60591l == 34712) {
                iIOMetadataNode2.setAttribute("value", "FALSE");
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDataNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Data");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode(ExifInterface.TAG_PLANAR_CONFIGURATION);
        Entry entryById = this.f94164f.getEntryById(284);
        int m60591l = entryById == null ? 1 : m60591l(entryById);
        if (m60591l == 1) {
            iIOMetadataNode2.setAttribute("value", "PixelInterleaved");
        } else if (m60591l != 2) {
            iIOMetadataNode2.setAttribute("value", "Unknown " + m60591l);
        } else {
            iIOMetadataNode2.setAttribute("value", "PlaneInterleaved");
        }
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        Entry entryById2 = this.f94164f.getEntryById(262);
        int m60591l2 = entryById2 == null ? 0 : m60591l(entryById2);
        Entry entryById3 = this.f94164f.getEntryById(339);
        int m60591l3 = entryById3 == null ? 1 : m60591l(entryById3);
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("SampleFormat");
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        if (m60591l3 != 1) {
            if (m60591l3 == 2) {
                iIOMetadataNode3.setAttribute("value", "SignedIntegral");
            } else if (m60591l3 != 3) {
                iIOMetadataNode3.setAttribute("value", "Unknown " + m60591l3);
            } else {
                iIOMetadataNode3.setAttribute("value", "Real");
            }
        } else if (m60591l2 == 3) {
            iIOMetadataNode3.setAttribute("value", SsManifestParser.C4932c.f26641g);
        } else {
            iIOMetadataNode3.setAttribute("value", "UnsignedIntegral");
        }
        Entry entryById4 = this.f94164f.getEntryById(258);
        String replaceAll = entryById4 == null ? "1" : entryById4.getValueAsString().replaceAll("\\[?\\]?,?", "");
        IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode(ExifInterface.TAG_BITS_PER_SAMPLE);
        iIOMetadataNode.appendChild(iIOMetadataNode4);
        iIOMetadataNode4.setAttribute("value", replaceAll);
        int m60599i = m60599i();
        Entry entryById5 = this.f94164f.getEntryById(266);
        int m60591l4 = entryById5 != null ? m60591l(entryById5) : 1;
        IIOMetadataNode iIOMetadataNode5 = new IIOMetadataNode("SampleMSB");
        iIOMetadataNode.appendChild(iIOMetadataNode5);
        if (m60591l4 == 1) {
            iIOMetadataNode5.setAttribute("value", m60595e(m60599i, "0"));
        } else if ("1".equals(replaceAll)) {
            iIOMetadataNode5.setAttribute("value", m60595e(m60599i, "7"));
        } else {
            iIOMetadataNode5.setAttribute("value", m60595e(m60599i, "7"));
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDimensionNode() {
        String str;
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Dimension");
        Entry entryById = this.f94164f.getEntryById(282);
        Entry entryById2 = this.f94164f.getEntryById(283);
        double doubleValue = 1.0d / (entryById == null ? 72.0d : ((Number) entryById.getValue()).doubleValue());
        double doubleValue2 = 1.0d / (entryById != null ? ((Number) entryById2.getValue()).doubleValue() : 72.0d);
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("PixelAspectRatio");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        iIOMetadataNode2.setAttribute("value", String.valueOf(doubleValue / doubleValue2));
        Entry entryById3 = this.f94164f.getEntryById(274);
        if (entryById3 != null) {
            switch (m60591l(entryById3)) {
                case 1:
                    str = "Normal";
                    break;
                case 2:
                    str = "FlipH";
                    break;
                case 3:
                    str = "Rotate180";
                    break;
                case 4:
                    str = "FlipV";
                    break;
                case 5:
                    str = "FlipHRotate90";
                    break;
                case 6:
                    str = "Rotate270";
                    break;
                case 7:
                    str = "FlipVRotate90";
                    break;
                case 8:
                    str = "Rotate90";
                    break;
                default:
                    str = null;
                    break;
            }
            if (str != null) {
                IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("ImageOrientation");
                iIOMetadataNode.appendChild(iIOMetadataNode3);
                iIOMetadataNode3.setAttribute("value", str);
            }
        }
        Entry entryById4 = this.f94164f.getEntryById(296);
        int m60591l = entryById4 == null ? 2 : m60591l(entryById4);
        if (m60591l == 3 || m60591l == 2) {
            double d = m60591l == 3 ? 10.0d : 25.4d;
            IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("HorizontalPixelSize");
            iIOMetadataNode.appendChild(iIOMetadataNode4);
            iIOMetadataNode4.setAttribute("value", String.valueOf(doubleValue * d));
            IIOMetadataNode iIOMetadataNode5 = new IIOMetadataNode("VerticalPixelSize");
            iIOMetadataNode.appendChild(iIOMetadataNode5);
            iIOMetadataNode5.setAttribute("value", String.valueOf(doubleValue2 * d));
            Entry entryById5 = this.f94164f.getEntryById(286);
            Entry entryById6 = this.f94164f.getEntryById(287);
            if (entryById5 != null && entryById6 != null) {
                double doubleValue3 = ((Number) entryById5.getValue()).doubleValue();
                double doubleValue4 = ((Number) entryById6.getValue()).doubleValue();
                IIOMetadataNode iIOMetadataNode6 = new IIOMetadataNode("HorizontalPosition");
                iIOMetadataNode.appendChild(iIOMetadataNode6);
                iIOMetadataNode6.setAttribute("value", String.valueOf(doubleValue3 * d));
                IIOMetadataNode iIOMetadataNode7 = new IIOMetadataNode("VerticalPosition");
                iIOMetadataNode.appendChild(iIOMetadataNode7);
                iIOMetadataNode7.setAttribute("value", String.valueOf(doubleValue4 * d));
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDocumentNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Document");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("FormatVersion");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        iIOMetadataNode2.setAttribute("value", "6.0");
        Entry entryById = this.f94164f.getEntryById(254);
        if (entryById != null) {
            int m60591l = m60591l(entryById);
            String str = (m60591l & 4) != 0 ? "TransparencyMask" : (m60591l & 1) != 0 ? "ReducedResolution" : (m60591l & 2) != 0 ? "SinglePage" : null;
            if (str != null) {
                IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("SubImageInterpretation");
                iIOMetadataNode.appendChild(iIOMetadataNode3);
                iIOMetadataNode3.setAttribute("value", str);
            }
        }
        Entry entryById2 = this.f94164f.getEntryById(306);
        if (entryById2 != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd hh:mm:ss");
            try {
                IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("ImageCreationTime");
                iIOMetadataNode.appendChild(iIOMetadataNode4);
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(simpleDateFormat.parse(entryById2.getValueAsString()));
                iIOMetadataNode4.setAttribute(TypeAdapters.C6590r.f36273a, String.valueOf(calendar.get(1)));
                iIOMetadataNode4.setAttribute(TypeAdapters.C6590r.f36274b, String.valueOf(calendar.get(2) + 1));
                iIOMetadataNode4.setAttribute("day", String.valueOf(calendar.get(5)));
                iIOMetadataNode4.setAttribute("hour", String.valueOf(calendar.get(11)));
                iIOMetadataNode4.setAttribute(TypeAdapters.C6590r.f36277e, String.valueOf(calendar.get(12)));
                iIOMetadataNode4.setAttribute(TypeAdapters.C6590r.f36278f, String.valueOf(calendar.get(13)));
            } catch (ParseException unused) {
            }
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTextNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Text");
        m60592b(iIOMetadataNode, 269);
        m60592b(iIOMetadataNode, 270);
        m60592b(iIOMetadataNode, 271);
        m60592b(iIOMetadataNode, 272);
        m60592b(iIOMetadataNode, 285);
        m60592b(iIOMetadataNode, 305);
        m60592b(iIOMetadataNode, 315);
        m60592b(iIOMetadataNode, 316);
        m60592b(iIOMetadataNode, 333);
        m60592b(iIOMetadataNode, 33432);
        if (iIOMetadataNode.hasChildNodes()) {
            return iIOMetadataNode;
        }
        return null;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTileNode() {
        return super.getStandardTileNode();
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTransparencyNode() {
        Entry entryById = this.f94164f.getEntryById(338);
        if (entryById == null) {
            return null;
        }
        int m60591l = entryById.getValue() instanceof Number ? m60591l(entryById) : ((Number) Array.get(entryById.getValue(), 0)).intValue();
        if (m60591l != 1 && m60591l != 2) {
            return null;
        }
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Transparency");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("Alpha");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        iIOMetadataNode2.setAttribute("value", m60591l == 1 ? "premultiplied" : "nonpremultiplied");
        return iIOMetadataNode;
    }

    public Entry getTIFFField(int i) {
        return this.f94164f.getEntryById(Integer.valueOf(i));
    }

    /* renamed from: h */
    public final String m60598h(Entry entry) {
        String typeName = entry.getTypeName();
        if ("BYTE".equals(typeName)) {
            return "TIFFByte";
        }
        if ("ASCII".equals(typeName)) {
            return "TIFFAscii";
        }
        if ("SHORT".equals(typeName)) {
            return "TIFFShort";
        }
        if ("LONG".equals(typeName)) {
            return "TIFFLong";
        }
        if ("RATIONAL".equals(typeName)) {
            return "TIFFRational";
        }
        if ("SBYTE".equals(typeName)) {
            return "TIFFSByte";
        }
        if ("SSHORT".equals(typeName)) {
            return "TIFFSShort";
        }
        if ("SLONG".equals(typeName)) {
            return "TIFFSLong";
        }
        if ("SRATIONAL".equals(typeName)) {
            return "TIFFSRational";
        }
        if ("FLOAT".equals(typeName)) {
            return "TIFFFloat";
        }
        if ("DOUBLE".equals(typeName)) {
            return "TIFFDouble";
        }
        if ("LONG8".equals(typeName)) {
            return "TIFFLong8";
        }
        if ("SLONG8".equals(typeName)) {
            return "TIFFSLong8";
        }
        throw new IllegalArgumentException(typeName);
    }

    /* renamed from: i */
    public final int m60599i() {
        Entry entryById = this.f94164f.getEntryById(277);
        Entry entryById2 = this.f94164f.getEntryById(258);
        if (entryById != null) {
            return m60591l(entryById);
        }
        if (entryById2 != null) {
            return entryById2.valueCount();
        }
        return 1;
    }

    @Override // com.twelvemonkeys.imageio.AbstractMetadata, javax.imageio.metadata.IIOMetadata
    public boolean isReadOnly() {
        return false;
    }

    /* renamed from: j */
    public final short m60600j(Node node) throws IIOInvalidTreeException {
        Node firstChild = node.getFirstChild();
        if (firstChild == null) {
            throw new IIOInvalidTreeException("Missing value wrapper node", node);
        }
        String nodeName = firstChild.getNodeName();
        if (!nodeName.startsWith("TIFF")) {
            throw new IIOInvalidTreeException("Unexpected value wrapper node, expected type", firstChild);
        }
        String substring = nodeName.substring(4);
        if (substring.equals(BaseError.UNDEFINED)) {
            return (short) 7;
        }
        int i = 1;
        String upperCase = substring.substring(0, substring.length() - 1).toUpperCase();
        while (true) {
            String[] strArr = TIFF.TYPE_NAMES;
            if (i >= strArr.length) {
                throw new IIOInvalidTreeException("Unknown TIFF type: " + upperCase, firstChild);
            }
            if (upperCase.equals(strArr[i])) {
                return (short) i;
            }
            i++;
        }
    }

    /* renamed from: k */
    public final Object m60601k(Node node, short s) throws IIOInvalidTreeException {
        Node firstChild = node.getFirstChild();
        if (firstChild == null) {
            throw new IIOInvalidTreeException("Empty TIFField node", node);
        }
        String nodeName = firstChild.getNodeName();
        if (s == 7) {
            String[] split = getAttribute(firstChild, "value").split(",\\s?");
            byte[] bArr = new byte[split.length];
            for (int i = 0; i < split.length; i++) {
                bArr[i] = Byte.parseByte(split[i]);
            }
            return bArr;
        }
        NodeList childNodes = firstChild.getChildNodes();
        int length = childNodes.getLength();
        Object m60594d = m60594d(s, length);
        for (int i2 = 0; i2 < length; i2++) {
            Node item = childNodes.item(i2);
            if (!nodeName.startsWith(item.getNodeName())) {
                throw new IIOInvalidTreeException("Value node does not match container node", firstChild);
            }
            String attribute = getAttribute(item, "value");
            switch (s) {
                case 1:
                case 6:
                    ((byte[]) m60594d)[i2] = (byte) Short.parseShort(attribute);
                    break;
                case 2:
                    ((String[]) m60594d)[i2] = attribute;
                    break;
                case 3:
                case 8:
                    ((short[]) m60594d)[i2] = (short) Integer.parseInt(attribute);
                    break;
                case 4:
                case 9:
                    ((int[]) m60594d)[i2] = (int) Long.parseLong(attribute);
                    break;
                case 5:
                case 10:
                    String[] split2 = attribute.split("/");
                    ((Rational[]) m60594d)[i2] = split2.length > 1 ? new Rational(Long.parseLong(split2[0]), Long.parseLong(split2[1])) : new Rational(Long.parseLong(split2[0]));
                    break;
                case 7:
                default:
                    throw new AssertionError("Unsupported TIFF type: " + ((int) s));
                case 11:
                    ((float[]) m60594d)[i2] = Float.parseFloat(attribute);
                    break;
                case 12:
                    ((double[]) m60594d)[i2] = Double.parseDouble(attribute);
                    break;
            }
        }
        if (length == 0) {
            return null;
        }
        return length == 1 ? Array.get(m60594d, 0) : m60594d;
    }

    /* renamed from: m */
    public final boolean m60602m(Entry entry) {
        String typeName = entry.getTypeName();
        return "SBYTE".equals(typeName) || "SSHORT".equals(typeName) || "SLONG".equals(typeName) || "SRATIONAL".equals(typeName) || "FLOAT".equals(typeName) || "DOUBLE".equals(typeName) || "SLONG8".equals(typeName);
    }

    @Override // com.twelvemonkeys.imageio.AbstractMetadata, javax.imageio.metadata.IIOMetadata
    public void mergeTree(String str, Node node) throws IIOInvalidTreeException {
        super.mergeTree(str, node);
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.f94164f.size() + 10);
        for (Entry entry : this.f94164f) {
            linkedHashMap.put((Integer) entry.getIdentifier(), entry);
        }
        m60603n(str, node, linkedHashMap);
        this.f94164f = new C16964a(linkedHashMap.values());
    }

    /* renamed from: n */
    public final void m60603n(String str, Node node, Map<Integer, Entry> map) throws IIOInvalidTreeException {
        if (getNativeMetadataFormatName().equals(str)) {
            m60607r(node, map);
        } else {
            if (!IIOMetadataFormatImpl.standardMetadataFormatName.equals(str)) {
                throw new AssertionError();
            }
            m60608s(node, map);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b5, code lost:
    
        if (((java.lang.Number) r12.getValue()).intValue() == 2) goto L41;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m60604o(org.w3c.dom.Node r13, java.util.Map<java.lang.Integer, com.twelvemonkeys.imageio.metadata.Entry> r14) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.plugins.tiff.TIFFImageMetadata.m60604o(org.w3c.dom.Node, java.util.Map):void");
    }

    /* renamed from: p */
    public final void m60605p(Node node, Map<Integer, Entry> map) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            String nodeName = childNodes.item(i).getNodeName();
            if (!"SubimageInterpretation".equals(nodeName)) {
                "ImageCreationTime".equals(nodeName);
            }
        }
    }

    /* renamed from: q */
    public final void m60606q(Node node, Map<Integer, Entry> map) throws IIOInvalidTreeException {
        TIFFImageWriter.C16968a c16968a;
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (!"TextEntry".equals(item.getNodeName())) {
                throw new IIOInvalidTreeException("Text node should only contain TextEntry nodes", node);
            }
            String attribute = getAttribute(item, "keyword");
            String attribute2 = getAttribute(item, "value");
            if (attribute2 != null && !attribute2.isEmpty() && attribute != null) {
                String lowerCase = attribute.toLowerCase();
                if ("documentname".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(269, (short) 2, attribute2);
                } else if ("imagedescription".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(270, (short) 2, attribute2);
                } else if ("make".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(271, (short) 2, attribute2);
                } else if ("model".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(272, (short) 2, attribute2);
                } else if ("pagename".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(285, (short) 2, attribute2);
                } else if ("software".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(305, (short) 2, attribute2);
                } else if ("artist".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(315, (short) 2, attribute2);
                } else if ("hostcomputer".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(316, (short) 2, attribute2);
                } else if ("inknames".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(333, (short) 2, attribute2);
                } else if ("copyright".equals(lowerCase)) {
                    c16968a = new TIFFImageWriter.C16968a(33432, (short) 2, attribute2);
                }
                map.put((Integer) c16968a.getIdentifier(), c16968a);
            }
        }
    }

    /* renamed from: r */
    public final void m60607r(Node node, Map<Integer, Entry> map) throws IIOInvalidTreeException {
        for (Entry entry : m60611v(node.getFirstChild())) {
            map.put((Integer) entry.getIdentifier(), entry);
        }
    }

    @Override // com.twelvemonkeys.imageio.AbstractMetadata, javax.imageio.metadata.IIOMetadata
    public void reset() {
        super.reset();
        this.f94164f = this.f94163e;
    }

    /* renamed from: s */
    public final void m60608s(Node node, Map<Integer, Entry> map) throws IIOInvalidTreeException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if ("Dimension".equals(item.getNodeName())) {
                m60604o(item, map);
            } else if ("Document".equals(item.getNodeName())) {
                m60605p(item, map);
            } else if ("Text".equals(item.getNodeName())) {
                m60606q(item, map);
            }
        }
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void setFromTree(String str, Node node) throws IIOInvalidTreeException {
        super.mergeTree(str, node);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        m60603n(str, node, linkedHashMap);
        this.f94164f = new C16964a(linkedHashMap.values());
    }

    /* renamed from: t */
    public final void m60609t(Object obj, boolean z, IIOMetadataNode iIOMetadataNode) {
        if (z && (obj instanceof Byte)) {
            iIOMetadataNode.setAttribute("value", String.valueOf(((Byte) obj).byteValue() & 255));
            return;
        }
        if (z && (obj instanceof Short)) {
            iIOMetadataNode.setAttribute("value", String.valueOf(((Short) obj).shortValue() & 65535));
        } else if (z && (obj instanceof Integer)) {
            iIOMetadataNode.setAttribute("value", String.valueOf(((Integer) obj).intValue() & 4294967295L));
        } else {
            iIOMetadataNode.setAttribute("value", String.valueOf(obj));
        }
    }

    /* renamed from: u */
    public final Entry m60610u(Node node) throws IIOInvalidTreeException {
        String nodeName = node.getNodeName();
        if (nodeName.equals("TIFFIFD")) {
            return new TIFFImageWriter.C16968a(Integer.parseInt(getAttribute(node, "parentTagNumber")), (short) 13, m60611v(node));
        }
        if (!nodeName.equals("TIFFField")) {
            throw new IIOInvalidTreeException("Expected \"TIFFIFD\" or \"TIFFField\" node: " + nodeName, node);
        }
        int parseInt = Integer.parseInt(getAttribute(node, "number"));
        short m60600j = m60600j(node);
        Object m60601k = m60601k(node, m60600j);
        if (m60601k != null) {
            return new TIFFImageWriter.C16968a(parseInt, m60600j, m60601k);
        }
        return null;
    }

    /* renamed from: v */
    public final Directory m60611v(Node node) throws IIOInvalidTreeException {
        if (node == null || !node.getNodeName().equals("TIFFIFD")) {
            throw new IIOInvalidTreeException("Expected \"TIFFIFD\" node", node);
        }
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            arrayList.add(m60610u(childNodes.item(i)));
        }
        return new C16964a(arrayList);
    }

    public TIFFImageMetadata(Directory directory) {
        super(true, TIFFMedataFormat.SUN_NATIVE_IMAGE_METADATA_FORMAT_NAME, TIFFMedataFormat.class.getName(), null, null);
        this.f94164f = (Directory) Validate.notNull(directory, "IFD");
        this.f94163e = directory;
    }

    @Override // com.twelvemonkeys.imageio.AbstractMetadata
    public IIOMetadataNode getNativeTree() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(this.nativeMetadataFormatName);
        iIOMetadataNode.appendChild(m60593c(this.f94164f));
        return iIOMetadataNode;
    }

    public TIFFImageMetadata(Collection<Entry> collection) {
        this(new C16964a(collection));
    }
}
