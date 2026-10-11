package org.apache.poi.common.usermodel.fonts;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.common.usermodel.fonts.FontHeader;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class FontHeader implements FontInfo, GenericRecord {
    private static final int[] FLAGS_MASKS = {1, 4, 16, 32, 64, 128, 268435456};
    private static final String[] FLAGS_NAMES = {"SUBSET", "TTCOMPRESSED", "FAILIFVARIATIONSIMULATED", "EMBEDEUDC", "VALIDATIONTESTS", "WEBOBJECT", "XORENCRYPTDATA"};
    private static final int[] FSTYPE_MASKS = {0, 2, 4, 8, 256, 512};
    private static final String[] FSTYPE_NAMES = {"INSTALLABLE_EMBEDDING", "RESTRICTED_LICENSE_EMBEDDING", "PREVIEW_PRINT_EMBEDDING", "EDITABLE_EMBEDDING", "NO_SUBSETTING", "BITMAP_EMBEDDING_ONLY"};
    public static final int REGULAR_WEIGHT = 400;
    private byte charset;
    private int checkSumAdjustment;
    private int codePageRange1;
    private int codePageRange2;
    private int eotSize;
    private String familyName;
    private int flags;
    private int fontDataSize;
    private int fsType;
    private String fullName;
    private byte italic;
    private int magic;
    private final byte[] panose = new byte[10];
    private String styleName;
    private int unicodeRange1;
    private int unicodeRange2;
    private int unicodeRange3;
    private int unicodeRange4;
    private int version;
    private String versionName;
    private int weight;

    /* renamed from: org.apache.poi.common.usermodel.fonts.FontHeader$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194171 {

        /* renamed from: $SwitchMap$org$apache$poi$common$usermodel$fonts$FontHeader$PanoseFamily */
        static final /* synthetic */ int[] f111314xbb5dc581;

        /* renamed from: $SwitchMap$org$apache$poi$common$usermodel$fonts$FontHeader$PanoseSerif */
        static final /* synthetic */ int[] f111315x1f8a8fc0;

        static {
            int[] iArr = new int[PanoseSerif.values().length];
            f111315x1f8a8fc0 = iArr;
            try {
                iArr[PanoseSerif.TRIANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111315x1f8a8fc0[PanoseSerif.NORMAL_SANS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111315x1f8a8fc0[PanoseSerif.OBTUSE_SANS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111315x1f8a8fc0[PanoseSerif.PERP_SANS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111315x1f8a8fc0[PanoseSerif.FLARED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111315x1f8a8fc0[PanoseSerif.ROUNDED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[PanoseFamily.values().length];
            f111314xbb5dc581 = iArr2;
            try {
                iArr2[PanoseFamily.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f111314xbb5dc581[PanoseFamily.NO_FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f111314xbb5dc581[PanoseFamily.TEXT_DISPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f111314xbb5dc581[PanoseFamily.DECORATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f111314xbb5dc581[PanoseFamily.SCRIPT.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f111314xbb5dc581[PanoseFamily.PICTORIAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum PanoseArmStyle {
        ANY,
        NO_FIT,
        STRAIGHT_ARMS_HORZ,
        STRAIGHT_ARMS_WEDGE,
        STRAIGHT_ARMS_VERT,
        STRAIGHT_ARMS_SINGLE_SERIF,
        STRAIGHT_ARMS_DOUBLE_SERIF,
        BENT_ARMS_HORZ,
        BENT_ARMS_WEDGE,
        BENT_ARMS_VERT,
        BENT_ARMS_SINGLE_SERIF,
        BENT_ARMS_DOUBLE_SERIF
    }

    /* loaded from: classes12.dex */
    public enum PanoseContrast {
        ANY,
        NO_FIT,
        NONE,
        VERY_LOW,
        LOW,
        MEDIUM_LOW,
        MEDIUM,
        MEDIUM_HIGH,
        HIGH,
        VERY_HIGH
    }

    /* loaded from: classes12.dex */
    public enum PanoseFamily {
        ANY,
        NO_FIT,
        TEXT_DISPLAY,
        SCRIPT,
        DECORATIVE,
        PICTORIAL
    }

    /* loaded from: classes12.dex */
    public enum PanoseLetterForm {
        ANY,
        NO_FIT,
        NORMAL_CONTACT,
        NORMAL_WEIGHTED,
        NORMAL_BOXED,
        NORMAL_FLATTENED,
        NORMAL_ROUNDED,
        NORMAL_OFF_CENTER,
        NORMAL_SQUARE,
        OBLIQUE_CONTACT,
        OBLIQUE_WEIGHTED,
        OBLIQUE_BOXED,
        OBLIQUE_FLATTENED,
        OBLIQUE_ROUNDED,
        OBLIQUE_OFF_CENTER,
        OBLIQUE_SQUARE
    }

    /* loaded from: classes12.dex */
    public enum PanoseMidLine {
        ANY,
        NO_FIT,
        STANDARD_TRIMMED,
        STANDARD_POINTED,
        STANDARD_SERIFED,
        HIGH_TRIMMED,
        HIGH_POINTED,
        HIGH_SERIFED,
        CONSTANT_TRIMMED,
        CONSTANT_POINTED,
        CONSTANT_SERIFED,
        LOW_TRIMMED,
        LOW_POINTED,
        LOW_SERIFED
    }

    /* loaded from: classes12.dex */
    public enum PanoseProportion {
        ANY,
        NO_FIT,
        OLD_STYLE,
        MODERN,
        EVEN_WIDTH,
        EXPANDED,
        CONDENSED,
        VERY_EXPANDED,
        VERY_CONDENSED,
        MONOSPACED
    }

    /* loaded from: classes12.dex */
    public enum PanoseSerif {
        ANY,
        NO_FIT,
        COVE,
        OBTUSE_COVE,
        SQUARE_COVE,
        OBTUSE_SQUARE_COVE,
        SQUARE,
        THIN,
        BONE,
        EXAGGERATED,
        TRIANGLE,
        NORMAL_SANS,
        OBTUSE_SANS,
        PERP_SANS,
        FLARED,
        ROUNDED
    }

    /* loaded from: classes12.dex */
    public enum PanoseStroke {
        ANY,
        NO_FIT,
        GRADUAL_DIAG,
        GRADUAL_TRAN,
        GRADUAL_VERT,
        GRADUAL_HORZ,
        RAPID_VERT,
        RAPID_HORZ,
        INSTANT_VERT
    }

    /* loaded from: classes12.dex */
    public enum PanoseWeight {
        ANY,
        NO_FIT,
        VERY_LIGHT,
        LIGHT,
        THIN,
        BOOK,
        MEDIUM,
        DEMI,
        BOLD,
        HEAVY,
        BLACK,
        NORD
    }

    /* loaded from: classes12.dex */
    public enum PanoseXHeight {
        ANY,
        NO_FIT,
        CONSTANT_SMALL,
        CONSTANT_STD,
        CONSTANT_LARGE,
        DUCKING_SMALL,
        DUCKING_STD,
        DUCKING_LARGE
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.eotSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.fontDataSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$10() {
        return Integer.valueOf(this.checkSumAdjustment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this.version);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$3() {
        return Integer.valueOf(this.fsType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Integer.valueOf(this.unicodeRange1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return Integer.valueOf(this.unicodeRange2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$6() {
        return Integer.valueOf(this.unicodeRange3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$7() {
        return Integer.valueOf(this.unicodeRange4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$8() {
        return Integer.valueOf(this.codePageRange1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$9() {
        return Integer.valueOf(this.codePageRange2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseArmStyle$17() {
        return Byte.valueOf(this.panose[6]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseContrast$15() {
        return Byte.valueOf(this.panose[4]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseFamily$11() {
        return Byte.valueOf(this.panose[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseLetterForm$18() {
        return Byte.valueOf(this.panose[7]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseMidLine$19() {
        return Byte.valueOf(this.panose[8]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseProportion$14() {
        return Byte.valueOf(this.panose[3]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseSerif$12() {
        return Byte.valueOf(this.panose[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseStroke$16() {
        return Byte.valueOf(this.panose[5]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseWeight$13() {
        return Byte.valueOf(this.panose[2]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getPanoseXHeight$20() {
        return Byte.valueOf(this.panose[9]);
    }

    private String readName(LittleEndianInput littleEndianInput) {
        littleEndianInput.readShort();
        int readUShort = littleEndianInput.readUShort();
        byte[] safelyAllocate = IOUtils.safelyAllocate(readUShort, 1000);
        littleEndianInput.readFully(safelyAllocate);
        return new String(safelyAllocate, 0, readUShort, StandardCharsets.UTF_16LE).trim();
    }

    public InputStream bufferInit(InputStream inputStream) throws IOException {
        LittleEndianInputStream littleEndianInputStream = new LittleEndianInputStream(inputStream);
        littleEndianInputStream.mark(1000);
        init(littleEndianInputStream);
        littleEndianInputStream.reset();
        return littleEndianInputStream;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontCharset getCharset() {
        return FontCharset.valueOf(getCharsetByte());
    }

    public byte getCharsetByte() {
        return this.charset;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontFamily getFamily() {
        int i = C194171.f111314xbb5dc581[getPanoseFamily().ordinal()];
        if (i == 1 || i == 2) {
            return FontFamily.FF_DONTCARE;
        }
        if (i != 3) {
            return i != 5 ? i != 6 ? FontFamily.FF_DECORATIVE : FontFamily.FF_MODERN : FontFamily.FF_SCRIPT;
        }
        switch (C194171.f111315x1f8a8fc0[getPanoseSerif().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return FontFamily.FF_SWISS;
            default:
                return FontFamily.FF_ROMAN;
        }
    }

    public String getFamilyName() {
        return this.familyName;
    }

    public int getFlags() {
        return this.flags;
    }

    public String getFullName() {
        return this.fullName;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("eotSize", new Supplier() { // from class: com.sunia.HTREnginev2.lqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = FontHeader.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
        linkedHashMap.put("fontDataSize", new Supplier() { // from class: com.sunia.HTREnginev2.dqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = FontHeader.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
        linkedHashMap.put("version", new Supplier() { // from class: com.sunia.HTREnginev2.oqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = FontHeader.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
        linkedHashMap.put("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.pqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FontHeader.this.getFlags());
            }
        }, FLAGS_MASKS, FLAGS_NAMES));
        linkedHashMap.put("panose.familyType", new Supplier() { // from class: com.sunia.HTREnginev2.qqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseFamily();
            }
        });
        linkedHashMap.put("panose.serifType", new Supplier() { // from class: com.sunia.HTREnginev2.rqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseSerif();
            }
        });
        linkedHashMap.put("panose.weight", new Supplier() { // from class: com.sunia.HTREnginev2.sqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseWeight();
            }
        });
        linkedHashMap.put("panose.proportion", new Supplier() { // from class: com.sunia.HTREnginev2.tqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseProportion();
            }
        });
        linkedHashMap.put("panose.contrast", new Supplier() { // from class: com.sunia.HTREnginev2.uqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseContrast();
            }
        });
        linkedHashMap.put("panose.stroke", new Supplier() { // from class: com.sunia.HTREnginev2.vqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseStroke();
            }
        });
        linkedHashMap.put("panose.armStyle", new Supplier() { // from class: com.sunia.HTREnginev2.wqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseArmStyle();
            }
        });
        linkedHashMap.put("panose.letterForm", new Supplier() { // from class: com.sunia.HTREnginev2.grg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseLetterForm();
            }
        });
        linkedHashMap.put("panose.midLine", new Supplier() { // from class: com.sunia.HTREnginev2.hrg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseMidLine();
            }
        });
        linkedHashMap.put("panose.xHeight", new Supplier() { // from class: com.sunia.HTREnginev2.irg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getPanoseXHeight();
            }
        });
        linkedHashMap.put("charset", new Supplier() { // from class: com.sunia.HTREnginev2.jrg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getCharset();
            }
        });
        linkedHashMap.put("italic", new Supplier() { // from class: com.sunia.HTREnginev2.krg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(FontHeader.this.isItalic());
            }
        });
        linkedHashMap.put("weight", new Supplier() { // from class: com.sunia.HTREnginev2.lrg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FontHeader.this.getWeight());
            }
        });
        linkedHashMap.put("fsType", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.mrg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = FontHeader.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, FSTYPE_MASKS, FSTYPE_NAMES));
        linkedHashMap.put("unicodeRange1", new Supplier() { // from class: com.sunia.HTREnginev2.bqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = FontHeader.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        });
        linkedHashMap.put("unicodeRange2", new Supplier() { // from class: com.sunia.HTREnginev2.cqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = FontHeader.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
        linkedHashMap.put("unicodeRange3", new Supplier() { // from class: com.sunia.HTREnginev2.eqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$6;
                lambda$getGenericProperties$6 = FontHeader.this.lambda$getGenericProperties$6();
                return lambda$getGenericProperties$6;
            }
        });
        linkedHashMap.put("unicodeRange4", new Supplier() { // from class: com.sunia.HTREnginev2.fqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$7;
                lambda$getGenericProperties$7 = FontHeader.this.lambda$getGenericProperties$7();
                return lambda$getGenericProperties$7;
            }
        });
        linkedHashMap.put("codePageRange1", new Supplier() { // from class: com.sunia.HTREnginev2.gqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$8;
                lambda$getGenericProperties$8 = FontHeader.this.lambda$getGenericProperties$8();
                return lambda$getGenericProperties$8;
            }
        });
        linkedHashMap.put("codePageRange2", new Supplier() { // from class: com.sunia.HTREnginev2.hqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$9;
                lambda$getGenericProperties$9 = FontHeader.this.lambda$getGenericProperties$9();
                return lambda$getGenericProperties$9;
            }
        });
        linkedHashMap.put("checkSumAdjustment", new Supplier() { // from class: com.sunia.HTREnginev2.iqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$10;
                lambda$getGenericProperties$10 = FontHeader.this.lambda$getGenericProperties$10();
                return lambda$getGenericProperties$10;
            }
        });
        linkedHashMap.put("familyName", new Supplier() { // from class: com.sunia.HTREnginev2.jqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getFamilyName();
            }
        });
        linkedHashMap.put("styleName", new Supplier() { // from class: com.sunia.HTREnginev2.kqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getStyleName();
            }
        });
        linkedHashMap.put("versionName", new Supplier() { // from class: com.sunia.HTREnginev2.mqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getVersionName();
            }
        });
        linkedHashMap.put("fullName", new Supplier() { // from class: com.sunia.HTREnginev2.nqg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontHeader.this.getFullName();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public byte[] getPanose() {
        return this.panose;
    }

    public PanoseArmStyle getPanoseArmStyle() {
        return (PanoseArmStyle) GenericRecordUtil.safeEnum(PanoseArmStyle.values(), new Supplier() { // from class: com.sunia.HTREnginev2.frg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseArmStyle$17;
                lambda$getPanoseArmStyle$17 = FontHeader.this.lambda$getPanoseArmStyle$17();
                return lambda$getPanoseArmStyle$17;
            }
        }).get();
    }

    public PanoseContrast getPanoseContrast() {
        return (PanoseContrast) GenericRecordUtil.safeEnum(PanoseContrast.values(), new Supplier() { // from class: com.sunia.HTREnginev2.erg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseContrast$15;
                lambda$getPanoseContrast$15 = FontHeader.this.lambda$getPanoseContrast$15();
                return lambda$getPanoseContrast$15;
            }
        }).get();
    }

    public PanoseFamily getPanoseFamily() {
        return (PanoseFamily) GenericRecordUtil.safeEnum(PanoseFamily.values(), new Supplier() { // from class: com.sunia.HTREnginev2.zqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseFamily$11;
                lambda$getPanoseFamily$11 = FontHeader.this.lambda$getPanoseFamily$11();
                return lambda$getPanoseFamily$11;
            }
        }).get();
    }

    public PanoseLetterForm getPanoseLetterForm() {
        return (PanoseLetterForm) GenericRecordUtil.safeEnum(PanoseLetterForm.values(), new Supplier() { // from class: com.sunia.HTREnginev2.yqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseLetterForm$18;
                lambda$getPanoseLetterForm$18 = FontHeader.this.lambda$getPanoseLetterForm$18();
                return lambda$getPanoseLetterForm$18;
            }
        }).get();
    }

    public PanoseMidLine getPanoseMidLine() {
        return (PanoseMidLine) GenericRecordUtil.safeEnum(PanoseMidLine.values(), new Supplier() { // from class: com.sunia.HTREnginev2.crg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseMidLine$19;
                lambda$getPanoseMidLine$19 = FontHeader.this.lambda$getPanoseMidLine$19();
                return lambda$getPanoseMidLine$19;
            }
        }).get();
    }

    public PanoseProportion getPanoseProportion() {
        return (PanoseProportion) GenericRecordUtil.safeEnum(PanoseProportion.values(), new Supplier() { // from class: com.sunia.HTREnginev2.drg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseProportion$14;
                lambda$getPanoseProportion$14 = FontHeader.this.lambda$getPanoseProportion$14();
                return lambda$getPanoseProportion$14;
            }
        }).get();
    }

    public PanoseSerif getPanoseSerif() {
        return (PanoseSerif) GenericRecordUtil.safeEnum(PanoseSerif.values(), new Supplier() { // from class: com.sunia.HTREnginev2.xqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseSerif$12;
                lambda$getPanoseSerif$12 = FontHeader.this.lambda$getPanoseSerif$12();
                return lambda$getPanoseSerif$12;
            }
        }).get();
    }

    public PanoseStroke getPanoseStroke() {
        return (PanoseStroke) GenericRecordUtil.safeEnum(PanoseStroke.values(), new Supplier() { // from class: com.sunia.HTREnginev2.aqg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseStroke$16;
                lambda$getPanoseStroke$16 = FontHeader.this.lambda$getPanoseStroke$16();
                return lambda$getPanoseStroke$16;
            }
        }).get();
    }

    public PanoseWeight getPanoseWeight() {
        return (PanoseWeight) GenericRecordUtil.safeEnum(PanoseWeight.values(), new Supplier() { // from class: com.sunia.HTREnginev2.brg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseWeight$13;
                lambda$getPanoseWeight$13 = FontHeader.this.lambda$getPanoseWeight$13();
                return lambda$getPanoseWeight$13;
            }
        }).get();
    }

    public PanoseXHeight getPanoseXHeight() {
        return (PanoseXHeight) GenericRecordUtil.safeEnum(PanoseXHeight.values(), new Supplier() { // from class: com.sunia.HTREnginev2.arg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getPanoseXHeight$20;
                lambda$getPanoseXHeight$20 = FontHeader.this.lambda$getPanoseXHeight$20();
                return lambda$getPanoseXHeight$20;
            }
        }).get();
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontPitch getPitch() {
        int i = C194171.f111314xbb5dc581[getPanoseFamily().ordinal()];
        if (i == 3 || i == 4) {
            return getPanoseProportion() == PanoseProportion.MONOSPACED ? FontPitch.FIXED : FontPitch.VARIABLE;
        }
        if ((i == 5 || i == 6) && getPanoseProportion() == PanoseProportion.MODERN) {
            return FontPitch.FIXED;
        }
        return FontPitch.VARIABLE;
    }

    public String getStyleName() {
        return this.styleName;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public String getTypeface() {
        return getFamilyName();
    }

    public String getVersionName() {
        return this.versionName;
    }

    public int getWeight() {
        return this.weight;
    }

    public void init(byte[] bArr, int i, int i2) {
        init(new LittleEndianByteArrayInputStream(bArr, i, i2));
    }

    public boolean isBold() {
        return getWeight() > 400;
    }

    public boolean isItalic() {
        return this.italic != 0;
    }

    public void init(LittleEndianInput littleEndianInput) {
        this.eotSize = littleEndianInput.readInt();
        this.fontDataSize = littleEndianInput.readInt();
        int readInt = littleEndianInput.readInt();
        this.version = readInt;
        if (readInt != 65536 && readInt != 131073 && readInt != 131074) {
            throw new IllegalStateException("not a EOT font data stream");
        }
        this.flags = littleEndianInput.readInt();
        littleEndianInput.readFully(this.panose);
        this.charset = littleEndianInput.readByte();
        this.italic = littleEndianInput.readByte();
        this.weight = littleEndianInput.readInt();
        this.fsType = littleEndianInput.readUShort();
        int readUShort = littleEndianInput.readUShort();
        this.magic = readUShort;
        if (readUShort == 20556) {
            this.unicodeRange1 = littleEndianInput.readInt();
            this.unicodeRange2 = littleEndianInput.readInt();
            this.unicodeRange3 = littleEndianInput.readInt();
            this.unicodeRange4 = littleEndianInput.readInt();
            this.codePageRange1 = littleEndianInput.readInt();
            this.codePageRange2 = littleEndianInput.readInt();
            this.checkSumAdjustment = littleEndianInput.readInt();
            littleEndianInput.readInt();
            littleEndianInput.readInt();
            littleEndianInput.readInt();
            littleEndianInput.readInt();
            this.familyName = readName(littleEndianInput);
            this.styleName = readName(littleEndianInput);
            this.versionName = readName(littleEndianInput);
            this.fullName = readName(littleEndianInput);
            return;
        }
        throw new IllegalStateException("not a EOT font data stream");
    }
}
