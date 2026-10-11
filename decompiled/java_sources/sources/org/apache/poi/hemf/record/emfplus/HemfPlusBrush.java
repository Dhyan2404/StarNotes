package org.apache.poi.hemf.record.emfplus;

import java.awt.Color;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfFill;
import org.apache.poi.hemf.record.emfplus.HemfPlusBrush;
import org.apache.poi.hemf.record.emfplus.HemfPlusHeader;
import org.apache.poi.hemf.record.emfplus.HemfPlusImage;
import org.apache.poi.hemf.record.emfplus.HemfPlusObject;
import org.apache.poi.hemf.record.emfplus.HemfPlusPath;
import org.apache.poi.hwmf.record.HwmfBrushStyle;
import org.apache.poi.hwmf.record.HwmfColorRef;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfPlusBrush {

    /* loaded from: classes12.dex */
    public static class EmfPlusBrush implements HemfPlusObject.EmfPlusObjectData {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final int MAX_OBJECT_SIZE = 1000000;
        private byte[] brushBytes;
        private EmfPlusBrushType brushType;
        private final HemfPlusHeader.EmfPlusGraphicsVersion graphicsVersion = new HemfPlusHeader.EmfPlusGraphicsVersion();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return getBrushData(null);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            getBrushData(list).applyObject(hemfGraphics, list);
        }

        public void applyPen(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            getBrushData(list).applyPen(hemfGraphics, list);
        }

        public byte[] getBrushBytes() {
            return this.brushBytes;
        }

        public EmfPlusBrushData getBrushData(List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            EmfPlusBrushData emfPlusBrushData = this.brushType.constructor.get();
            try {
                UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(getRawData(list));
                try {
                    emfPlusBrushData.init(new LittleEndianInputStream(unsynchronizedByteArrayInputStream), r4.length);
                    unsynchronizedByteArrayInputStream.close();
                    return emfPlusBrushData;
                } finally {
                }
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("graphicsVersion", new Supplier() { // from class: com.sunia.HTREnginev2.ylh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusBrush.EmfPlusBrush.this.getGraphicsVersion();
                }
            }, "brushData", new Supplier() { // from class: com.sunia.HTREnginev2.zlh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusBrush.EmfPlusBrush.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public HemfPlusHeader.EmfPlusGraphicsVersion getGraphicsVersion() {
            return this.graphicsVersion;
        }

        public byte[] getRawData(List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            try {
                UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                try {
                    unsynchronizedByteArrayOutputStream.write(getBrushBytes());
                    if (list != null) {
                        Iterator<? extends HemfPlusObject.EmfPlusObjectData> it2 = list.iterator();
                        while (it2.hasNext()) {
                            unsynchronizedByteArrayOutputStream.write(((EmfPlusBrush) it2.next()).getBrushBytes());
                        }
                    }
                    byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                    unsynchronizedByteArrayOutputStream.close();
                    return byteArray;
                } finally {
                }
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public long init(LittleEndianInputStream littleEndianInputStream, long j, HemfPlusObject.EmfPlusObjectType emfPlusObjectType, int i) throws IOException {
            long j2;
            littleEndianInputStream.mark(4);
            long init = this.graphicsVersion.init(littleEndianInputStream);
            if (isContinuedRecord()) {
                littleEndianInputStream.reset();
                j2 = 0;
            } else {
                this.brushType = EmfPlusBrushType.valueOf(littleEndianInputStream.readInt());
                j2 = init + 4;
            }
            this.brushBytes = IOUtils.toByteArray(littleEndianInputStream, Math.toIntExact(j - j2), 1000000);
            return j;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusBrushType getGenericRecordType() {
            return this.brushType;
        }
    }

    /* loaded from: classes12.dex */
    public interface EmfPlusBrushData extends GenericRecord {
        public static final BitField PATH = BitFieldFactory.getInstance(1);
        public static final BitField TRANSFORM = BitFieldFactory.getInstance(2);
        public static final BitField PRESET_COLORS = BitFieldFactory.getInstance(4);
        public static final BitField BLEND_FACTORS_H = BitFieldFactory.getInstance(8);
        public static final BitField BLEND_FACTORS_V = BitFieldFactory.getInstance(16);
        public static final BitField FOCUS_SCALES = BitFieldFactory.getInstance(64);
        public static final BitField IS_GAMMA_CORRECTED = BitFieldFactory.getInstance(128);
        public static final BitField DO_NOT_TRANSFORM = BitFieldFactory.getInstance(256);

        void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list);

        void applyPen(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list);

        long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException;
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusBrushType {
        SOLID_COLOR(0, new Supplier() { // from class: com.sunia.HTREnginev2.amh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusBrush.EmfPlusSolidBrushData();
            }
        }),
        HATCH_FILL(1, new Supplier() { // from class: com.sunia.HTREnginev2.bmh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusBrush.EmfPlusHatchBrushData();
            }
        }),
        TEXTURE_FILL(2, new Supplier() { // from class: com.sunia.HTREnginev2.cmh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusBrush.EmfPlusTextureBrushData();
            }
        }),
        PATH_GRADIENT(3, new Supplier() { // from class: com.sunia.HTREnginev2.dmh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusBrush.EmfPlusPathGradientBrushData();
            }
        }),
        LINEAR_GRADIENT(4, new Supplier() { // from class: com.sunia.HTREnginev2.emh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusBrush.EmfPlusLinearGradientBrushData();
            }
        });

        public final Supplier<? extends EmfPlusBrushData> constructor;

        /* renamed from: id */
        public final int f111343id;

        EmfPlusBrushType(int i, Supplier supplier) {
            this.f111343id = i;
            this.constructor = supplier;
        }

        public static EmfPlusBrushType valueOf(int i) {
            for (EmfPlusBrushType emfPlusBrushType : values()) {
                if (emfPlusBrushType.f111343id == i) {
                    return emfPlusBrushType;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusHatchBrushData implements EmfPlusBrushData {
        private Color backColor;
        private Color foreColor;
        private EmfPlusHatchStyle style;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return this.style;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return this.foreColor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return this.backColor;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            properties.setBrushColor(new HwmfColorRef(this.foreColor));
            properties.setBackgroundColor(new HwmfColorRef(this.backColor));
            properties.setEmfPlusBrushHatch(this.style);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyPen(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            hemfGraphics.getProperties().setPenColor(new HwmfColorRef(this.foreColor));
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("style", new Supplier() { // from class: com.sunia.HTREnginev2.fmh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusBrush.EmfPlusHatchBrushData.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "foreColor", new Supplier() { // from class: com.sunia.HTREnginev2.gmh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfPlusBrush.EmfPlusHatchBrushData.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "backColor", new Supplier() { // from class: com.sunia.HTREnginev2.hmh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusBrush.EmfPlusHatchBrushData.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) {
            this.style = EmfPlusHatchStyle.valueOf(littleEndianInputStream.readInt());
            this.foreColor = HemfPlusDraw.readARGB(littleEndianInputStream.readInt());
            this.backColor = HemfPlusDraw.readARGB(littleEndianInputStream.readInt());
            return 12L;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusBrushType getGenericRecordType() {
            return EmfPlusBrushType.HATCH_FILL;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusHatchStyle {
        HORIZONTAL(0),
        VERTICAL(1),
        FORWARD_DIAGONAL(2),
        BACKWARD_DIAGONAL(3),
        LARGE_GRID(4),
        DIAGONAL_CROSS(5),
        PERCENT_05(6),
        PERCENT_10(7),
        PERCENT_20(8),
        PERCENT_25(9),
        PERCENT_30(10),
        PERCENT_40(11),
        PERCENT_50(12),
        PERCENT_60(13),
        PERCENT_70(14),
        PERCENT_75(15),
        PERCENT_80(16),
        PERCENT_90(17),
        LIGHT_DOWNWARD_DIAGONAL(18),
        LIGHT_UPWARD_DIAGONAL(19),
        DARK_DOWNWARD_DIAGONAL(20),
        DARK_UPWARD_DIAGONAL(21),
        WIDE_DOWNWARD_DIAGONAL(22),
        WIDE_UPWARD_DIAGONAL(23),
        LIGHT_VERTICAL(24),
        LIGHT_HORIZONTAL(25),
        NARROW_VERTICAL(26),
        NARROW_HORIZONTAL(27),
        DARK_VERTICAL(28),
        DARK_HORIZONTAL(29),
        DASHED_DOWNWARD_DIAGONAL(30),
        DASHED_UPWARD_DIAGONAL(31),
        DASHED_HORIZONTAL(32),
        DASHED_VERTICAL(33),
        SMALL_CONFETTI(34),
        LARGE_CONFETTI(35),
        ZIGZAG(36),
        WAVE(37),
        DIAGONAL_BRICK(38),
        HORIZONTAL_BRICK(39),
        WEAVE(40),
        PLAID(41),
        DIVOT(42),
        DOTTED_GRID(43),
        DOTTED_DIAMOND(44),
        SHINGLE(45),
        TRELLIS(46),
        SPHERE(47),
        SMALL_GRID(48),
        SMALL_CHECKER_BOARD(49),
        LARGE_CHECKER_BOARD(50),
        OUTLINED_DIAMOND(51),
        SOLID_DIAMOND(52);


        /* renamed from: id */
        public final int f111344id;

        EmfPlusHatchStyle(int i) {
            this.f111344id = i;
        }

        public static EmfPlusHatchStyle valueOf(int i) {
            for (EmfPlusHatchStyle emfPlusHatchStyle : values()) {
                if (emfPlusHatchStyle.f111344id == i) {
                    return emfPlusHatchStyle;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusLinearGradientBrushData implements EmfPlusBrushData {
        private static final int[] FLAG_MASKS = {2, 4, 8, 16, 128};
        private static final String[] FLAG_NAMES = {"TRANSFORM", "PRESET_COLORS", "BLEND_FACTORS_H", "BLEND_FACTORS_V", "BRUSH_DATA_IS_GAMMA_CORRECTED"};
        private Color[] blendColors;
        private float[] blendFactorsH;
        private float[] blendFactorsV;
        private AffineTransform blendTransform;
        private int dataFlags;
        private Color endColor;
        private float[] positions;
        private float[] positionsH;
        private float[] positionsV;
        private final Rectangle2D rect = new Rectangle2D.Double();
        private Color startColor;
        private HemfPlusImage.EmfPlusWrapMode wrapMode;

        /* JADX INFO: Access modifiers changed from: private */
        public Map.Entry<Float, Color> getBlendColorAt(int i) {
            return m68831kv(Float.valueOf(this.positions[i]), this.blendColors[i]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map.Entry<Float, Color> getBlendHColorAt(int i) {
            return m68831kv(Float.valueOf(this.positionsH[i]), interpolateColors(this.blendFactorsH[i]));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map.Entry<Float, Color> getBlendVColorAt(int i) {
            return m68831kv(Float.valueOf(this.positionsV[i]), interpolateColors(this.blendFactorsV[i]));
        }

        private Color interpolateColors(double d) {
            return interpolateColorsRGB(d);
        }

        private Color interpolateColorsRGB(double d) {
            double[] RGB2SCRGB = DrawPaint.RGB2SCRGB(this.startColor);
            double[] RGB2SCRGB2 = DrawPaint.RGB2SCRGB(this.endColor);
            int round = (int) Math.round(this.startColor.getAlpha() + ((this.endColor.getAlpha() - this.startColor.getAlpha()) * d));
            double d2 = RGB2SCRGB[0];
            double d3 = d2 + ((RGB2SCRGB2[0] - d2) * d);
            double d4 = RGB2SCRGB[1];
            double d5 = d4 + ((RGB2SCRGB2[1] - d4) * d);
            double d6 = RGB2SCRGB[2];
            Color SCRGB2RGB = DrawPaint.SCRGB2RGB(d3, d5, d6 + (d * (RGB2SCRGB2[2] - d6)));
            return new Color(SCRGB2RGB.getRed(), SCRGB2RGB.getGreen(), SCRGB2RGB.getBlue(), round);
        }

        private boolean isBlendH() {
            return EmfPlusBrushData.BLEND_FACTORS_H.isSet(this.dataFlags);
        }

        private boolean isBlendV() {
            return EmfPlusBrushData.BLEND_FACTORS_V.isSet(this.dataFlags);
        }

        private boolean isPreset() {
            return EmfPlusBrushData.PRESET_COLORS.isSet(this.dataFlags);
        }

        /* renamed from: kv */
        private static Map.Entry<Float, Color> m68831kv(Float f, Color color) {
            return new AbstractMap.SimpleEntry(f, color);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$10() {
            return this.endColor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$11() {
            return this.blendTransform;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$12() {
            return this.positions;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$13() {
            return this.blendColors;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$14() {
            return this.positionsV;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$15() {
            return this.blendFactorsV;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$16() {
            return this.positionsH;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$17() {
            return this.blendFactorsH;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Number lambda$getGenericProperties$6() {
            return Integer.valueOf(this.dataFlags);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$7() {
            return this.wrapMode;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$8() {
            return this.rect;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$9() {
            return this.startColor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$0(float[] fArr) {
            this.positions = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$1(Color[] colorArr) {
            this.blendColors = colorArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$2(float[] fArr) {
            this.positionsV = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$3(float[] fArr) {
            this.blendFactorsV = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$4(float[] fArr) {
            this.positionsH = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$5(float[] fArr) {
            this.blendFactorsH = fArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static void setColorProps(Consumer<List<? extends Map.Entry<Float, Color>>> consumer, float[] fArr, Function<Integer, ? extends Map.Entry<Float, Color>> function) {
            if (fArr == null) {
                consumer.accept(null);
            } else {
                consumer.accept(IntStream.range(0, fArr.length).boxed().map(function).collect(Collectors.toList()));
            }
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            final HemfDrawProperties properties = hemfGraphics.getProperties();
            properties.setBrushStyle(HwmfBrushStyle.BS_LINEAR_GRADIENT);
            properties.setBrushRect(this.rect);
            properties.setBrushTransform(this.blendTransform);
            if (isPreset()) {
                setColorProps(new Consumer() { // from class: com.sunia.HTREnginev2.lmh
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        HemfDrawProperties.this.setBrushColorsH((List) obj);
                    }
                }, this.positions, new Function() { // from class: com.sunia.HTREnginev2.mmh
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Map.Entry blendColorAt;
                        blendColorAt = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.getBlendColorAt(((Integer) obj).intValue());
                        return blendColorAt;
                    }
                });
            } else {
                setColorProps(new Consumer() { // from class: com.sunia.HTREnginev2.lmh
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        HemfDrawProperties.this.setBrushColorsH((List) obj);
                    }
                }, this.positionsH, new Function() { // from class: com.sunia.HTREnginev2.nmh
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Map.Entry blendHColorAt;
                        blendHColorAt = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.getBlendHColorAt(((Integer) obj).intValue());
                        return blendHColorAt;
                    }
                });
            }
            setColorProps(new Consumer() { // from class: com.sunia.HTREnginev2.omh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDrawProperties.this.setBrushColorsV((List) obj);
                }
            }, this.positionsV, new Function() { // from class: com.sunia.HTREnginev2.pmh
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Map.Entry blendVColorAt;
                    blendVColorAt = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.getBlendVColorAt(((Integer) obj).intValue());
                    return blendVColorAt;
                }
            });
            if (isPreset() || isBlendH() || isBlendV()) {
                return;
            }
            properties.setBrushColorsH(Arrays.asList(m68831kv(Float.valueOf(0.0f), this.startColor), m68831kv(Float.valueOf(1.0f), this.endColor)));
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyPen(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.imh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Number lambda$getGenericProperties$6;
                    lambda$getGenericProperties$6 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$6();
                    return lambda$getGenericProperties$6;
                }
            }, FLAG_MASKS, FLAG_NAMES));
            linkedHashMap.put("wrapMode", new Supplier() { // from class: com.sunia.HTREnginev2.ymh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$7;
                    lambda$getGenericProperties$7 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$7();
                    return lambda$getGenericProperties$7;
                }
            });
            linkedHashMap.put("rect", new Supplier() { // from class: com.sunia.HTREnginev2.zmh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$8;
                    lambda$getGenericProperties$8 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$8();
                    return lambda$getGenericProperties$8;
                }
            });
            linkedHashMap.put("startColor", new Supplier() { // from class: com.sunia.HTREnginev2.anh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$9;
                    lambda$getGenericProperties$9 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$9();
                    return lambda$getGenericProperties$9;
                }
            });
            linkedHashMap.put("endColor", new Supplier() { // from class: com.sunia.HTREnginev2.bnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$10;
                    lambda$getGenericProperties$10 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$10();
                    return lambda$getGenericProperties$10;
                }
            });
            linkedHashMap.put("blendTransform", new Supplier() { // from class: com.sunia.HTREnginev2.cnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$11;
                    lambda$getGenericProperties$11 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$11();
                    return lambda$getGenericProperties$11;
                }
            });
            linkedHashMap.put("positions", new Supplier() { // from class: com.sunia.HTREnginev2.dnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$12;
                    lambda$getGenericProperties$12 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$12();
                    return lambda$getGenericProperties$12;
                }
            });
            linkedHashMap.put("blendColors", new Supplier() { // from class: com.sunia.HTREnginev2.enh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$13;
                    lambda$getGenericProperties$13 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$13();
                    return lambda$getGenericProperties$13;
                }
            });
            linkedHashMap.put("positionsV", new Supplier() { // from class: com.sunia.HTREnginev2.jmh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$14;
                    lambda$getGenericProperties$14 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$14();
                    return lambda$getGenericProperties$14;
                }
            });
            linkedHashMap.put("blendFactorsV", new Supplier() { // from class: com.sunia.HTREnginev2.kmh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$15;
                    lambda$getGenericProperties$15 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$15();
                    return lambda$getGenericProperties$15;
                }
            });
            linkedHashMap.put("positionsH", new Supplier() { // from class: com.sunia.HTREnginev2.tmh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$16;
                    lambda$getGenericProperties$16 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$16();
                    return lambda$getGenericProperties$16;
                }
            });
            linkedHashMap.put("blendFactorsH", new Supplier() { // from class: com.sunia.HTREnginev2.xmh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$17;
                    lambda$getGenericProperties$17 = HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$getGenericProperties$17();
                    return lambda$getGenericProperties$17;
                }
            });
            return Collections.unmodifiableMap(linkedHashMap);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            this.dataFlags = littleEndianInputStream.readInt();
            this.wrapMode = HemfPlusImage.EmfPlusWrapMode.valueOf(littleEndianInputStream.readInt());
            this.startColor = HemfPlusDraw.readARGB(littleEndianInputStream.readInt());
            this.endColor = HemfPlusDraw.readARGB(littleEndianInputStream.readInt());
            littleEndianInputStream.skipFully(8);
            long readRectF = HemfPlusDraw.readRectF(littleEndianInputStream, this.rect) + 8 + 16;
            if (EmfPlusBrushData.TRANSFORM.isSet(this.dataFlags)) {
                this.blendTransform = new AffineTransform();
                readRectF += HemfFill.readXForm(littleEndianInputStream, r0);
            }
            if (isPreset() && (isBlendH() || isBlendV())) {
                throw new IOException("invalid combination of preset colors and blend factors v/h");
            }
            return readRectF + (isPreset() ? HemfPlusBrush.readColors(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.qmh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$init$0((float[]) obj);
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rmh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$init$1((Color[]) obj);
                }
            }) : 0L) + (isBlendV() ? HemfPlusBrush.readFactors(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.smh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$init$2((float[]) obj);
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.umh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$init$3((float[]) obj);
                }
            }) : 0L) + (isBlendH() ? HemfPlusBrush.readFactors(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.vmh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$init$4((float[]) obj);
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wmh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusLinearGradientBrushData.this.lambda$init$5((float[]) obj);
                }
            }) : 0L);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusBrushType getGenericRecordType() {
            return EmfPlusBrushType.LINEAR_GRADIENT;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusPathGradientBrushData implements EmfPlusBrushData {
        private Color[] blendColors;
        private float[] blendFactorsH;
        private AffineTransform blendTransform;
        private HemfPlusPath.EmfPlusPath boundaryPath;
        private Point2D[] boundaryPoints;
        private Color centerColor;
        private final Point2D centerPoint = new Point2D.Double();
        private int dataFlags;
        private Double focusScaleX;
        private Double focusScaleY;
        private float[] positions;
        private Color[] surroundingColor;
        private HemfPlusImage.EmfPlusWrapMode wrapMode;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$10() {
            return this.boundaryPoints;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$11() {
            return this.blendTransform;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$12() {
            return this.positions;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$13() {
            return this.blendColors;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$14() {
            return this.blendFactorsH;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$15() {
            return this.focusScaleX;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$16() {
            return this.focusScaleY;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return Integer.valueOf(this.dataFlags);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$5() {
            return this.wrapMode;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$6() {
            return this.centerColor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$7() {
            return this.centerPoint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$8() {
            return this.surroundingColor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$9() {
            return this.boundaryPath;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$0(float[] fArr) {
            this.positions = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$1(Color[] colorArr) {
            this.blendColors = colorArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$2(float[] fArr) {
            this.positions = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$3(float[] fArr) {
            this.blendFactorsH = fArr;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyPen(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("flags", new Supplier() { // from class: com.sunia.HTREnginev2.qnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
            linkedHashMap.put("wrapMode", new Supplier() { // from class: com.sunia.HTREnginev2.unh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$5;
                    lambda$getGenericProperties$5 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$5();
                    return lambda$getGenericProperties$5;
                }
            });
            linkedHashMap.put("centerColor", new Supplier() { // from class: com.sunia.HTREnginev2.vnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$6;
                    lambda$getGenericProperties$6 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$6();
                    return lambda$getGenericProperties$6;
                }
            });
            linkedHashMap.put("centerPoint", new Supplier() { // from class: com.sunia.HTREnginev2.gnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$7;
                    lambda$getGenericProperties$7 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$7();
                    return lambda$getGenericProperties$7;
                }
            });
            linkedHashMap.put("surroundingColor", new Supplier() { // from class: com.sunia.HTREnginev2.hnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$8;
                    lambda$getGenericProperties$8 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$8();
                    return lambda$getGenericProperties$8;
                }
            });
            linkedHashMap.put("boundaryPath", new Supplier() { // from class: com.sunia.HTREnginev2.inh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$9;
                    lambda$getGenericProperties$9 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$9();
                    return lambda$getGenericProperties$9;
                }
            });
            linkedHashMap.put("boundaryPoints", new Supplier() { // from class: com.sunia.HTREnginev2.jnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$10;
                    lambda$getGenericProperties$10 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$10();
                    return lambda$getGenericProperties$10;
                }
            });
            linkedHashMap.put("blendTransform", new Supplier() { // from class: com.sunia.HTREnginev2.knh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$11;
                    lambda$getGenericProperties$11 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$11();
                    return lambda$getGenericProperties$11;
                }
            });
            linkedHashMap.put("positions", new Supplier() { // from class: com.sunia.HTREnginev2.lnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$12;
                    lambda$getGenericProperties$12 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$12();
                    return lambda$getGenericProperties$12;
                }
            });
            linkedHashMap.put("blendColors", new Supplier() { // from class: com.sunia.HTREnginev2.mnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$13;
                    lambda$getGenericProperties$13 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$13();
                    return lambda$getGenericProperties$13;
                }
            });
            linkedHashMap.put("blendFactorsH", new Supplier() { // from class: com.sunia.HTREnginev2.rnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$14;
                    lambda$getGenericProperties$14 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$14();
                    return lambda$getGenericProperties$14;
                }
            });
            linkedHashMap.put("focusScaleX", new Supplier() { // from class: com.sunia.HTREnginev2.snh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$15;
                    lambda$getGenericProperties$15 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$15();
                    return lambda$getGenericProperties$15;
                }
            });
            linkedHashMap.put("focusScaleY", new Supplier() { // from class: com.sunia.HTREnginev2.tnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$16;
                    lambda$getGenericProperties$16 = HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$getGenericProperties$16();
                    return lambda$getGenericProperties$16;
                }
            });
            return Collections.unmodifiableMap(linkedHashMap);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            long j2;
            this.dataFlags = littleEndianInputStream.readInt();
            this.wrapMode = HemfPlusImage.EmfPlusWrapMode.valueOf(littleEndianInputStream.readInt());
            this.centerColor = HemfPlusDraw.readARGB(littleEndianInputStream.readInt());
            if (this.wrapMode == null) {
                return 12L;
            }
            long readPointF = HemfPlusDraw.readPointF(littleEndianInputStream, this.centerPoint) + 12;
            int readInt = littleEndianInputStream.readInt();
            this.surroundingColor = new Color[readInt];
            for (int i = 0; i < readInt; i++) {
                this.surroundingColor[i] = HemfPlusDraw.readARGB(littleEndianInputStream.readInt());
            }
            long j3 = readPointF + ((readInt + 1) * 4);
            if (EmfPlusBrushData.PATH.isSet(this.dataFlags)) {
                int readInt2 = littleEndianInputStream.readInt();
                HemfPlusPath.EmfPlusPath emfPlusPath = new HemfPlusPath.EmfPlusPath();
                this.boundaryPath = emfPlusPath;
                j2 = j3 + 4 + emfPlusPath.init(littleEndianInputStream, readInt2, HemfPlusObject.EmfPlusObjectType.PATH, 0);
            } else {
                int readInt3 = littleEndianInputStream.readInt();
                j2 = j3 + 4;
                this.boundaryPoints = new Point2D[readInt3];
                for (int i2 = 0; i2 < readInt3; i2++) {
                    this.boundaryPoints[i2] = new Point2D.Double();
                    j2 += HemfPlusDraw.readPointF(littleEndianInputStream, r5);
                }
            }
            if (EmfPlusBrushData.TRANSFORM.isSet(this.dataFlags)) {
                this.blendTransform = new AffineTransform();
                j2 += HemfFill.readXForm(littleEndianInputStream, r2);
            }
            boolean isSet = EmfPlusBrushData.PRESET_COLORS.isSet(this.dataFlags);
            boolean isSet2 = EmfPlusBrushData.BLEND_FACTORS_H.isSet(this.dataFlags);
            if (isSet && isSet2) {
                throw new IOException("invalid combination of preset colors and blend factors h");
            }
            long readColors = j2 + (isSet ? HemfPlusBrush.readColors(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.fnh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$init$0((float[]) obj);
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nnh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$init$1((Color[]) obj);
                }
            }) : 0L) + (isSet2 ? HemfPlusBrush.readFactors(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.onh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$init$2((float[]) obj);
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pnh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusBrush.EmfPlusPathGradientBrushData.this.lambda$init$3((float[]) obj);
                }
            }) : 0L);
            if (!EmfPlusBrushData.FOCUS_SCALES.isSet(this.dataFlags)) {
                return readColors;
            }
            if (littleEndianInputStream.readInt() != 2) {
                throw new IOException("invalid focus scale count");
            }
            this.focusScaleX = Double.valueOf(littleEndianInputStream.readFloat());
            this.focusScaleY = Double.valueOf(littleEndianInputStream.readFloat());
            return readColors + 12;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusBrushType getGenericRecordType() {
            return EmfPlusBrushType.PATH_GRADIENT;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSolidBrushData implements EmfPlusBrushData {
        private Color solidColor;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return this.solidColor;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            properties.setBrushColor(new HwmfColorRef(this.solidColor));
            properties.setBrushTransform(null);
            properties.setBrushStyle(HwmfBrushStyle.BS_SOLID);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyPen(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            hemfGraphics.getProperties().setPenColor(new HwmfColorRef(this.solidColor));
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("solidColor", new Supplier() { // from class: com.sunia.HTREnginev2.wnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusBrush.EmfPlusSolidBrushData.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            this.solidColor = HemfPlusDraw.readARGB(littleEndianInputStream.readInt());
            return 4L;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusBrushType getGenericRecordType() {
            return EmfPlusBrushType.SOLID_COLOR;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusTextureBrushData implements EmfPlusBrushData {
        private AffineTransform brushTransform;
        private int dataFlags;
        private HemfPlusImage.EmfPlusImage image;
        private HemfPlusImage.EmfPlusWrapMode wrapMode;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.dataFlags);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return this.wrapMode;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return this.brushTransform;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return this.image;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            this.image.applyObject(hemfGraphics, null);
            properties.setBrushBitmap(properties.getEmfPlusImage());
            properties.setBrushStyle(HwmfBrushStyle.BS_PATTERN);
            properties.setBrushTransform(this.brushTransform);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public void applyPen(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("dataFlags", new Supplier() { // from class: com.sunia.HTREnginev2.xnh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusBrush.EmfPlusTextureBrushData.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "wrapMode", new Supplier() { // from class: com.sunia.HTREnginev2.ynh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfPlusBrush.EmfPlusTextureBrushData.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "brushTransform", new Supplier() { // from class: com.sunia.HTREnginev2.znh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusBrush.EmfPlusTextureBrushData.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            }, "image", new Supplier() { // from class: com.sunia.HTREnginev2.aoh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfPlusBrush.EmfPlusTextureBrushData.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusBrush.EmfPlusBrushData
        public long init(LittleEndianInputStream littleEndianInputStream, long j) throws IOException {
            this.dataFlags = littleEndianInputStream.readInt();
            this.wrapMode = HemfPlusImage.EmfPlusWrapMode.valueOf(littleEndianInputStream.readInt());
            long j2 = 8;
            if (EmfPlusBrushData.TRANSFORM.isSet(this.dataFlags)) {
                this.brushTransform = new AffineTransform();
                j2 = 8 + HemfFill.readXForm(littleEndianInputStream, r0);
            }
            if (j > j2) {
                HemfPlusImage.EmfPlusImage emfPlusImage = new HemfPlusImage.EmfPlusImage();
                this.image = emfPlusImage;
                j2 += emfPlusImage.init(littleEndianInputStream, j - j2, HemfPlusObject.EmfPlusObjectType.IMAGE, 0);
            }
            return Math.toIntExact(j2);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusBrushType getGenericRecordType() {
            return EmfPlusBrushType.TEXTURE_FILL;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$readColors$0(int[] iArr, Consumer consumer, float[] fArr) {
        iArr[0] = fArr.length;
        consumer.accept(fArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$readFactors$1(int[] iArr, Consumer consumer, float[] fArr) {
        iArr[0] = fArr.length;
        consumer.accept(fArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readColors(LittleEndianInputStream littleEndianInputStream, final Consumer<float[]> consumer, Consumer<Color[]> consumer2) {
        final int[] iArr = {0};
        int readPositions = readPositions(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.wlh
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HemfPlusBrush.lambda$readColors$0(iArr, consumer, (float[]) obj);
            }
        });
        int i = iArr[0];
        Color[] colorArr = new Color[i];
        for (int i2 = 0; i2 < i; i2++) {
            colorArr[i2] = HemfPlusDraw.readARGB(littleEndianInputStream.readInt());
        }
        consumer2.accept(colorArr);
        return readPositions + (i * 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readFactors(LittleEndianInputStream littleEndianInputStream, final Consumer<float[]> consumer, Consumer<float[]> consumer2) {
        final int[] iArr = {0};
        int readPositions = readPositions(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.xlh
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HemfPlusBrush.lambda$readFactors$1(iArr, consumer, (float[]) obj);
            }
        });
        int i = iArr[0];
        float[] fArr = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = littleEndianInputStream.readFloat();
        }
        consumer2.accept(fArr);
        return readPositions + (i * 4);
    }

    private static int readPositions(LittleEndianInputStream littleEndianInputStream, Consumer<float[]> consumer) {
        int readInt = littleEndianInputStream.readInt();
        float[] fArr = new float[readInt];
        int i = 4;
        for (int i2 = 0; i2 < readInt; i2++) {
            fArr[i2] = littleEndianInputStream.readFloat();
            i += 4;
        }
        consumer.accept(fArr);
        return i;
    }
}
