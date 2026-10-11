package org.apache.poi.hwmf.record;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.sunia.HTREnginev2.gon;
import java.awt.Color;
import java.awt.geom.Dimension2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hwmf.draw.HwmfDrawProperties;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfFill;
import org.apache.poi.hwmf.record.HwmfMisc;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfMisc {

    /* renamed from: org.apache.poi.hwmf.record.HwmfMisc$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195521 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle;

        static {
            int[] iArr = new int[HwmfBrushStyle.values().length];
            $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle = iArr;
            try {
                iArr[HwmfBrushStyle.BS_SOLID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_DIBPATTERN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_DIBPATTERNPT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_HATCHED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_PATTERN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_INDEXED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_DIBPATTERN8X8.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_MONOPATTERN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_PATTERN8X8.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfCreateBrushIndirect implements HwmfRecord, HwmfObjectTableEntry {
        protected HwmfHatchStyle brushHatch;
        protected HwmfBrushStyle brushStyle;
        protected HwmfColorRef colorRef;

        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            properties.setBrushStyle(this.brushStyle);
            properties.setBrushColor(this.colorRef);
            properties.setBrushHatch(this.brushHatch);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.addObjectTableEntry(this);
        }

        public HwmfHatchStyle getBrushHatch() {
            return this.brushHatch;
        }

        public HwmfBrushStyle getBrushStyle() {
            return this.brushStyle;
        }

        public HwmfColorRef getColorRef() {
            return this.colorRef;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("brushStyle", new Supplier() { // from class: com.sunia.HTREnginev2.q5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfCreateBrushIndirect.this.getBrushStyle();
                }
            }, "colorRef", new Supplier() { // from class: com.sunia.HTREnginev2.r5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfCreateBrushIndirect.this.getColorRef();
                }
            }, "brushHatch", new Supplier() { // from class: com.sunia.HTREnginev2.s5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfCreateBrushIndirect.this.getBrushHatch();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.createBrushIndirect;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.brushStyle = HwmfBrushStyle.valueOf(littleEndianInputStream.readUShort());
            HwmfColorRef hwmfColorRef = new HwmfColorRef();
            this.colorRef = hwmfColorRef;
            int init = hwmfColorRef.init(littleEndianInputStream);
            this.brushHatch = HwmfHatchStyle.valueOf(littleEndianInputStream.readUShort());
            return init + 4;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfCreatePatternBrush implements HwmfRecord, HwmfObjectTableEntry {
        private HwmfBitmap16 pattern;

        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            properties.setBrushBitmap(this.pattern.getImage());
            properties.setBrushStyle(HwmfBrushStyle.BS_PATTERN);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.addObjectTableEntry(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("pattern", new Supplier() { // from class: com.sunia.HTREnginev2.t5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfCreatePatternBrush.this.getPattern();
                }
            });
        }

        public HwmfBitmap16 getPattern() {
            return this.pattern;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.createPatternBrush;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            HwmfBitmap16 hwmfBitmap16 = new HwmfBitmap16(true);
            this.pattern = hwmfBitmap16;
            return hwmfBitmap16.init(littleEndianInputStream);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfCreatePenIndirect implements HwmfRecord, HwmfObjectTableEntry {
        protected HwmfPenStyle penStyle;
        protected final Dimension2D dimension = new Dimension2DDouble();
        protected final HwmfColorRef colorRef = new HwmfColorRef();

        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            properties.setPenStyle(this.penStyle);
            properties.setPenColor(this.colorRef);
            properties.setPenWidth(this.dimension.getWidth());
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.addObjectTableEntry(this);
        }

        public HwmfColorRef getColorRef() {
            return this.colorRef;
        }

        public Dimension2D getDimension() {
            return this.dimension;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("penStyle", new Supplier() { // from class: com.sunia.HTREnginev2.u5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfCreatePenIndirect.this.getPenStyle();
                }
            }, TypedValues.Custom.S_DIMENSION, new Supplier() { // from class: com.sunia.HTREnginev2.v5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfCreatePenIndirect.this.getDimension();
                }
            }, "colorRef", new Supplier() { // from class: com.sunia.HTREnginev2.w5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfCreatePenIndirect.this.getColorRef();
                }
            });
        }

        public HwmfPenStyle getPenStyle() {
            return this.penStyle;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.createPenIndirect;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.penStyle = HwmfPenStyle.valueOf(littleEndianInputStream.readUShort());
            this.dimension.setSize(littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
            return this.colorRef.init(littleEndianInputStream) + 6;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfDeleteObject implements HwmfRecord {
        protected int objectIndex;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.unsetObjectTableEntry(this.objectIndex);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("objectIndex", new Supplier() { // from class: com.sunia.HTREnginev2.x5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfMisc.WmfDeleteObject.this.getObjectIndex());
                }
            });
        }

        public int getObjectIndex() {
            return this.objectIndex;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.deleteObject;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.objectIndex = littleEndianInputStream.readUShort();
            return 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfDibCreatePatternBrush implements HwmfRecord, HwmfFill.HwmfImageRecord, HwmfObjectTableEntry {
        protected HwmfFill.ColorUsage colorUsage;
        private HwmfBitmap16 pattern16;
        protected HwmfBitmapDib patternDib;
        protected HwmfBrushStyle style;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            HwmfBitmapDib hwmfBitmapDib = this.patternDib;
            return (hwmfBitmapDib == null || !hwmfBitmapDib.isValid()) ? this.pattern16 : this.patternDib;
        }

        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            HwmfBitmapDib hwmfBitmapDib = this.patternDib;
            if (hwmfBitmapDib == null || hwmfBitmapDib.isValid()) {
                HwmfDrawProperties properties = hwmfGraphics.getProperties();
                properties.setBrushStyle(this.style);
                properties.setBrushBitmap(getImage(properties.getBrushColor().getColor(), properties.getBackgroundColor().getColor(), properties.getBkMode() == WmfSetBkMode.HwmfBkMode.TRANSPARENT));
            }
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.addObjectTableEntry(this);
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.HwmfImageRecord
        public byte[] getBMPData() {
            HwmfBitmapDib hwmfBitmapDib = this.patternDib;
            if (hwmfBitmapDib == null || !hwmfBitmapDib.isValid()) {
                return null;
            }
            return this.patternDib.getBMPData();
        }

        public HwmfFill.ColorUsage getColorUsage() {
            return this.colorUsage;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("style", new Supplier() { // from class: com.sunia.HTREnginev2.y5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfDibCreatePatternBrush.this.getStyle();
                }
            }, "colorUsage", new Supplier() { // from class: com.sunia.HTREnginev2.z5i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfDibCreatePatternBrush.this.getColorUsage();
                }
            }, "pattern", new Supplier() { // from class: com.sunia.HTREnginev2.a6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfMisc.WmfDibCreatePatternBrush.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "bmpData", new Supplier() { // from class: com.sunia.HTREnginev2.b6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfDibCreatePatternBrush.this.getBMPData();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.HwmfImageRecord
        public BufferedImage getImage(Color color, Color color2, boolean z) {
            HwmfBitmapDib hwmfBitmapDib = this.patternDib;
            if (hwmfBitmapDib != null && hwmfBitmapDib.isValid()) {
                return this.patternDib.getImage(color, color2, z);
            }
            HwmfBitmap16 hwmfBitmap16 = this.pattern16;
            if (hwmfBitmap16 != null) {
                return hwmfBitmap16.getImage();
            }
            return null;
        }

        public HwmfBrushStyle getStyle() {
            return this.style;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.dibCreatePatternBrush;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.style = HwmfBrushStyle.valueOf(littleEndianInputStream.readUShort());
            this.colorUsage = HwmfFill.ColorUsage.valueOf(littleEndianInputStream.readUShort());
            switch (C195521.$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[this.style.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    HwmfBitmapDib hwmfBitmapDib = new HwmfBitmapDib();
                    this.patternDib = hwmfBitmapDib;
                    return 4 + hwmfBitmapDib.init(littleEndianInputStream, (int) ((j - 6) - 4));
                case 7:
                case 8:
                case 9:
                case 10:
                    throw new IllegalStateException("pattern not supported");
                default:
                    return 4;
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfRestoreDc implements HwmfRecord {
        protected int nSavedDC;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.restoreProperties(this.nSavedDC);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("nSavedDC", new Supplier() { // from class: com.sunia.HTREnginev2.c6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfMisc.WmfRestoreDc.this.getNSavedDC());
                }
            });
        }

        public int getNSavedDC() {
            return this.nSavedDC;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.restoreDc;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.nSavedDC = littleEndianInputStream.readShort();
            return 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSaveDc implements HwmfRecord {
        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.saveProperties();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return null;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.saveDc;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return 0;
        }

        public String toString() {
            return "{}";
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetBkColor implements HwmfRecord {
        protected final HwmfColorRef colorRef = new HwmfColorRef();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.getProperties().setBackgroundColor(this.colorRef);
        }

        public HwmfColorRef getColorRef() {
            return this.colorRef;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("colorRef", new Supplier() { // from class: com.sunia.HTREnginev2.d6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfSetBkColor.this.getColorRef();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setBkColor;
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
    public static class WmfSetBkMode implements HwmfRecord {
        protected HwmfBkMode bkMode;

        /* loaded from: classes12.dex */
        public enum HwmfBkMode {
            TRANSPARENT(1),
            OPAQUE(2);

            final int flag;

            HwmfBkMode(int i) {
                this.flag = i;
            }

            public static HwmfBkMode valueOf(int i) {
                for (HwmfBkMode hwmfBkMode : values()) {
                    if (hwmfBkMode.flag == i) {
                        return hwmfBkMode;
                    }
                }
                return null;
            }
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.getProperties().setBkMode(this.bkMode);
        }

        public HwmfBkMode getBkMode() {
            return this.bkMode;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bkMode", new Supplier() { // from class: com.sunia.HTREnginev2.e6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfSetBkMode.this.getBkMode();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setBkMode;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.bkMode = HwmfBkMode.valueOf(littleEndianInputStream.readUShort());
            return 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetLayout implements HwmfRecord {
        private int layout;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.layout);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71305w, new Supplier() { // from class: com.sunia.HTREnginev2.f6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfMisc.WmfSetLayout.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setLayout;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.layout = littleEndianInputStream.readUShort();
            littleEndianInputStream.readShort();
            return 4;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetMapMode implements HwmfRecord {
        protected HwmfMapMode mapMode;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.getProperties().setMapMode(this.mapMode);
            hwmfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("mapMode", new Supplier() { // from class: com.sunia.HTREnginev2.g6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfSetMapMode.this.getMapMode();
                }
            });
        }

        public HwmfMapMode getMapMode() {
            return this.mapMode;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setMapMode;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.mapMode = HwmfMapMode.valueOf(littleEndianInputStream.readUShort());
            return 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetMapperFlags implements HwmfRecord {
        private long mapperValues;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Long.valueOf(this.mapperValues);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("mapperValues", new Supplier() { // from class: com.sunia.HTREnginev2.h6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfMisc.WmfSetMapperFlags.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setMapperFlags;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.mapperValues = littleEndianInputStream.readUInt();
            return 4;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetRelabs implements HwmfRecord {
        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return null;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setRelabs;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return 0;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetRop2 implements HwmfRecord {
        protected HwmfBinaryRasterOp drawMode;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.getProperties().setRasterOp2(this.drawMode);
        }

        public HwmfBinaryRasterOp getDrawMode() {
            return this.drawMode;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("drawMode", new Supplier() { // from class: com.sunia.HTREnginev2.i6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfSetRop2.this.getDrawMode();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setRop2;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.drawMode = HwmfBinaryRasterOp.valueOf(littleEndianInputStream.readUShort());
            return 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetStretchBltMode implements HwmfRecord {
        protected StretchBltMode stretchBltMode;

        /* loaded from: classes12.dex */
        public enum StretchBltMode {
            BLACKONWHITE(1),
            WHITEONBLACK(2),
            COLORONCOLOR(3),
            HALFTONE(4);

            public final int flag;

            StretchBltMode(int i) {
                this.flag = i;
            }

            public static StretchBltMode valueOf(int i) {
                for (StretchBltMode stretchBltMode : values()) {
                    if (stretchBltMode.flag == i) {
                        return stretchBltMode;
                    }
                }
                return null;
            }
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("stretchBltMode", new Supplier() { // from class: com.sunia.HTREnginev2.j6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfMisc.WmfSetStretchBltMode.this.getStretchBltMode();
                }
            });
        }

        public StretchBltMode getStretchBltMode() {
            return this.stretchBltMode;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setStretchBltMode;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.stretchBltMode = StretchBltMode.valueOf(littleEndianInputStream.readUShort());
            return 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }
}
