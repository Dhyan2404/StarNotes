package org.apache.poi.hemf.record.emfplus;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.poh;
import com.sunia.HTREnginev2.roh;
import com.sunia.HTREnginev2.soh;
import java.awt.Color;
import java.awt.geom.AffineTransform;
import java.awt.geom.Area;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.PrimitiveIterator;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfFill;
import org.apache.poi.hemf.record.emfplus.HemfPlusDraw;
import org.apache.poi.hemf.record.emfplus.HemfPlusMisc;
import org.apache.poi.hwmf.record.HwmfBrushStyle;
import org.apache.poi.hwmf.record.HwmfColorRef;
import org.apache.poi.hwmf.record.HwmfMisc;
import org.apache.poi.hwmf.record.HwmfPenStyle;
import org.apache.poi.hwmf.record.HwmfTernaryRasterOp;
import org.apache.poi.hwmf.record.HwmfText;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class HemfPlusDraw {
    private static final int MAX_OBJECT_SIZE = 1000000;

    /* loaded from: classes12.dex */
    public interface EmfPlusCompressed {
        public static final BitField COMPRESSED = BitFieldFactory.getInstance(16384);

        int getFlags();

        default BiFunction<LittleEndianInputStream, Rectangle2D, Integer> getReadRect() {
            return isCompressed() ? new BiFunction() { // from class: com.sunia.HTREnginev2.boh
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Integer.valueOf(HemfPlusDraw.readRectS((LittleEndianInputStream) obj, (Rectangle2D) obj2));
                }
            } : new BiFunction() { // from class: com.sunia.HTREnginev2.coh
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Integer.valueOf(HemfPlusDraw.readRectF((LittleEndianInputStream) obj, (Rectangle2D) obj2));
                }
            };
        }

        default boolean isCompressed() {
            return COMPRESSED.isSet(getFlags());
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusDrawDriverString implements HemfPlusRecord, HemfPlusMisc.EmfPlusObjectId, EmfPlusSolidColor {
        private int brushId;
        private int flags;
        private String glyphs;
        private int optionsFlags;
        private static final BitField CMAP_LOOKUP = BitFieldFactory.getInstance(1);
        private static final BitField VERTICAL = BitFieldFactory.getInstance(2);
        private static final BitField REALIZED_ADVANCE = BitFieldFactory.getInstance(4);
        private static final BitField LIMIT_SUBPIXEL = BitFieldFactory.getInstance(8);
        private static final int[] OPTIONS_MASK = {1, 2, 4, 8};
        private static final String[] OPTIONS_NAMES = {"CMAP_LOOKUP", "VERTICAL", "REALIZED_ADVANCE", "LIMIT_SUBPIXEL"};
        private final List<Point2D> glyphPos = new ArrayList();
        private final AffineTransform transformMatrix = new AffineTransform();

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$draw$0(PrimitiveIterator.OfInt ofInt, HemfGraphics hemfGraphics, Point2D point2D) {
            byte[] bytes = new String(new int[]{ofInt.next().intValue()}, 0, 1).getBytes(StandardCharsets.UTF_16LE);
            hemfGraphics.drawString(bytes, bytes.length, point2D, null, null, null, null, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Number lambda$getGenericProperties$1() {
            return Integer.valueOf(this.optionsFlags);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return this.glyphs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return this.glyphPos;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return this.transformMatrix;
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [java.util.PrimitiveIterator$OfInt] */
        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(final HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            properties.setTextAlignLatin(HwmfText.HwmfTextAlignment.LEFT);
            properties.setTextVAlignLatin(HwmfText.HwmfTextVerticalAlignment.BASELINE);
            hemfGraphics.applyPlusObjectTableEntry(getObjectId());
            if (isSolidColor()) {
                properties.setTextColor(new HwmfColorRef(getSolidColor()));
            } else {
                hemfGraphics.applyPlusObjectTableEntry(getBrushId());
            }
            if (REALIZED_ADVANCE.isSet(this.optionsFlags)) {
                byte[] bytes = this.glyphs.getBytes(StandardCharsets.UTF_16LE);
                hemfGraphics.drawString(bytes, bytes.length, this.glyphPos.get(0), null, null, null, null, true);
            } else {
                final ?? it2 = this.glyphs.codePoints().iterator();
                this.glyphPos.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.doh
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        HemfPlusDraw.EmfPlusDrawDriverString.lambda$draw$0(it2, hemfGraphics, (Point2D) obj);
                    }
                });
            }
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getBrushIdValue() {
            return this.brushId;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.drawDriverString;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.eoh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusDrawDriverString.this.getFlags());
                }
            }, "brushId", new Supplier() { // from class: com.sunia.HTREnginev2.foh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusDrawDriverString.this.getBrushId());
                }
            }, "optionsFlags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.goh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Number lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfPlusDraw.EmfPlusDrawDriverString.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, OPTIONS_MASK, OPTIONS_NAMES), "glyphs", new Supplier() { // from class: com.sunia.HTREnginev2.hoh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusDraw.EmfPlusDrawDriverString.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            }, "glyphPos", new Supplier() { // from class: com.sunia.HTREnginev2.ioh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfPlusDraw.EmfPlusDrawDriverString.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            }, Constants.ELEMNAME_TRANSFORM_STRING, new Supplier() { // from class: com.sunia.HTREnginev2.joh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfPlusDraw.EmfPlusDrawDriverString.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.brushId = littleEndianInputStream.readInt();
            this.optionsFlags = littleEndianInputStream.readInt();
            int readInt = littleEndianInputStream.readInt();
            int readInt2 = littleEndianInputStream.readInt();
            byte[] byteArray = IOUtils.toByteArray(littleEndianInputStream, readInt2 * 2, 1000000);
            this.glyphs = StringUtil.getFromUnicodeLE(byteArray);
            int length = byteArray.length + 16;
            REALIZED_ADVANCE.isSet(this.optionsFlags);
            for (int i2 = 0; i2 < readInt2; i2++) {
                Point2D.Double r7 = new Point2D.Double();
                length += HemfPlusDraw.readPointF(littleEndianInputStream, r7);
                this.glyphPos.add(r7);
            }
            if (readInt != 0) {
                length += HemfFill.readXForm(littleEndianInputStream, this.transformMatrix);
            }
            return length;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusDrawImage implements HemfPlusRecord, HemfPlusMisc.EmfPlusObjectId, EmfPlusCompressed {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private int flags;
        private int imageAttributesID;
        private EmfPlusUnitType srcUnit;
        private final Rectangle2D srcRect = new Rectangle2D.Double();
        private final Rectangle2D rectData = new Rectangle2D.Double();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.imageAttributesID);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return this.srcUnit;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return this.srcRect;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return this.rectData;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.applyPlusObjectTableEntry(this.imageAttributesID);
            hemfGraphics.applyPlusObjectTableEntry(getObjectId());
            HemfDrawProperties properties = hemfGraphics.getProperties();
            properties.setRasterOp3(HwmfTernaryRasterOp.SRCCOPY);
            properties.setBkMode(HwmfMisc.WmfSetBkMode.HwmfBkMode.TRANSPARENT);
            hemfGraphics.drawImage(properties.getEmfPlusImage(), this.srcRect, this.rectData);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.drawImage;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.koh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusDrawImage.this.getFlags());
                }
            }, "imageAttributesID", new Supplier() { // from class: com.sunia.HTREnginev2.loh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusDraw.EmfPlusDrawImage.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "srcUnit", new Supplier() { // from class: com.sunia.HTREnginev2.moh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfPlusDraw.EmfPlusDrawImage.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "srcRect", new Supplier() { // from class: com.sunia.HTREnginev2.noh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusDraw.EmfPlusDrawImage.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            }, "rectData", new Supplier() { // from class: com.sunia.HTREnginev2.ooh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfPlusDraw.EmfPlusDrawImage.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.imageAttributesID = littleEndianInputStream.readInt();
            this.srcUnit = EmfPlusUnitType.valueOf(littleEndianInputStream.readInt());
            return HemfPlusDraw.readRectF(littleEndianInputStream, this.srcRect) + 8 + getReadRect().apply(littleEndianInputStream, this.rectData).intValue();
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusDrawImagePoints implements HemfPlusRecord, HemfPlusMisc.EmfPlusObjectId, EmfPlusCompressed, EmfPlusRelativePosition {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final BitField EFFECT = BitFieldFactory.getInstance(8192);
        private int flags;
        private int imageAttributesID;
        private EmfPlusUnitType srcUnit;
        private final Rectangle2D srcRect = new Rectangle2D.Double();
        private final Point2D upperLeft = new Point2D.Double();
        private final Point2D lowerRight = new Point2D.Double();
        private final Point2D lowerLeft = new Point2D.Double();
        private final AffineTransform trans = new AffineTransform();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.imageAttributesID);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return this.srcUnit;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return this.srcRect;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return this.upperLeft;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return this.lowerLeft;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$5() {
            return this.lowerRight;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$6() {
            return this.trans;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            hemfGraphics.applyPlusObjectTableEntry(this.imageAttributesID);
            hemfGraphics.applyPlusObjectTableEntry(getObjectId());
            ImageRenderer emfPlusImage = properties.getEmfPlusImage();
            if (emfPlusImage == null) {
                return;
            }
            AffineTransform transform = hemfGraphics.getTransform();
            AffineTransform affineTransform = (AffineTransform) transform.clone();
            HwmfTernaryRasterOp rasterOp3 = properties.getRasterOp3();
            HwmfMisc.WmfSetBkMode.HwmfBkMode bkMode = properties.getBkMode();
            try {
                affineTransform.concatenate(this.trans);
                hemfGraphics.setTransform(affineTransform);
                properties.setRasterOp3(HwmfTernaryRasterOp.SRCCOPY);
                properties.setBkMode(HwmfMisc.WmfSetBkMode.HwmfBkMode.TRANSPARENT);
                Rectangle2D rectangle2D = this.srcRect;
                hemfGraphics.drawImage(emfPlusImage, rectangle2D, rectangle2D);
            } finally {
                properties.setBkMode(bkMode);
                properties.setRasterOp3(rasterOp3);
                hemfGraphics.setTransform(transform);
            }
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.drawImagePoints;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("flags", new Supplier() { // from class: com.sunia.HTREnginev2.toh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusDrawImagePoints.this.getFlags());
                }
            });
            linkedHashMap.put("imageAttributesID", new Supplier() { // from class: com.sunia.HTREnginev2.uoh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusDraw.EmfPlusDrawImagePoints.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
            linkedHashMap.put("srcUnit", new Supplier() { // from class: com.sunia.HTREnginev2.voh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfPlusDraw.EmfPlusDrawImagePoints.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
            linkedHashMap.put("srcRect", new Supplier() { // from class: com.sunia.HTREnginev2.woh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfPlusDraw.EmfPlusDrawImagePoints.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
            linkedHashMap.put("upperLeft", new Supplier() { // from class: com.sunia.HTREnginev2.xoh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfPlusDraw.EmfPlusDrawImagePoints.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            });
            linkedHashMap.put("lowerLeft", new Supplier() { // from class: com.sunia.HTREnginev2.yoh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfPlusDraw.EmfPlusDrawImagePoints.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
            linkedHashMap.put("lowerRight", new Supplier() { // from class: com.sunia.HTREnginev2.zoh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$5;
                    lambda$getGenericProperties$5 = HemfPlusDraw.EmfPlusDrawImagePoints.this.lambda$getGenericProperties$5();
                    return lambda$getGenericProperties$5;
                }
            });
            linkedHashMap.put(Constants.ELEMNAME_TRANSFORM_STRING, new Supplier() { // from class: com.sunia.HTREnginev2.qoh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$6;
                    lambda$getGenericProperties$6 = HemfPlusDraw.EmfPlusDrawImagePoints.this.lambda$getGenericProperties$6();
                    return lambda$getGenericProperties$6;
                }
            });
            return Collections.unmodifiableMap(linkedHashMap);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.imageAttributesID = littleEndianInputStream.readInt();
            this.srcUnit = EmfPlusUnitType.valueOf(littleEndianInputStream.readInt());
            int readRectF = HemfPlusDraw.readRectF(littleEndianInputStream, this.srcRect) + 8;
            littleEndianInputStream.readInt();
            int i2 = readRectF + 4;
            BiFunction pohVar = isRelativePosition() ? new poh() : isCompressed() ? new roh() : new soh();
            int intValue = i2 + ((Integer) pohVar.apply(littleEndianInputStream, this.lowerLeft)).intValue() + ((Integer) pohVar.apply(littleEndianInputStream, this.lowerRight)).intValue() + ((Integer) pohVar.apply(littleEndianInputStream, this.upperLeft)).intValue();
            double[][] data = MatrixUtils.createRealMatrix(new double[][]{new double[]{this.lowerLeft.getX(), this.lowerRight.getX(), this.upperLeft.getX()}, new double[]{this.lowerLeft.getY(), this.lowerRight.getY(), this.upperLeft.getY()}, new double[]{1.0d, 1.0d, 1.0d}}).multiply(new LUDecomposition(MatrixUtils.createRealMatrix(new double[][]{new double[]{this.srcRect.getMinX(), this.srcRect.getMaxX(), this.srcRect.getMinX()}, new double[]{this.srcRect.getMinY(), this.srcRect.getMinY(), this.srcRect.getMaxY()}, new double[]{1.0d, 1.0d, 1.0d}})).getSolver().getInverse()).getData();
            this.trans.setTransform(HemfPlusDraw.round10(data[0][0]), HemfPlusDraw.round10(data[1][0]), HemfPlusDraw.round10(data[0][1]), HemfPlusDraw.round10(data[1][1]), HemfPlusDraw.round10(data[0][2]), HemfPlusDraw.round10(data[1][2]));
            return intValue;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusDrawPath implements HemfPlusRecord, HemfPlusMisc.EmfPlusObjectId {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private int flags;
        private int penId;

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.applyPlusObjectTableEntry(this.penId);
            hemfGraphics.applyPlusObjectTableEntry(getObjectId());
            Path2D path = hemfGraphics.getProperties().getPath();
            if (path != null) {
                hemfGraphics.draw(path);
            }
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.drawPath;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.aph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusDrawPath.this.getFlags());
                }
            }, "penId", new Supplier() { // from class: com.sunia.HTREnginev2.bph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusDrawPath.this.getPenId());
                }
            });
        }

        public int getPenId() {
            return this.penId;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.penId = littleEndianInputStream.readInt();
            return 4L;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfPlusRecordType getGenericRecordType() {
            return getEmfPlusRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusDrawRects implements HemfPlusRecord, HemfPlusMisc.EmfPlusObjectId, EmfPlusCompressed {
        private int flags;
        private final List<Rectangle2D> rectData = new ArrayList();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return this.rectData;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.drawRects;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.cph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusDrawRects.this.getFlags());
                }
            }, "rectData", new Supplier() { // from class: com.sunia.HTREnginev2.dph
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusDraw.EmfPlusDrawRects.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            int readInt = littleEndianInputStream.readInt();
            BiFunction<LittleEndianInputStream, Rectangle2D, Integer> readRect = getReadRect();
            int i2 = 4;
            for (int i3 = 0; i3 < readInt; i3++) {
                i2 += readRect.apply(littleEndianInputStream, new Rectangle2D.Double()).intValue();
            }
            return i2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusFillPath extends EmfPlusFillRegion {
        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusFillRegion, org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.fillPath;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusFillRects implements HemfPlusRecord, EmfPlusCompressed, EmfPlusSolidColor {
        private int brushId;
        private int flags;
        private final ArrayList<Rectangle2D> rectData = new ArrayList<>();

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            applyColor(hemfGraphics);
            final Area area = new Area();
            this.rectData.stream().map(new Function() { // from class: com.sunia.HTREnginev2.iph
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new Area((Rectangle2D) obj);
                }
            }).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.jph
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Area.this.add((Area) obj);
                }
            });
            HwmfPenStyle penStyle = properties.getPenStyle();
            try {
                properties.setPenStyle(null);
                hemfGraphics.fill(area);
            } finally {
                properties.setPenStyle(penStyle);
            }
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getBrushIdValue() {
            return this.brushId;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.fillRects;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.eph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusFillRects.this.getFlags());
                }
            }, "brushId", new Supplier() { // from class: com.sunia.HTREnginev2.fph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusFillRects.this.getBrushId());
                }
            }, "brushColor", new Supplier() { // from class: com.sunia.HTREnginev2.gph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusDraw.EmfPlusFillRects.this.getSolidColor();
                }
            }, "rectData", new Supplier() { // from class: com.sunia.HTREnginev2.hph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusDraw.EmfPlusFillRects.this.getRectData();
                }
            });
        }

        public List<Rectangle2D> getRectData() {
            return this.rectData;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.brushId = littleEndianInputStream.readInt();
            int readInt = littleEndianInputStream.readInt();
            BiFunction<LittleEndianInputStream, Rectangle2D, Integer> readRect = getReadRect();
            this.rectData.ensureCapacity(readInt);
            int i2 = 8;
            for (int i3 = 0; i3 < readInt; i3++) {
                Rectangle2D.Double r7 = new Rectangle2D.Double();
                i2 += readRect.apply(littleEndianInputStream, r7).intValue();
                this.rectData.add(r7);
            }
            return i2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfPlusRecordType getGenericRecordType() {
            return getEmfPlusRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusFillRegion implements HemfPlusRecord, EmfPlusSolidColor, HemfPlusMisc.EmfPlusObjectId {
        private int brushId;
        private int flags;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.brushId);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            applyColor(hemfGraphics);
            hemfGraphics.applyPlusObjectTableEntry(getObjectId());
            hemfGraphics.fill(hemfGraphics.getProperties().getPath());
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getBrushIdValue() {
            return this.brushId;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.fillRegion;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.kph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusDraw.EmfPlusFillRegion.this.getFlags());
                }
            }, "brushId", new Supplier() { // from class: com.sunia.HTREnginev2.lph
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusDraw.EmfPlusFillRegion.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.brushId = littleEndianInputStream.readInt();
            return 4L;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public interface EmfPlusRelativePosition {
        public static final BitField POSITION = BitFieldFactory.getInstance(2048);

        int getFlags();

        default boolean isRelativePosition() {
            return POSITION.isSet(getFlags());
        }
    }

    /* loaded from: classes12.dex */
    public interface EmfPlusSolidColor {
        public static final BitField SOLID_COLOR = BitFieldFactory.getInstance(32768);

        default void applyColor(HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            if (!isSolidColor()) {
                hemfGraphics.applyPlusObjectTableEntry(getBrushId());
            } else {
                properties.setBrushStyle(HwmfBrushStyle.BS_SOLID);
                properties.setBrushColor(new HwmfColorRef(getSolidColor()));
            }
        }

        default int getBrushId() {
            if (isSolidColor()) {
                return -1;
            }
            return getBrushIdValue();
        }

        int getBrushIdValue();

        int getFlags();

        default Color getSolidColor() {
            if (isSolidColor()) {
                return HemfPlusDraw.readARGB(getBrushIdValue());
            }
            return null;
        }

        default boolean isSolidColor() {
            return SOLID_COLOR.isSet(getFlags());
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusUnitType {
        World(0),
        Display(1),
        Pixel(2),
        Point(3),
        Inch(4),
        Document(5),
        Millimeter(6);


        /* renamed from: id */
        public final int f111345id;

        EmfPlusUnitType(int i) {
            this.f111345id = i;
        }

        public static EmfPlusUnitType valueOf(int i) {
            for (EmfPlusUnitType emfPlusUnitType : values()) {
                if (emfPlusUnitType.f111345id == i) {
                    return emfPlusUnitType;
                }
            }
            return null;
        }
    }

    private HemfPlusDraw() {
    }

    public static Color readARGB(int i) {
        return new Color((i >>> 16) & 255, (i >>> 8) & 255, i & 255, (i >>> 24) & 255);
    }

    private static int readEmfPlusInteger(LittleEndianInputStream littleEndianInputStream, int[] iArr) {
        byte readByte = littleEndianInputStream.readByte();
        iArr[0] = readByte;
        if ((readByte & 128) == 0) {
            return 1;
        }
        iArr[0] = ((littleEndianInputStream.readByte() & 255) | (readByte << 8)) & 32767;
        return 2;
    }

    public static int readPointF(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
        point2D.setLocation(littleEndianInputStream.readFloat(), littleEndianInputStream.readFloat());
        return 8;
    }

    public static int readPointR(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
        int[] iArr = {0};
        int readEmfPlusInteger = readEmfPlusInteger(littleEndianInputStream, iArr);
        double d = iArr[0];
        int readEmfPlusInteger2 = readEmfPlusInteger + readEmfPlusInteger(littleEndianInputStream, iArr);
        point2D.setLocation(d, iArr[0]);
        return readEmfPlusInteger2;
    }

    public static int readPointS(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
        point2D.setLocation(littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
        return 4;
    }

    public static int readRectF(LittleEndianInputStream littleEndianInputStream, Rectangle2D rectangle2D) {
        rectangle2D.setRect(littleEndianInputStream.readFloat(), littleEndianInputStream.readFloat(), littleEndianInputStream.readFloat(), littleEndianInputStream.readFloat());
        return 16;
    }

    public static int readRectS(LittleEndianInputStream littleEndianInputStream, Rectangle2D rectangle2D) {
        rectangle2D.setRect(littleEndianInputStream.readShort(), littleEndianInputStream.readShort(), littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
        return 8;
    }

    public static double round10(double d) {
        return BigDecimal.valueOf(d).setScale(10, RoundingMode.HALF_UP).doubleValue();
    }
}
