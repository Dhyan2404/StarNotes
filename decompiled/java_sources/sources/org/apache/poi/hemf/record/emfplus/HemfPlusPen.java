package org.apache.poi.hemf.record.emfplus;

import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithContext;
import com.sunia.HTREnginev2.gon;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfFill;
import org.apache.poi.hemf.record.emf.HemfPenStyle;
import org.apache.poi.hemf.record.emfplus.HemfPlusBrush;
import org.apache.poi.hemf.record.emfplus.HemfPlusDraw;
import org.apache.poi.hemf.record.emfplus.HemfPlusHeader;
import org.apache.poi.hemf.record.emfplus.HemfPlusObject;
import org.apache.poi.hemf.record.emfplus.HemfPlusPath;
import org.apache.poi.hemf.record.emfplus.HemfPlusPen;
import org.apache.poi.hwmf.record.HwmfPenStyle;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfPlusPen {

    /* renamed from: org.apache.poi.hemf.record.emfplus.HemfPlusPen$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194501 {

        /* renamed from: $SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusPen$EmfPlusLineCapType */
        static final /* synthetic */ int[] f111360xb552b29c;

        /* renamed from: $SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusPen$EmfPlusLineJoin */
        static final /* synthetic */ int[] f111361xcc3ecaba;

        static {
            int[] iArr = new int[EmfPlusLineJoin.values().length];
            f111361xcc3ecaba = iArr;
            try {
                iArr[EmfPlusLineJoin.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111361xcc3ecaba[EmfPlusLineJoin.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111361xcc3ecaba[EmfPlusLineJoin.MITER_CLIPPED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111361xcc3ecaba[EmfPlusLineJoin.MITER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[EmfPlusLineCapType.values().length];
            f111360xb552b29c = iArr2;
            try {
                iArr2[EmfPlusLineCapType.FLAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111360xb552b29c[EmfPlusLineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f111360xb552b29c[EmfPlusLineCapType.SQUARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusAdjustableArrowCap extends EmfPlusCustomLineCap {
        private double height;
        private boolean isFilled;
        private double middleInset;
        private double width;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Double.valueOf(this.width);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Double.valueOf(this.height);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Double.valueOf(this.middleInset);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return Boolean.valueOf(this.isFilled);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusPen.EmfPlusCustomLineCap, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("width", new Supplier() { // from class: com.sunia.HTREnginev2.urh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusPen.EmfPlusAdjustableArrowCap.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "height", new Supplier() { // from class: com.sunia.HTREnginev2.vrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfPlusPen.EmfPlusAdjustableArrowCap.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "middleInset", new Supplier() { // from class: com.sunia.HTREnginev2.wrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusPen.EmfPlusAdjustableArrowCap.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            }, "isFilled", new Supplier() { // from class: com.sunia.HTREnginev2.xrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfPlusPen.EmfPlusAdjustableArrowCap.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            }, gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.yrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfPlusPen.EmfPlusAdjustableArrowCap.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusPen.EmfPlusCustomLineCap
        public long init(LittleEndianInputStream littleEndianInputStream) throws IOException {
            this.width = littleEndianInputStream.readFloat();
            this.height = littleEndianInputStream.readFloat();
            this.middleInset = littleEndianInputStream.readFloat();
            this.isFilled = littleEndianInputStream.readInt() != 0;
            return super.init(littleEndianInputStream) + 16;
        }
    }

    @Internal
    /* loaded from: classes12.dex */
    public static abstract class EmfPlusCustomLineCap implements GenericRecord {
        private EmfPlusLineCapType endCap;
        private EmfPlusLineJoin join;
        private double miterLimit;
        private EmfPlusLineCapType startCap;
        private double widthScale;
        private final Point2D fillHotSpot = new Point2D.Double();
        private final Point2D lineHotSpot = new Point2D.Double();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return this.startCap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return this.endCap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return this.join;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return Double.valueOf(this.miterLimit);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return Double.valueOf(this.widthScale);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$5() {
            return this.fillHotSpot;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$6() {
            return this.lineHotSpot;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("startCap", new Supplier() { // from class: com.sunia.HTREnginev2.zrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusPen.EmfPlusCustomLineCap.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
            linkedHashMap.put("endCap", new Supplier() { // from class: com.sunia.HTREnginev2.ash
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfPlusPen.EmfPlusCustomLineCap.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
            linkedHashMap.put(HWRGestureWithContext.GESTURE_JOIN, new Supplier() { // from class: com.sunia.HTREnginev2.bsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusPen.EmfPlusCustomLineCap.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
            linkedHashMap.put("miterLimit", new Supplier() { // from class: com.sunia.HTREnginev2.csh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfPlusPen.EmfPlusCustomLineCap.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            });
            linkedHashMap.put("widthScale", new Supplier() { // from class: com.sunia.HTREnginev2.dsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfPlusPen.EmfPlusCustomLineCap.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
            linkedHashMap.put("fillHotSpot", new Supplier() { // from class: com.sunia.HTREnginev2.esh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$5;
                    lambda$getGenericProperties$5 = HemfPlusPen.EmfPlusCustomLineCap.this.lambda$getGenericProperties$5();
                    return lambda$getGenericProperties$5;
                }
            });
            linkedHashMap.put("lineHotSpot", new Supplier() { // from class: com.sunia.HTREnginev2.fsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$6;
                    lambda$getGenericProperties$6 = HemfPlusPen.EmfPlusCustomLineCap.this.lambda$getGenericProperties$6();
                    return lambda$getGenericProperties$6;
                }
            });
            return linkedHashMap;
        }

        public long init(LittleEndianInputStream littleEndianInputStream) throws IOException {
            this.startCap = EmfPlusLineCapType.valueOf(littleEndianInputStream.readInt());
            this.endCap = EmfPlusLineCapType.valueOf(littleEndianInputStream.readInt());
            this.join = EmfPlusLineJoin.valueOf(littleEndianInputStream.readInt());
            this.miterLimit = littleEndianInputStream.readFloat();
            this.widthScale = littleEndianInputStream.readFloat();
            return HemfPlusDraw.readPointF(littleEndianInputStream, this.fillHotSpot) + 20 + HemfPlusDraw.readPointF(littleEndianInputStream, this.lineHotSpot);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public final HemfPlusObject.EmfPlusObjectType getGenericRecordType() {
            return HemfPlusObject.EmfPlusObjectType.CUSTOM_LINE_CAP;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusDashedLineCapType {
        FLAT(0),
        ROUND(2),
        TRIANGLE(3);


        /* renamed from: id */
        public final int f111362id;

        EmfPlusDashedLineCapType(int i) {
            this.f111362id = i;
        }

        public static EmfPlusDashedLineCapType valueOf(int i) {
            for (EmfPlusDashedLineCapType emfPlusDashedLineCapType : values()) {
                if (emfPlusDashedLineCapType.f111362id == i) {
                    return emfPlusDashedLineCapType;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusLineCapType {
        FLAT(0),
        SQUARE(1),
        ROUND(2),
        TRIANGLE(3),
        NO_ANCHOR(16),
        SQUARE_ANCHOR(17),
        ROUND_ANCHOR(18),
        DIAMOND_ANCHOR(19),
        ARROW_ANCHOR(20),
        ANCHOR_MASK(240),
        CUSTOM(255);


        /* renamed from: id */
        public final int f111363id;

        EmfPlusLineCapType(int i) {
            this.f111363id = i;
        }

        public static EmfPlusLineCapType valueOf(int i) {
            for (EmfPlusLineCapType emfPlusLineCapType : values()) {
                if (emfPlusLineCapType.f111363id == i) {
                    return emfPlusLineCapType;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusLineJoin {
        MITER(0),
        BEVEL(1),
        ROUND(2),
        MITER_CLIPPED(3);


        /* renamed from: id */
        public final int f111364id;

        EmfPlusLineJoin(int i) {
            this.f111364id = i;
        }

        public static EmfPlusLineJoin valueOf(int i) {
            for (EmfPlusLineJoin emfPlusLineJoin : values()) {
                if (emfPlusLineJoin.f111364id == i) {
                    return emfPlusLineJoin;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusLineStyle {
        SOLID(0),
        DASH(1),
        DOT(2),
        DASH_DOT(3),
        DASH_DOT_DOT(4),
        CUSTOM(5);


        /* renamed from: id */
        public final int f111365id;

        EmfPlusLineStyle(int i) {
            this.f111365id = i;
        }

        public static EmfPlusLineStyle valueOf(int i) {
            for (EmfPlusLineStyle emfPlusLineStyle : values()) {
                if (emfPlusLineStyle.f111365id == i) {
                    return emfPlusLineStyle;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusPathArrowCap extends EmfPlusCustomLineCap {
        private EmfPlusLineCapType baseCap;
        private double baseInset;
        private int dataFlags;
        private HemfPlusPath.EmfPlusPath fillPath;
        private HemfPlusPath.EmfPlusPath outlinePath;
        private static final BitField FILL_PATH = BitFieldFactory.getInstance(1);
        private static final BitField LINE_PATH = BitFieldFactory.getInstance(2);
        private static final int[] FLAGS_MASKS = {1, 2};
        private static final String[] FLAGS_NAMES = {"FILL_PATH", "LINE_PATH"};

        private long initPath(LittleEndianInputStream littleEndianInputStream, BitField bitField, Consumer<HemfPlusPath.EmfPlusPath> consumer) throws IOException {
            if (!bitField.isSet(this.dataFlags)) {
                return 0L;
            }
            int readInt = littleEndianInputStream.readInt();
            HemfPlusPath.EmfPlusPath emfPlusPath = new HemfPlusPath.EmfPlusPath();
            consumer.accept(emfPlusPath);
            return emfPlusPath.init(littleEndianInputStream, readInt, HemfPlusObject.EmfPlusObjectType.PATH, -1) + 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Number lambda$getGenericProperties$2() {
            return Integer.valueOf(this.dataFlags);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return this.baseCap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return Double.valueOf(this.baseInset);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$5() {
            return super.getGenericProperties();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$6() {
            return this.fillPath;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$7() {
            return this.outlinePath;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$0(HemfPlusPath.EmfPlusPath emfPlusPath) {
            this.fillPath = emfPlusPath;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$1(HemfPlusPath.EmfPlusPath emfPlusPath) {
            this.outlinePath = emfPlusPath;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusPen.EmfPlusCustomLineCap, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.gsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Number lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusPen.EmfPlusPathArrowCap.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            }, FLAGS_MASKS, FLAGS_NAMES), "baseCap", new Supplier() { // from class: com.sunia.HTREnginev2.hsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfPlusPen.EmfPlusPathArrowCap.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            }, "baseInset", new Supplier() { // from class: com.sunia.HTREnginev2.ish
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfPlusPen.EmfPlusPathArrowCap.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            }, gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.jsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$5;
                    lambda$getGenericProperties$5 = HemfPlusPen.EmfPlusPathArrowCap.this.lambda$getGenericProperties$5();
                    return lambda$getGenericProperties$5;
                }
            }, "fillPath", new Supplier() { // from class: com.sunia.HTREnginev2.ksh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$6;
                    lambda$getGenericProperties$6 = HemfPlusPen.EmfPlusPathArrowCap.this.lambda$getGenericProperties$6();
                    return lambda$getGenericProperties$6;
                }
            }, "outlinePath", new Supplier() { // from class: com.sunia.HTREnginev2.lsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$7;
                    lambda$getGenericProperties$7 = HemfPlusPen.EmfPlusPathArrowCap.this.lambda$getGenericProperties$7();
                    return lambda$getGenericProperties$7;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusPen.EmfPlusCustomLineCap
        public long init(LittleEndianInputStream littleEndianInputStream) throws IOException {
            this.dataFlags = littleEndianInputStream.readInt();
            this.baseCap = EmfPlusLineCapType.valueOf(littleEndianInputStream.readInt());
            this.baseInset = littleEndianInputStream.readFloat();
            return super.init(littleEndianInputStream) + 12 + initPath(littleEndianInputStream, FILL_PATH, new Consumer() { // from class: com.sunia.HTREnginev2.msh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusPen.EmfPlusPathArrowCap.this.lambda$init$0((HemfPlusPath.EmfPlusPath) obj);
                }
            }) + initPath(littleEndianInputStream, LINE_PATH, new Consumer() { // from class: com.sunia.HTREnginev2.nsh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusPen.EmfPlusPathArrowCap.this.lambda$init$1((HemfPlusPath.EmfPlusPath) obj);
                }
            });
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusPen implements HemfPlusObject.EmfPlusObjectData {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final HemfPlusBrush.EmfPlusBrush brush;
        private double[] compoundLineData;
        private EmfPlusCustomLineCap customEndCap;
        private EmfPlusCustomLineCap customStartCap;
        private Double dashOffset;
        private EmfPlusDashedLineCapType dashedLineCapType;
        private float[] dashedLineData;
        private EmfPlusLineCapType endCap;
        private EmfPlusLineJoin lineJoin;
        private Double miterLimit;
        private EmfPlusPenAlignment penAlignment;
        private int penDataFlags;
        private double penWidth;
        private EmfPlusLineCapType startCap;
        private EmfPlusLineStyle style;
        private int type;
        private HemfPlusDraw.EmfPlusUnitType unitType;
        private static final BitField TRANSFORM = BitFieldFactory.getInstance(1);
        private static final BitField START_CAP = BitFieldFactory.getInstance(2);
        private static final BitField END_CAP = BitFieldFactory.getInstance(4);
        private static final BitField JOIN = BitFieldFactory.getInstance(8);
        private static final BitField MITER_LIMIT = BitFieldFactory.getInstance(16);
        private static final BitField LINE_STYLE = BitFieldFactory.getInstance(32);
        private static final BitField DASHED_LINE_CAP = BitFieldFactory.getInstance(64);
        private static final BitField DASHED_LINE_OFFSET = BitFieldFactory.getInstance(128);
        private static final BitField DASHED_LINE = BitFieldFactory.getInstance(256);
        private static final BitField NON_CENTER = BitFieldFactory.getInstance(512);
        private static final BitField COMPOUND_LINE = BitFieldFactory.getInstance(1024);
        private static final BitField CUSTOM_START_CAP = BitFieldFactory.getInstance(2048);
        private static final BitField CUSTOM_END_CAP = BitFieldFactory.getInstance(4096);
        private static final int[] FLAGS_MASKS = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096};
        private static final String[] FLAGS_NAMES = {"TRANSFORM", "START_CAP", "END_CAP", "JOIN", "MITER_LIMIT", "LINE_STYLE", "DASHED_LINE_CAP", "DASHED_LINE_OFFSET", "DASHED_LINE", "NON_CENTER", "COMPOUND_LINE", "CUSTOM_START_CAP", "CUSTOM_END_CAP"};
        private final HemfPlusHeader.EmfPlusGraphicsVersion graphicsVersion = new HemfPlusHeader.EmfPlusGraphicsVersion();
        private final AffineTransform trans = new AffineTransform();

        public EmfPlusPen() {
            EmfPlusLineCapType emfPlusLineCapType = EmfPlusLineCapType.FLAT;
            this.startCap = emfPlusLineCapType;
            this.endCap = emfPlusLineCapType;
            this.lineJoin = EmfPlusLineJoin.ROUND;
            this.miterLimit = Double.valueOf(1.0d);
            this.style = EmfPlusLineStyle.SOLID;
            this.brush = new HemfPlusBrush.EmfPlusBrush();
        }

        private long initCustomCap(Consumer<EmfPlusCustomLineCap> consumer, LittleEndianInputStream littleEndianInputStream) throws IOException {
            littleEndianInputStream.readInt();
            long init = new HemfPlusHeader.EmfPlusGraphicsVersion().init(littleEndianInputStream) + 4 + 4;
            EmfPlusCustomLineCap emfPlusAdjustableArrowCap = littleEndianInputStream.readInt() != 0 ? new EmfPlusAdjustableArrowCap() : new EmfPlusPathArrowCap();
            long init2 = init + emfPlusAdjustableArrowCap.init(littleEndianInputStream);
            consumer.accept(emfPlusAdjustableArrowCap);
            return Math.toIntExact(init2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$10() {
            return this.miterLimit;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$11() {
            return this.style;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$12() {
            return this.dashedLineCapType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$13() {
            return this.dashOffset;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$14() {
            return this.dashedLineData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$15() {
            return this.penAlignment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$16() {
            return this.compoundLineData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$17() {
            return this.customStartCap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$18() {
            return this.customEndCap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$19() {
            return this.brush;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this.type);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Number lambda$getGenericProperties$3() {
            return Integer.valueOf(this.penDataFlags);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return this.unitType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$5() {
            return Double.valueOf(this.penWidth);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$6() {
            return this.trans;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$7() {
            return this.startCap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$8() {
            return this.endCap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$9() {
            return this.lineJoin;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$0(EmfPlusCustomLineCap emfPlusCustomLineCap) {
            this.customStartCap = emfPlusCustomLineCap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$init$1(EmfPlusCustomLineCap emfPlusCustomLineCap) {
            this.customEndCap = emfPlusCustomLineCap;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            Double d;
            HemfDrawProperties properties = hemfGraphics.getProperties();
            this.brush.applyPen(hemfGraphics, list);
            properties.setPenWidth(this.penWidth);
            int i = C194501.f111360xb552b29c[this.startCap.ordinal()];
            HwmfPenStyle.HwmfLineCap hwmfLineCap = i != 2 ? i != 3 ? HwmfPenStyle.HwmfLineCap.FLAT : HwmfPenStyle.HwmfLineCap.SQUARE : HwmfPenStyle.HwmfLineCap.ROUND;
            int i2 = C194501.f111361xcc3ecaba[this.lineJoin.ordinal()];
            HwmfPenStyle.HwmfLineJoin hwmfLineJoin = i2 != 2 ? (i2 == 3 || i2 == 4) ? HwmfPenStyle.HwmfLineJoin.MITER : HwmfPenStyle.HwmfLineJoin.BEVEL : HwmfPenStyle.HwmfLineJoin.ROUND;
            HwmfPenStyle.HwmfLineDash hwmfLineDash = this.dashedLineData == null ? HwmfPenStyle.HwmfLineDash.SOLID : HwmfPenStyle.HwmfLineDash.USERSTYLE;
            boolean z = true;
            boolean z2 = (hwmfLineDash == HwmfPenStyle.HwmfLineDash.SOLID || (d = this.dashOffset) == null || d.doubleValue() != 0.0d) ? false : true;
            HemfPlusDraw.EmfPlusUnitType emfPlusUnitType = this.unitType;
            if (emfPlusUnitType != HemfPlusDraw.EmfPlusUnitType.World && emfPlusUnitType != HemfPlusDraw.EmfPlusUnitType.Display) {
                z = false;
            }
            HemfPenStyle valueOf = HemfPenStyle.valueOf(hwmfLineCap, hwmfLineJoin, hwmfLineDash, z2, z);
            valueOf.setLineDashes(this.dashedLineData);
            properties.setPenStyle(valueOf);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("type", new Supplier() { // from class: com.sunia.HTREnginev2.osh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
            linkedHashMap.put("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.hth
                @Override // java.util.function.Supplier
                public final Object get() {
                    Number lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            }, FLAGS_MASKS, FLAGS_NAMES));
            linkedHashMap.put("unitType", new Supplier() { // from class: com.sunia.HTREnginev2.psh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
            linkedHashMap.put("penWidth", new Supplier() { // from class: com.sunia.HTREnginev2.qsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$5;
                    lambda$getGenericProperties$5 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$5();
                    return lambda$getGenericProperties$5;
                }
            });
            linkedHashMap.put("trans", new Supplier() { // from class: com.sunia.HTREnginev2.rsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$6;
                    lambda$getGenericProperties$6 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$6();
                    return lambda$getGenericProperties$6;
                }
            });
            linkedHashMap.put("startCap", new Supplier() { // from class: com.sunia.HTREnginev2.ssh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$7;
                    lambda$getGenericProperties$7 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$7();
                    return lambda$getGenericProperties$7;
                }
            });
            linkedHashMap.put("endCap", new Supplier() { // from class: com.sunia.HTREnginev2.tsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$8;
                    lambda$getGenericProperties$8 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$8();
                    return lambda$getGenericProperties$8;
                }
            });
            linkedHashMap.put(HWRGestureWithContext.GESTURE_JOIN, new Supplier() { // from class: com.sunia.HTREnginev2.ush
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$9;
                    lambda$getGenericProperties$9 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$9();
                    return lambda$getGenericProperties$9;
                }
            });
            linkedHashMap.put("miterLimit", new Supplier() { // from class: com.sunia.HTREnginev2.vsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$10;
                    lambda$getGenericProperties$10 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$10();
                    return lambda$getGenericProperties$10;
                }
            });
            linkedHashMap.put("style", new Supplier() { // from class: com.sunia.HTREnginev2.wsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$11;
                    lambda$getGenericProperties$11 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$11();
                    return lambda$getGenericProperties$11;
                }
            });
            linkedHashMap.put("dashedLineCapType", new Supplier() { // from class: com.sunia.HTREnginev2.zsh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$12;
                    lambda$getGenericProperties$12 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$12();
                    return lambda$getGenericProperties$12;
                }
            });
            linkedHashMap.put("dashOffset", new Supplier() { // from class: com.sunia.HTREnginev2.ath
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$13;
                    lambda$getGenericProperties$13 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$13();
                    return lambda$getGenericProperties$13;
                }
            });
            linkedHashMap.put("dashedLineData", new Supplier() { // from class: com.sunia.HTREnginev2.bth
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$14;
                    lambda$getGenericProperties$14 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$14();
                    return lambda$getGenericProperties$14;
                }
            });
            linkedHashMap.put("penAlignment", new Supplier() { // from class: com.sunia.HTREnginev2.cth
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$15;
                    lambda$getGenericProperties$15 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$15();
                    return lambda$getGenericProperties$15;
                }
            });
            linkedHashMap.put("compoundLineData", new Supplier() { // from class: com.sunia.HTREnginev2.dth
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$16;
                    lambda$getGenericProperties$16 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$16();
                    return lambda$getGenericProperties$16;
                }
            });
            linkedHashMap.put("customStartCap", new Supplier() { // from class: com.sunia.HTREnginev2.eth
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$17;
                    lambda$getGenericProperties$17 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$17();
                    return lambda$getGenericProperties$17;
                }
            });
            linkedHashMap.put("customEndCap", new Supplier() { // from class: com.sunia.HTREnginev2.fth
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$18;
                    lambda$getGenericProperties$18 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$18();
                    return lambda$getGenericProperties$18;
                }
            });
            linkedHashMap.put("brush", new Supplier() { // from class: com.sunia.HTREnginev2.gth
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$19;
                    lambda$getGenericProperties$19 = HemfPlusPen.EmfPlusPen.this.lambda$getGenericProperties$19();
                    return lambda$getGenericProperties$19;
                }
            });
            return Collections.unmodifiableMap(linkedHashMap);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public HemfPlusHeader.EmfPlusGraphicsVersion getGraphicsVersion() {
            return this.graphicsVersion;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public long init(LittleEndianInputStream littleEndianInputStream, long j, HemfPlusObject.EmfPlusObjectType emfPlusObjectType, int i) throws IOException {
            long init = this.graphicsVersion.init(littleEndianInputStream);
            this.type = littleEndianInputStream.readInt();
            this.penDataFlags = littleEndianInputStream.readInt();
            this.unitType = HemfPlusDraw.EmfPlusUnitType.valueOf(littleEndianInputStream.readInt());
            this.penWidth = littleEndianInputStream.readFloat();
            long j2 = init + 16;
            if (TRANSFORM.isSet(this.penDataFlags)) {
                j2 += HemfFill.readXForm(littleEndianInputStream, this.trans);
            }
            if (START_CAP.isSet(this.penDataFlags)) {
                this.startCap = EmfPlusLineCapType.valueOf(littleEndianInputStream.readInt());
                j2 += 4;
            }
            if (END_CAP.isSet(this.penDataFlags)) {
                this.endCap = EmfPlusLineCapType.valueOf(littleEndianInputStream.readInt());
                j2 += 4;
            }
            if (JOIN.isSet(this.penDataFlags)) {
                this.lineJoin = EmfPlusLineJoin.valueOf(littleEndianInputStream.readInt());
                j2 += 4;
            }
            if (MITER_LIMIT.isSet(this.penDataFlags)) {
                this.miterLimit = Double.valueOf(littleEndianInputStream.readFloat());
                j2 += 4;
            }
            if (LINE_STYLE.isSet(this.penDataFlags)) {
                this.style = EmfPlusLineStyle.valueOf(littleEndianInputStream.readInt());
                j2 += 4;
            }
            if (DASHED_LINE_CAP.isSet(this.penDataFlags)) {
                this.dashedLineCapType = EmfPlusDashedLineCapType.valueOf(littleEndianInputStream.readInt());
                j2 += 4;
            }
            if (DASHED_LINE_OFFSET.isSet(this.penDataFlags)) {
                this.dashOffset = Double.valueOf(littleEndianInputStream.readFloat());
                j2 += 4;
            }
            if (DASHED_LINE.isSet(this.penDataFlags)) {
                int readInt = littleEndianInputStream.readInt();
                if (readInt < 0 || readInt > 1000) {
                    throw new IllegalStateException("Invalid dash data size");
                }
                this.dashedLineData = new float[readInt];
                for (int i2 = 0; i2 < readInt; i2++) {
                    this.dashedLineData[i2] = littleEndianInputStream.readFloat();
                }
                j2 += (readInt + 1) * 4;
            }
            if (NON_CENTER.isSet(this.penDataFlags)) {
                this.penAlignment = EmfPlusPenAlignment.valueOf(littleEndianInputStream.readInt());
                j2 += 4;
            }
            if (COMPOUND_LINE.isSet(this.penDataFlags)) {
                int readInt2 = littleEndianInputStream.readInt();
                if (readInt2 < 0 || readInt2 > 1000) {
                    throw new IllegalStateException("Invalid compound line data size");
                }
                this.compoundLineData = new double[readInt2];
                for (int i3 = 0; i3 < readInt2; i3++) {
                    this.compoundLineData[i3] = littleEndianInputStream.readFloat();
                }
                j2 += (readInt2 + 1) * 4;
            }
            if (CUSTOM_START_CAP.isSet(this.penDataFlags)) {
                j2 += initCustomCap(new Consumer() { // from class: com.sunia.HTREnginev2.xsh
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        HemfPlusPen.EmfPlusPen.this.lambda$init$0((HemfPlusPen.EmfPlusCustomLineCap) obj);
                    }
                }, littleEndianInputStream);
            }
            if (CUSTOM_END_CAP.isSet(this.penDataFlags)) {
                j2 += initCustomCap(new Consumer() { // from class: com.sunia.HTREnginev2.ysh
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        HemfPlusPen.EmfPlusPen.this.lambda$init$1((HemfPlusPen.EmfPlusCustomLineCap) obj);
                    }
                }, littleEndianInputStream);
            }
            return j2 + this.brush.init(littleEndianInputStream, j - j2, HemfPlusObject.EmfPlusObjectType.BRUSH, 0);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public HemfPlusObject.EmfPlusObjectType getGenericRecordType() {
            return HemfPlusObject.EmfPlusObjectType.PEN;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusPenAlignment {
        CENTER(0),
        INSET(1),
        LEFT(2),
        OUTSET(3),
        RIGHT(4);


        /* renamed from: id */
        public final int f111366id;

        EmfPlusPenAlignment(int i) {
            this.f111366id = i;
        }

        public static EmfPlusPenAlignment valueOf(int i) {
            for (EmfPlusPenAlignment emfPlusPenAlignment : values()) {
                if (emfPlusPenAlignment.f111366id == i) {
                    return emfPlusPenAlignment;
                }
            }
            return null;
        }
    }
}
