package org.apache.poi.hwmf.record;

import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.draw.HwmfDrawProperties;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfText;
import org.apache.poi.hwmf.usermodel.HwmfCharsetAware;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.LocaleUtil;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes12.dex */
public class HwmfText {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HwmfText.class);
    private static int MAX_RECORD_LENGTH = 1000000;

    /* renamed from: org.apache.poi.hwmf.record.HwmfText$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195531 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment;

        /* renamed from: $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextVerticalAlignment */
        static final /* synthetic */ int[] f111442x47e0da30;

        static {
            int[] iArr = new int[HwmfTextAlignment.values().length];
            $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment = iArr;
            try {
                iArr[HwmfTextAlignment.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment[HwmfTextAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment[HwmfTextAlignment.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[HwmfTextVerticalAlignment.values().length];
            f111442x47e0da30 = iArr2;
            try {
                iArr2[HwmfTextVerticalAlignment.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111442x47e0da30[HwmfTextVerticalAlignment.BASELINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111442x47e0da30[HwmfTextVerticalAlignment.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum HwmfTextAlignment {
        LEFT,
        RIGHT,
        CENTER
    }

    /* loaded from: classes12.dex */
    public enum HwmfTextVerticalAlignment {
        TOP,
        BOTTOM,
        BASELINE
    }

    /* loaded from: classes12.dex */
    public static class WmfCreateFontIndirect implements HwmfRecord, HwmfObjectTableEntry {
        protected final HwmfFont font;

        public WmfCreateFontIndirect() {
            this(new HwmfFont());
        }

        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.getProperties().setFont(this.font);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.addObjectTableEntry(this);
        }

        public HwmfFont getFont() {
            return this.font;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("font", new Supplier() { // from class: com.sunia.HTREnginev2.v9i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfText.WmfCreateFontIndirect.this.getFont();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.createFontIndirect;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return this.font.init(littleEndianInputStream, j);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        public WmfCreateFontIndirect(HwmfFont hwmfFont) {
            this.font = hwmfFont;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfExtTextOut implements HwmfRecord, HwmfCharsetAware {
        protected final Rectangle2D bounds;
        protected Supplier<Charset> charsetProvider;

        /* renamed from: dx */
        protected final List<Integer> f111443dx;
        protected final WmfExtTextOutOptions options;
        protected byte[] rawTextBytes;
        protected final Point2D reference;
        protected int stringLength;

        public WmfExtTextOut() {
            this(new WmfExtTextOutOptions());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getGenericText() {
            try {
                return getText(isUnicode() ? StandardCharsets.UTF_16LE : this.charsetProvider.get());
            } catch (IOException unused) {
                return "";
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return this.f111443dx;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.setCharsetProvider(this.charsetProvider);
            hwmfGraphics.drawString(this.rawTextBytes, this.stringLength, this.reference, null, this.bounds, this.options, this.f111443dx, false);
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(Name.REFER, new Supplier() { // from class: com.sunia.HTREnginev2.x9i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfText.WmfExtTextOut.this.getReference();
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.y9i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfText.WmfExtTextOut.this.getBounds();
                }
            }, "options", new Supplier() { // from class: com.sunia.HTREnginev2.z9i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfText.WmfExtTextOut.this.getOptions();
                }
            }, "text", new Supplier() { // from class: com.sunia.HTREnginev2.aai
                @Override // java.util.function.Supplier
                public final Object get() {
                    String genericText;
                    genericText = HwmfText.WmfExtTextOut.this.getGenericText();
                    return genericText;
                }
            }, "dx", new Supplier() { // from class: com.sunia.HTREnginev2.bai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HwmfText.WmfExtTextOut.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
        }

        public WmfExtTextOutOptions getOptions() {
            return this.options;
        }

        public Point2D getReference() {
            return this.reference;
        }

        public String getText(Charset charset) throws IOException {
            byte[] bArr = this.rawTextBytes;
            if (bArr == null) {
                return "";
            }
            String str = new String(bArr, charset);
            return str.substring(0, Math.min(str.length(), this.stringLength));
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.extTextOut;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            int i2 = (int) (j - 6);
            int readPointS = HwmfDraw.readPointS(littleEndianInputStream, this.reference);
            this.stringLength = littleEndianInputStream.readShort();
            int init = readPointS + 2 + this.options.init(littleEndianInputStream);
            if ((this.options.isOpaque() || this.options.isClipped()) && init + 8 <= i2) {
                init += HwmfDraw.readRectS(littleEndianInputStream, this.bounds);
            }
            byte[] safelyAllocate = IOUtils.safelyAllocate(this.stringLength + (r8 & 1), HwmfText.MAX_RECORD_LENGTH);
            this.rawTextBytes = safelyAllocate;
            littleEndianInputStream.readFully(safelyAllocate);
            int length = init + this.rawTextBytes.length;
            if (length >= i2) {
                HwmfText.LOG.atInfo().log("META_EXTTEXTOUT doesn't contain character tracking info");
                return length;
            }
            int min = Math.min(this.stringLength, (i2 - length) / 2);
            if (min < this.stringLength) {
                HwmfText.LOG.atWarn().log("META_EXTTEXTOUT tracking info doesn't cover all characters");
            }
            for (int i3 = 0; i3 < min; i3++) {
                this.f111443dx.add(Integer.valueOf(littleEndianInputStream.readShort()));
                length += 2;
            }
            return length;
        }

        public boolean isUnicode() {
            return false;
        }

        @Override // org.apache.poi.hwmf.usermodel.HwmfCharsetAware
        public void setCharsetProvider(Supplier<Charset> supplier) {
            this.charsetProvider = supplier;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        public WmfExtTextOut(WmfExtTextOutOptions wmfExtTextOutOptions) {
            this.reference = new Point2D.Double();
            this.bounds = new Rectangle2D.Double();
            this.f111443dx = new ArrayList();
            this.charsetProvider = new Supplier() { // from class: com.sunia.HTREnginev2.w9i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Charset charset;
                    charset = LocaleUtil.CHARSET_1252;
                    return charset;
                }
            };
            this.options = wmfExtTextOutOptions;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfExtTextOutOptions implements GenericRecord {
        protected int flags;
        private static final BitField ETO_OPAQUE = BitFieldFactory.getInstance(2);
        private static final BitField ETO_CLIPPED = BitFieldFactory.getInstance(4);
        private static final BitField ETO_GLYPH_INDEX = BitFieldFactory.getInstance(16);
        private static final BitField ETO_RTLREADING = BitFieldFactory.getInstance(128);
        private static final BitField ETO_NO_RECT = BitFieldFactory.getInstance(256);
        private static final BitField ETO_SMALL_CHARS = BitFieldFactory.getInstance(512);
        private static final BitField ETO_NUMERICSLOCAL = BitFieldFactory.getInstance(1024);
        private static final BitField ETO_NUMERICSLATIN = BitFieldFactory.getInstance(2048);
        private static final BitField ETO_IGNORELANGUAGE = BitFieldFactory.getInstance(4096);
        private static final BitField ETO_PDY = BitFieldFactory.getInstance(8192);
        private static final BitField ETO_REVERSE_INDEX_MAP = BitFieldFactory.getInstance(65536);
        private static final int[] FLAGS_MASKS = {2, 4, 16, 128, 256, 512, 1024, 2048, 4096, 8192, 65536};
        private static final String[] FLAGS_NAMES = {"OPAQUE", "CLIPPED", "GLYPH_INDEX", "RTLREADING", "NO_RECT", "SMALL_CHARS", "NUMERICSLOCAL", "NUMERICSLATIN", "IGNORELANGUAGE", "PDY", "REVERSE_INDEX_MAP"};

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Number lambda$getGenericProperties$0() {
            return Integer.valueOf(this.flags);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.cai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Number lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfText.WmfExtTextOutOptions.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, FLAGS_MASKS, FLAGS_NAMES));
        }

        public int init(LittleEndianInputStream littleEndianInputStream) {
            this.flags = littleEndianInputStream.readUShort();
            return 2;
        }

        public int initInt(LittleEndianInputStream littleEndianInputStream) {
            this.flags = littleEndianInputStream.readInt();
            return 4;
        }

        public boolean isClipped() {
            return ETO_CLIPPED.isSet(this.flags);
        }

        public boolean isOpaque() {
            return ETO_OPAQUE.isSet(this.flags);
        }

        public boolean isYDisplaced() {
            return ETO_PDY.isSet(this.flags);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetTextAlign implements HwmfRecord {
        private static final int ALIGN_CENTER = 3;
        private static final int ALIGN_LEFT = 0;
        private static final int ALIGN_RIGHT = 1;
        private static final int VALIGN_BASELINE = 3;
        private static final int VALIGN_BOTTOM = 1;
        private static final int VALIGN_TOP = 0;
        protected int textAlignmentMode;
        private static final BitField TA_UPDATECP = BitFieldFactory.getInstance(1);
        private static final BitField TA_RTLREADING = BitFieldFactory.getInstance(256);
        private static final BitField ALIGN_MASK = BitFieldFactory.getInstance(6);
        private static final BitField VALIGN_MASK = BitFieldFactory.getInstance(24);

        /* JADX INFO: Access modifiers changed from: private */
        public HwmfTextAlignment getAlignAsian() {
            int i = C195531.f111442x47e0da30[getVAlignLatin().ordinal()];
            return i != 2 ? i != 3 ? HwmfTextAlignment.RIGHT : HwmfTextAlignment.LEFT : HwmfTextAlignment.CENTER;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public HwmfTextAlignment getAlignLatin() {
            int value = ALIGN_MASK.getValue(this.textAlignmentMode);
            return value != 1 ? value != 3 ? HwmfTextAlignment.LEFT : HwmfTextAlignment.CENTER : HwmfTextAlignment.RIGHT;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public HwmfTextVerticalAlignment getVAlignAsian() {
            int i = C195531.$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment[getAlignLatin().ordinal()];
            return i != 2 ? i != 3 ? HwmfTextVerticalAlignment.TOP : HwmfTextVerticalAlignment.BOTTOM : HwmfTextVerticalAlignment.BASELINE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public HwmfTextVerticalAlignment getVAlignLatin() {
            int value = VALIGN_MASK.getValue(this.textAlignmentMode);
            return value != 1 ? value != 3 ? HwmfTextVerticalAlignment.TOP : HwmfTextVerticalAlignment.BASELINE : HwmfTextVerticalAlignment.BOTTOM;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            properties.setTextAlignLatin(getAlignLatin());
            properties.setTextVAlignLatin(getVAlignLatin());
            properties.setTextAlignAsian(getAlignAsian());
            properties.setTextVAlignAsian(getVAlignAsian());
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("align", new Supplier() { // from class: com.sunia.HTREnginev2.dai
                @Override // java.util.function.Supplier
                public final Object get() {
                    HwmfText.HwmfTextAlignment alignLatin;
                    alignLatin = HwmfText.WmfSetTextAlign.this.getAlignLatin();
                    return alignLatin;
                }
            }, "valign", new Supplier() { // from class: com.sunia.HTREnginev2.eai
                @Override // java.util.function.Supplier
                public final Object get() {
                    HwmfText.HwmfTextVerticalAlignment vAlignLatin;
                    vAlignLatin = HwmfText.WmfSetTextAlign.this.getVAlignLatin();
                    return vAlignLatin;
                }
            }, "alignAsian", new Supplier() { // from class: com.sunia.HTREnginev2.fai
                @Override // java.util.function.Supplier
                public final Object get() {
                    HwmfText.HwmfTextAlignment alignAsian;
                    alignAsian = HwmfText.WmfSetTextAlign.this.getAlignAsian();
                    return alignAsian;
                }
            }, "valignAsian", new Supplier() { // from class: com.sunia.HTREnginev2.gai
                @Override // java.util.function.Supplier
                public final Object get() {
                    HwmfText.HwmfTextVerticalAlignment vAlignAsian;
                    vAlignAsian = HwmfText.WmfSetTextAlign.this.getVAlignAsian();
                    return vAlignAsian;
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setTextAlign;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.textAlignmentMode = littleEndianInputStream.readUShort();
            return 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetTextCharExtra implements HwmfRecord {
        private int charExtra;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.charExtra);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("charExtra", new Supplier() { // from class: com.sunia.HTREnginev2.hai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfText.WmfSetTextCharExtra.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setTextCharExtra;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.charExtra = littleEndianInputStream.readUShort();
            return 2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetTextColor implements HwmfRecord {
        protected final HwmfColorRef colorRef = new HwmfColorRef();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.getProperties().setTextColor(this.colorRef);
        }

        public HwmfColorRef getColorRef() {
            return this.colorRef;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("colorRef", new Supplier() { // from class: com.sunia.HTREnginev2.iai
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfText.WmfSetTextColor.this.getColorRef();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setTextColor;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return this.colorRef.init(littleEndianInputStream);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetTextJustification implements HwmfRecord {
        private int breakCount;
        private int breakExtra;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.breakCount);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this.breakExtra);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("breakCount", new Supplier() { // from class: com.sunia.HTREnginev2.jai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfText.WmfSetTextJustification.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "breakExtra", new Supplier() { // from class: com.sunia.HTREnginev2.kai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HwmfText.WmfSetTextJustification.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setTextJustification;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.breakCount = littleEndianInputStream.readUShort();
            this.breakExtra = littleEndianInputStream.readUShort();
            return 4;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfTextOut implements HwmfRecord, HwmfCharsetAware {
        private byte[] rawTextBytes;
        private int stringLength;
        protected Point2D reference = new Point2D.Double();
        protected Supplier<Charset> charsetProvider = new Supplier() { // from class: com.sunia.HTREnginev2.lai
            @Override // java.util.function.Supplier
            public final Object get() {
                Charset charset;
                charset = LocaleUtil.CHARSET_1252;
                return charset;
            }
        };

        private byte[] getTextBytes() {
            return IOUtils.safelyClone(this.rawTextBytes, 0, this.stringLength, HwmfText.MAX_RECORD_LENGTH);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return getText(this.charsetProvider.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return this.reference;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.setCharsetProvider(this.charsetProvider);
            hwmfGraphics.drawString(getTextBytes(), this.stringLength, this.reference);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("text", new Supplier() { // from class: com.sunia.HTREnginev2.mai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HwmfText.WmfTextOut.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, Name.REFER, new Supplier() { // from class: com.sunia.HTREnginev2.nai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HwmfText.WmfTextOut.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
        }

        public String getText(Charset charset) {
            return new String(getTextBytes(), charset);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.textOut;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            short readShort = littleEndianInputStream.readShort();
            this.stringLength = readShort;
            byte[] safelyAllocate = IOUtils.safelyAllocate(readShort + (readShort & 1), HwmfText.MAX_RECORD_LENGTH);
            this.rawTextBytes = safelyAllocate;
            littleEndianInputStream.readFully(safelyAllocate);
            this.reference.setLocation(littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
            return this.rawTextBytes.length + 6;
        }

        @Override // org.apache.poi.hwmf.usermodel.HwmfCharsetAware
        public void setCharsetProvider(Supplier<Charset> supplier) {
            this.charsetProvider = supplier;
        }
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }
}
