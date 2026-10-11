package org.apache.poi.hemf.record.emf;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.hemf.record.emf.HemfFont;
import org.apache.poi.hwmf.record.HwmfFont;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfFont extends HwmfFont {
    private static final int LOGFONTPANOSE_SIZE = 320;
    private static final int LOGFONT_SIZE = 92;
    protected LogFontDetails details;
    protected String fullname;
    protected String script;
    protected String style;

    /* loaded from: classes12.dex */
    public interface LogFontDetails {
    }

    /* loaded from: classes12.dex */
    public static class LogFontExDv implements LogFontDetails {
        protected int[] designVector;

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("{ designVectorLen: ");
            int[] iArr = this.designVector;
            sb.append(iArr == null ? 0 : iArr.length);
            sb.append(" }");
            return sb.toString();
        }
    }

    /* loaded from: classes12.dex */
    public static class LogFontPanose implements LogFontDetails, GenericRecord {
        protected ArmStyle armStyle;
        protected Contrast contrast;
        protected int culture;
        protected FamilyType familyType;
        protected Letterform letterform;
        protected MidLine midLine;
        protected Proportion proportion;
        protected SerifType serifStyle;
        protected StrokeVariation strokeVariation;
        protected int styleSize;
        protected int vendorId;
        protected FontWeight weight;
        protected XHeight xHeight;

        /* loaded from: classes12.dex */
        public enum ArmStyle {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_STRAIGHT_ARMS_HORZ,
            PAN_STRAIGHT_ARMS_WEDGE,
            PAN_STRAIGHT_ARMS_VERT,
            PAN_STRAIGHT_ARMS_SINGLE_SERIF,
            PAN_STRAIGHT_ARMS_DOUBLE_SERIF,
            PAN_BENT_ARMS_HORZ,
            PAN_BENT_ARMS_WEDGE,
            PAN_BENT_ARMS_VERT,
            PAN_BENT_ARMS_SINGLE_SERIF,
            PAN_BENT_ARMS_DOUBLE_SERIF
        }

        /* loaded from: classes12.dex */
        public enum Contrast {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_CONTRAST_NONE,
            PAN_CONTRAST_VERY_LOW,
            PAN_CONTRAST_LOW,
            PAN_CONTRAST_MEDIUM_LOW,
            PAN_CONTRAST_MEDIUM,
            PAN_CONTRAST_MEDIUM_HIGH,
            PAN_CONTRAST_HIGH,
            PAN_CONTRAST_VERY_HIGH
        }

        /* loaded from: classes12.dex */
        public enum FamilyType {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_FAMILY_TEXT_DISPLAY,
            PAN_FAMILY_SCRIPT,
            PAN_FAMILY_DECORATIVE,
            PAN_FAMILY_PICTORIAL
        }

        /* loaded from: classes12.dex */
        public enum FontWeight {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_WEIGHT_VERY_LIGHT,
            PAN_WEIGHT_LIGHT,
            PAN_WEIGHT_THIN,
            PAN_WEIGHT_BOOK,
            PAN_WEIGHT_MEDIUM,
            PAN_WEIGHT_DEMI,
            PAN_WEIGHT_BOLD,
            PAN_WEIGHT_HEAVY,
            PAN_WEIGHT_BLACK,
            PAN_WEIGHT_NORD
        }

        /* loaded from: classes12.dex */
        public enum Letterform {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_LETT_NORMAL_CONTACT,
            PAN_LETT_NORMAL_WEIGHTED,
            PAN_LETT_NORMAL_BOXED,
            PAN_LETT_NORMAL_FLATTENED,
            PAN_LETT_NORMAL_ROUNDED,
            PAN_LETT_NORMAL_OFF_CENTER,
            PAN_LETT_NORMAL_SQUARE,
            PAN_LETT_OBLIQUE_CONTACT,
            PAN_LETT_OBLIQUE_WEIGHTED,
            PAN_LETT_OBLIQUE_BOXED,
            PAN_LETT_OBLIQUE_FLATTENED,
            PAN_LETT_OBLIQUE_ROUNDED,
            PAN_LETT_OBLIQUE_OFF_CENTER,
            PAN_LETT_OBLIQUE_SQUARE
        }

        /* loaded from: classes12.dex */
        public enum MidLine {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_MIDLINE_STANDARD_TRIMMED,
            PAN_MIDLINE_STANDARD_POINTED,
            PAN_MIDLINE_STANDARD_SERIFED,
            PAN_MIDLINE_HIGH_TRIMMED,
            PAN_MIDLINE_HIGH_POINTED,
            PAN_MIDLINE_HIGH_SERIFED,
            PAN_MIDLINE_CONSTANT_TRIMMED,
            PAN_MIDLINE_CONSTANT_POINTED,
            PAN_MIDLINE_CONSTANT_SERIFED,
            PAN_MIDLINE_LOW_TRIMMED,
            PAN_MIDLINE_LOW_POINTED,
            PAN_MIDLINE_LOW_SERIFED
        }

        /* loaded from: classes12.dex */
        public enum Proportion {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_PROP_OLD_STYLE,
            PAN_PROP_MODERN,
            PAN_PROP_EVEN_WIDTH,
            PAN_PROP_EXPANDED,
            PAN_PROP_CONDENSED,
            PAN_PROP_VERY_EXPANDED,
            PAN_PROP_VERY_CONDENSED,
            PAN_PROP_MONOSPACED
        }

        /* loaded from: classes12.dex */
        public enum SerifType {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_SERIF_COVE,
            PAN_SERIF_OBTUSE_COVE,
            PAN_SERIF_SQUARE_COVE,
            PAN_SERIF_OBTUSE_SQUARE_COVE,
            PAN_SERIF_SQUARE,
            PAN_SERIF_THIN,
            PAN_SERIF_BONE,
            PAN_SERIF_EXAGGERATED,
            PAN_SERIF_TRIANGLE,
            PAN_SERIF_NORMAL_SANS,
            PAN_SERIF_OBTUSE_SANS,
            PAN_SERIF_PERP_SANS,
            PAN_SERIF_FLARED,
            PAN_SERIF_ROUNDED
        }

        /* loaded from: classes12.dex */
        public enum StrokeVariation {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_STROKE_GRADUAL_DIAG,
            PAN_STROKE_GRADUAL_TRAN,
            PAN_STROKE_GRADUAL_VERT,
            PAN_STROKE_GRADUAL_HORZ,
            PAN_STROKE_RAPID_VERT,
            PAN_STROKE_RAPID_HORZ,
            PAN_STROKE_INSTANT_VERT
        }

        /* loaded from: classes12.dex */
        public enum XHeight {
            PAN_ANY,
            PAN_NO_FIT,
            PAN_XHEIGHT_CONSTANT_SMALL,
            PAN_XHEIGHT_CONSTANT_STD,
            PAN_XHEIGHT_CONSTANT_LARGE,
            PAN_XHEIGHT_DUCKING_SMALL,
            PAN_XHEIGHT_DUCKING_STD,
            PAN_XHEIGHT_DUCKING_LARGE
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.styleSize);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this.vendorId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$10() {
            return this.letterform;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$11() {
            return this.midLine;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$12() {
            return this.xHeight;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this.culture);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return this.familyType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return this.serifStyle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$5() {
            return this.weight;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$6() {
            return this.proportion;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$7() {
            return this.contrast;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$8() {
            return this.strokeVariation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$9() {
            return this.armStyle;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("styleSize", new Supplier() { // from class: com.sunia.HTREnginev2.gjh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
            linkedHashMap.put("vendorId", new Supplier() { // from class: com.sunia.HTREnginev2.njh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
            linkedHashMap.put("culture", new Supplier() { // from class: com.sunia.HTREnginev2.ojh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
            linkedHashMap.put("familyType", new Supplier() { // from class: com.sunia.HTREnginev2.pjh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            });
            linkedHashMap.put("serifStyle", new Supplier() { // from class: com.sunia.HTREnginev2.qjh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
            linkedHashMap.put("weight", new Supplier() { // from class: com.sunia.HTREnginev2.rjh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$5;
                    lambda$getGenericProperties$5 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$5();
                    return lambda$getGenericProperties$5;
                }
            });
            linkedHashMap.put("proportion", new Supplier() { // from class: com.sunia.HTREnginev2.sjh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$6;
                    lambda$getGenericProperties$6 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$6();
                    return lambda$getGenericProperties$6;
                }
            });
            linkedHashMap.put("contrast", new Supplier() { // from class: com.sunia.HTREnginev2.hjh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$7;
                    lambda$getGenericProperties$7 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$7();
                    return lambda$getGenericProperties$7;
                }
            });
            linkedHashMap.put("strokeVariation", new Supplier() { // from class: com.sunia.HTREnginev2.ijh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$8;
                    lambda$getGenericProperties$8 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$8();
                    return lambda$getGenericProperties$8;
                }
            });
            linkedHashMap.put("armStyle", new Supplier() { // from class: com.sunia.HTREnginev2.jjh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$9;
                    lambda$getGenericProperties$9 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$9();
                    return lambda$getGenericProperties$9;
                }
            });
            linkedHashMap.put("letterform", new Supplier() { // from class: com.sunia.HTREnginev2.kjh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$10;
                    lambda$getGenericProperties$10 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$10();
                    return lambda$getGenericProperties$10;
                }
            });
            linkedHashMap.put("midLine", new Supplier() { // from class: com.sunia.HTREnginev2.ljh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$11;
                    lambda$getGenericProperties$11 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$11();
                    return lambda$getGenericProperties$11;
                }
            });
            linkedHashMap.put("xHeight", new Supplier() { // from class: com.sunia.HTREnginev2.mjh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$12;
                    lambda$getGenericProperties$12 = HemfFont.LogFontPanose.this.lambda$getGenericProperties$12();
                    return lambda$getGenericProperties$12;
                }
            });
            return Collections.unmodifiableMap(linkedHashMap);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return this.fullname;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return this.style;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return this.script;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return this.details;
    }

    @Override // org.apache.poi.hwmf.record.HwmfFont, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.bjh
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = HemfFont.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "fullname", new Supplier() { // from class: com.sunia.HTREnginev2.cjh
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = HemfFont.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "style", new Supplier() { // from class: com.sunia.HTREnginev2.djh
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = HemfFont.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, Constants.ELEMNAME_SCRIPT_STRING, new Supplier() { // from class: com.sunia.HTREnginev2.ejh
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = HemfFont.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "details", new Supplier() { // from class: com.sunia.HTREnginev2.fjh
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = HemfFont.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        });
    }

    @Override // org.apache.poi.hwmf.record.HwmfFont
    public int init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
        this.height = littleEndianInputStream.readInt();
        this.width = littleEndianInputStream.readInt();
        this.escapement = littleEndianInputStream.readInt();
        this.orientation = littleEndianInputStream.readInt();
        this.weight = littleEndianInputStream.readInt();
        this.italic = littleEndianInputStream.readUByte() != 0;
        this.underline = littleEndianInputStream.readUByte() != 0;
        this.strikeOut = littleEndianInputStream.readUByte() != 0;
        this.charSet = FontCharset.valueOf(littleEndianInputStream.readUByte());
        this.outPrecision = HwmfFont.WmfOutPrecision.valueOf(littleEndianInputStream.readUByte());
        this.clipPrecision.init(littleEndianInputStream);
        this.quality = HwmfFont.WmfFontQuality.valueOf(littleEndianInputStream.readUByte());
        this.pitchAndFamily = littleEndianInputStream.readUByte();
        StringBuilder sb = new StringBuilder();
        int readString = readString(littleEndianInputStream, sb, 32);
        if (readString == -1) {
            throw new IOException("Font facename can't be determined.");
        }
        this.facename = sb.toString();
        int i = readString + 28;
        if (j <= 92) {
            return i;
        }
        int readString2 = readString(littleEndianInputStream, sb, 64);
        if (readString2 == -1) {
            throw new IOException("Font fullname can't be determined.");
        }
        this.fullname = sb.toString();
        int i2 = i + readString2;
        int readString3 = readString(littleEndianInputStream, sb, 32);
        if (readString3 == -1) {
            throw new IOException("Font style can't be determined.");
        }
        this.style = sb.toString();
        int i3 = i2 + readString3;
        if (j != 320) {
            LogFontExDv logFontExDv = new LogFontExDv();
            this.details = logFontExDv;
            int readString4 = readString(littleEndianInputStream, sb, 32);
            if (readString4 == -1) {
                throw new IOException("Font script can't be determined.");
            }
            this.script = sb.toString();
            littleEndianInputStream.readInt();
            int readInt = littleEndianInputStream.readInt();
            int i4 = i3 + readString4 + 8;
            if (readInt < 0 || readInt > 16) {
                return i4;
            }
            logFontExDv.designVector = new int[readInt];
            for (int i5 = 0; i5 < readInt; i5++) {
                logFontExDv.designVector[i5] = littleEndianInputStream.readInt();
            }
            return i4 + (readInt * 4);
        }
        LogFontPanose logFontPanose = new LogFontPanose();
        this.details = logFontPanose;
        littleEndianInputStream.readInt();
        logFontPanose.styleSize = (int) littleEndianInputStream.readUInt();
        littleEndianInputStream.readInt();
        littleEndianInputStream.readInt();
        logFontPanose.vendorId = littleEndianInputStream.readInt();
        logFontPanose.culture = littleEndianInputStream.readInt();
        logFontPanose.familyType = LogFontPanose.FamilyType.values()[littleEndianInputStream.readUByte()];
        logFontPanose.serifStyle = LogFontPanose.SerifType.values()[littleEndianInputStream.readUByte()];
        logFontPanose.weight = LogFontPanose.FontWeight.values()[littleEndianInputStream.readUByte()];
        logFontPanose.proportion = LogFontPanose.Proportion.values()[littleEndianInputStream.readUByte()];
        logFontPanose.contrast = LogFontPanose.Contrast.values()[littleEndianInputStream.readUByte()];
        logFontPanose.strokeVariation = LogFontPanose.StrokeVariation.values()[littleEndianInputStream.readUByte()];
        logFontPanose.armStyle = LogFontPanose.ArmStyle.values()[littleEndianInputStream.readUByte()];
        logFontPanose.letterform = LogFontPanose.Letterform.values()[littleEndianInputStream.readUByte()];
        logFontPanose.midLine = LogFontPanose.MidLine.values()[littleEndianInputStream.readUByte()];
        logFontPanose.xHeight = LogFontPanose.XHeight.values()[littleEndianInputStream.readUByte()];
        long skipFully = IOUtils.skipFully(littleEndianInputStream, 2L);
        if (skipFully == 2) {
            return i3 + 36;
        }
        throw new IOException("Didn't skip 2: " + skipFully);
    }

    @Override // org.apache.poi.hwmf.record.HwmfFont
    public int readString(LittleEndianInputStream littleEndianInputStream, StringBuilder sb, int i) {
        sb.setLength(0);
        int i2 = i * 2;
        byte[] bArr = new byte[i2];
        littleEndianInputStream.readFully(bArr);
        int i3 = 0;
        while (i3 != i2) {
            int i4 = i3 + 1;
            byte b = bArr[i3];
            int i5 = i4 + 1;
            byte b2 = bArr[i4];
            if ((b == 0 && b2 == 0) || b == -1 || b2 == -1 || i5 > i2) {
                sb.append(new String(bArr, 0, i5 - 2, StandardCharsets.UTF_16LE));
                return i2;
            }
            i3 = i5;
        }
        return -1;
    }

    public void setHeight(double d) {
        this.height = d;
    }

    public void setItalic(boolean z) {
        this.italic = z;
    }

    public void setStrikeOut(boolean z) {
        this.strikeOut = z;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setTypeface(String str) {
        this.facename = str;
    }

    public void setUnderline(boolean z) {
        this.underline = z;
    }

    public void setWeight(int i) {
        this.weight = i;
    }

    @Override // org.apache.poi.hwmf.record.HwmfFont
    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }
}
