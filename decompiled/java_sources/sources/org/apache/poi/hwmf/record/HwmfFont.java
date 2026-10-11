package org.apache.poi.hwmf.record;

import java.awt.Font;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.common.usermodel.fonts.FontFamily;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.common.usermodel.fonts.FontPitch;
import org.apache.poi.hwmf.record.HwmfFont;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfFont implements FontInfo, GenericRecord {
    protected FontCharset charSet;
    protected final WmfClipPrecision clipPrecision = new WmfClipPrecision();
    protected int escapement;
    protected String facename;
    protected FontFamily family;
    protected double height;
    protected boolean italic;
    protected int orientation;
    protected WmfOutPrecision outPrecision;
    protected FontPitch pitch;
    protected int pitchAndFamily;
    protected WmfFontQuality quality;
    protected boolean strikeOut;
    protected boolean underline;
    protected int weight;
    protected int width;

    /* loaded from: classes12.dex */
    public static class WmfClipPrecision implements GenericRecord {
        private int flag;
        private static final BitField DEFAULT_PRECIS = BitFieldFactory.getInstance(3);
        private static final BitField CHARACTER_PRECIS = BitFieldFactory.getInstance(1);
        private static final BitField STROKE_PRECIS = BitFieldFactory.getInstance(2);
        private static final BitField LH_ANGLES = BitFieldFactory.getInstance(16);
        private static final BitField TT_ALWAYS = BitFieldFactory.getInstance(32);
        private static final BitField DFA_DISABLE = BitFieldFactory.getInstance(64);
        private static final BitField EMBEDDED = BitFieldFactory.getInstance(128);
        private static final int[] FLAG_MASKS = {1, 2, 16, 32, 64, 128};
        private static final String[] FLAG_NAMES = {"CHARACTER_PRECIS", "STROKE_PRECIS", "LH_ANGLES", "TT_ALWAYS", "DFA_DISABLE", "EMBEDDED"};

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Number lambda$getGenericProperties$0() {
            return Integer.valueOf(this.flag);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("isDefaultPrecision", new Supplier() { // from class: com.sunia.HTREnginev2.y4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Boolean.valueOf(HwmfFont.WmfClipPrecision.this.isDefaultPrecision());
                }
            }, "flag", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.z4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Number lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfFont.WmfClipPrecision.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, FLAG_MASKS, FLAG_NAMES));
        }

        public int init(LittleEndianInputStream littleEndianInputStream) {
            this.flag = littleEndianInputStream.readUByte();
            return 1;
        }

        public boolean isCharacterPrecision() {
            return CHARACTER_PRECIS.isSet(this.flag);
        }

        public boolean isDefaultPrecision() {
            return !DEFAULT_PRECIS.isSet(this.flag);
        }

        public boolean isFontAssociated() {
            return !DFA_DISABLE.isSet(this.flag);
        }

        public boolean isLeftHandAngles() {
            return LH_ANGLES.isSet(this.flag);
        }

        public boolean isStrokePrecision() {
            return STROKE_PRECIS.isSet(this.flag);
        }

        public boolean isTrueTypeAlways() {
            return TT_ALWAYS.isSet(this.flag);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        public boolean useEmbeddedFont() {
            return EMBEDDED.isSet(this.flag);
        }
    }

    /* loaded from: classes12.dex */
    public enum WmfFontQuality {
        DEFAULT_QUALITY(0),
        DRAFT_QUALITY(1),
        PROOF_QUALITY(2),
        NONANTIALIASED_QUALITY(3),
        ANTIALIASED_QUALITY(4),
        CLEARTYPE_QUALITY(5);

        int flag;

        WmfFontQuality(int i) {
            this.flag = i;
        }

        public static WmfFontQuality valueOf(int i) {
            for (WmfFontQuality wmfFontQuality : values()) {
                if (wmfFontQuality.flag == i) {
                    return wmfFontQuality;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum WmfOutPrecision {
        OUT_DEFAULT_PRECIS(0),
        OUT_STRING_PRECIS(1),
        OUT_STROKE_PRECIS(3),
        OUT_TT_PRECIS(4),
        OUT_DEVICE_PRECIS(5),
        OUT_RASTER_PRECIS(6),
        OUT_TT_ONLY_PRECIS(7),
        OUT_OUTLINE_PRECIS(8),
        OUT_SCREEN_OUTLINE_PRECIS(9),
        OUT_PS_ONLY_PRECIS(10);

        int flag;

        WmfOutPrecision(int i) {
            this.flag = i;
        }

        public static WmfOutPrecision valueOf(int i) {
            for (WmfOutPrecision wmfOutPrecision : values()) {
                if (wmfOutPrecision.flag == i) {
                    return wmfOutPrecision;
                }
            }
            return null;
        }
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontCharset getCharset() {
        return this.charSet;
    }

    public WmfClipPrecision getClipPrecision() {
        return this.clipPrecision;
    }

    public int getEscapement() {
        return this.escapement;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontFamily getFamily() {
        return FontFamily.valueOf(this.pitchAndFamily & 15);
    }

    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("height", new Supplier() { // from class: com.sunia.HTREnginev2.k4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return Double.valueOf(HwmfFont.this.getHeight());
            }
        });
        linkedHashMap.put("width", new Supplier() { // from class: com.sunia.HTREnginev2.t4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HwmfFont.this.getWidth());
            }
        });
        linkedHashMap.put("escapment", new Supplier() { // from class: com.sunia.HTREnginev2.u4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HwmfFont.this.getEscapement());
            }
        });
        linkedHashMap.put("weight", new Supplier() { // from class: com.sunia.HTREnginev2.v4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HwmfFont.this.getWeight());
            }
        });
        linkedHashMap.put("italic", new Supplier() { // from class: com.sunia.HTREnginev2.w4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(HwmfFont.this.isItalic());
            }
        });
        linkedHashMap.put("underline", new Supplier() { // from class: com.sunia.HTREnginev2.x4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(HwmfFont.this.isUnderline());
            }
        });
        linkedHashMap.put("strikeOut", new Supplier() { // from class: com.sunia.HTREnginev2.l4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(HwmfFont.this.isStrikeOut());
            }
        });
        linkedHashMap.put("charset", new Supplier() { // from class: com.sunia.HTREnginev2.m4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfFont.this.getCharset();
            }
        });
        linkedHashMap.put("outPrecision", new Supplier() { // from class: com.sunia.HTREnginev2.n4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfFont.this.getOutPrecision();
            }
        });
        linkedHashMap.put("clipPrecision", new Supplier() { // from class: com.sunia.HTREnginev2.o4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfFont.this.getClipPrecision();
            }
        });
        linkedHashMap.put("quality", new Supplier() { // from class: com.sunia.HTREnginev2.p4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfFont.this.getQuality();
            }
        });
        linkedHashMap.put("pitch", new Supplier() { // from class: com.sunia.HTREnginev2.q4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfFont.this.getPitch();
            }
        });
        linkedHashMap.put("family", new Supplier() { // from class: com.sunia.HTREnginev2.r4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfFont.this.getFamily();
            }
        });
        linkedHashMap.put("typeface", new Supplier() { // from class: com.sunia.HTREnginev2.s4i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfFont.this.getTypeface();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public double getHeight() {
        return this.height;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public WmfOutPrecision getOutPrecision() {
        return this.outPrecision;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontPitch getPitch() {
        return FontPitch.valueOf((this.pitchAndFamily >>> 6) & 3);
    }

    public int getPitchAndFamily() {
        return this.pitchAndFamily;
    }

    public WmfFontQuality getQuality() {
        return this.quality;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public String getTypeface() {
        return this.facename;
    }

    public int getWeight() {
        return this.weight;
    }

    public int getWidth() {
        return this.width;
    }

    public int init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
        this.height = littleEndianInputStream.readShort();
        this.width = littleEndianInputStream.readShort();
        this.escapement = littleEndianInputStream.readShort();
        this.orientation = littleEndianInputStream.readShort();
        this.weight = littleEndianInputStream.readShort();
        this.italic = littleEndianInputStream.readByte() != 0;
        this.underline = littleEndianInputStream.readByte() != 0;
        this.strikeOut = littleEndianInputStream.readByte() != 0;
        this.charSet = FontCharset.valueOf(littleEndianInputStream.readUByte());
        this.outPrecision = WmfOutPrecision.valueOf(littleEndianInputStream.readUByte());
        this.clipPrecision.init(littleEndianInputStream);
        this.quality = WmfFontQuality.valueOf(littleEndianInputStream.readUByte());
        this.pitchAndFamily = littleEndianInputStream.readUByte();
        StringBuilder sb = new StringBuilder();
        FontCharset fontCharset = this.charSet;
        int readString = readString(littleEndianInputStream, sb, 32, fontCharset == null ? null : fontCharset.getCharset());
        if (readString == -1) {
            throw new IOException("Font facename can't be determined.");
        }
        this.facename = sb.toString();
        return readString + 18;
    }

    public void initDefaults() {
        this.height = -12.0d;
        this.width = 0;
        this.escapement = 0;
        this.weight = 400;
        this.italic = false;
        this.underline = false;
        this.strikeOut = false;
        this.charSet = FontCharset.ANSI;
        this.outPrecision = WmfOutPrecision.OUT_DEFAULT_PRECIS;
        this.quality = WmfFontQuality.ANTIALIASED_QUALITY;
        this.pitchAndFamily = FontFamily.FF_DONTCARE.getFlag() | (FontPitch.DEFAULT.getNativeId() << 6);
        this.facename = Font.SANS_SERIF;
    }

    public boolean isItalic() {
        return this.italic;
    }

    public boolean isStrikeOut() {
        return this.strikeOut;
    }

    public boolean isUnderline() {
        return this.underline;
    }

    public int readString(LittleEndianInputStream littleEndianInputStream, StringBuilder sb, int i) {
        return readString(littleEndianInputStream, sb, i, StandardCharsets.ISO_8859_1);
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    public int readString(LittleEndianInputStream littleEndianInputStream, StringBuilder sb, int i, Charset charset) {
        byte[] bArr = new byte[i];
        byte b = 0;
        while (b != i) {
            byte b2 = (byte) (b + 1);
            byte readByte = littleEndianInputStream.readByte();
            bArr[b] = readByte;
            if (readByte == 0 || readByte == -1 || b2 > i) {
                int i2 = b2 - 1;
                if (charset == null) {
                    charset = StandardCharsets.ISO_8859_1;
                }
                sb.append(new String(bArr, 0, i2, charset));
                return b2;
            }
            b = b2;
        }
        return -1;
    }
}
