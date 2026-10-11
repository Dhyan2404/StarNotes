package org.apache.poi.hemf.record.emf;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sunia.HTREnginev2.gon;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Area;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Supplier;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfFill;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfBitmapDib;
import org.apache.poi.hwmf.record.HwmfColorRef;
import org.apache.poi.hwmf.record.HwmfDraw;
import org.apache.poi.hwmf.record.HwmfFill;
import org.apache.poi.hwmf.record.HwmfRegionMode;
import org.apache.poi.hwmf.record.HwmfTernaryRasterOp;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public final class HemfFill {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* loaded from: classes12.dex */
    public static class EmfAlphaBlend implements HemfRecord {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        protected byte alphaFormat;
        protected byte blendFlags;
        protected byte blendOperation;
        protected int srcConstantAlpha;
        protected HwmfFill.ColorUsage usageSrc;
        protected final Rectangle2D bounds = new Rectangle2D.Double();
        protected final Rectangle2D destRect = new Rectangle2D.Double();
        protected final Rectangle2D srcRect = new Rectangle2D.Double();
        protected final AffineTransform xFormSrc = new AffineTransform();
        protected final HwmfColorRef bkColorSrc = new HwmfColorRef();
        protected final HwmfBitmapDib bitmap = new HwmfBitmapDib();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return this.bounds;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return this.destRect;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$10() {
            return this.bitmap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return this.srcRect;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return Byte.valueOf(this.blendOperation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return Byte.valueOf(this.blendFlags);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$5() {
            return Integer.valueOf(this.srcConstantAlpha);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$6() {
            return Byte.valueOf(this.alphaFormat);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$7() {
            return this.xFormSrc;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$8() {
            return this.bkColorSrc;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$9() {
            return this.usageSrc;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.alphaBlend;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.vhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
            linkedHashMap.put("destRect", new Supplier() { // from class: com.sunia.HTREnginev2.yhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
            linkedHashMap.put("srcRect", new Supplier() { // from class: com.sunia.HTREnginev2.zhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
            linkedHashMap.put("blendOperation", new Supplier() { // from class: com.sunia.HTREnginev2.aih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            });
            linkedHashMap.put("blendFlags", new Supplier() { // from class: com.sunia.HTREnginev2.bih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
            linkedHashMap.put("srcConstantAlpha", new Supplier() { // from class: com.sunia.HTREnginev2.cih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$5;
                    lambda$getGenericProperties$5 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$5();
                    return lambda$getGenericProperties$5;
                }
            });
            linkedHashMap.put("alphaFormat", new Supplier() { // from class: com.sunia.HTREnginev2.dih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$6;
                    lambda$getGenericProperties$6 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$6();
                    return lambda$getGenericProperties$6;
                }
            });
            linkedHashMap.put("xFormSrc", new Supplier() { // from class: com.sunia.HTREnginev2.eih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$7;
                    lambda$getGenericProperties$7 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$7();
                    return lambda$getGenericProperties$7;
                }
            });
            linkedHashMap.put("bkColorSrc", new Supplier() { // from class: com.sunia.HTREnginev2.fih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$8;
                    lambda$getGenericProperties$8 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$8();
                    return lambda$getGenericProperties$8;
                }
            });
            linkedHashMap.put("usageSrc", new Supplier() { // from class: com.sunia.HTREnginev2.whh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$9;
                    lambda$getGenericProperties$9 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$9();
                    return lambda$getGenericProperties$9;
                }
            });
            linkedHashMap.put("bitmap", new Supplier() { // from class: com.sunia.HTREnginev2.xhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$10;
                    lambda$getGenericProperties$10 = HemfFill.EmfAlphaBlend.this.lambda$getGenericProperties$10();
                    return lambda$getGenericProperties$10;
                }
            });
            return Collections.unmodifiableMap(linkedHashMap);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            int readIndex = littleEndianInputStream.getReadIndex();
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds) + HemfFill.readBounds2(littleEndianInputStream, this.destRect);
            this.blendOperation = littleEndianInputStream.readByte();
            this.blendFlags = littleEndianInputStream.readByte();
            this.srcConstantAlpha = littleEndianInputStream.readUByte();
            this.alphaFormat = littleEndianInputStream.readByte();
            int readInt = littleEndianInputStream.readInt();
            int readInt2 = littleEndianInputStream.readInt();
            long readXForm = readRectL + 12 + HemfFill.readXForm(littleEndianInputStream, this.xFormSrc) + this.bkColorSrc.init(littleEndianInputStream);
            this.usageSrc = HwmfFill.ColorUsage.valueOf((int) littleEndianInputStream.readUInt());
            int readUInt = (int) littleEndianInputStream.readUInt();
            int readUInt2 = (int) littleEndianInputStream.readUInt();
            int readUInt3 = (int) littleEndianInputStream.readUInt();
            int readUInt4 = (int) littleEndianInputStream.readUInt();
            this.srcRect.setRect(readInt, readInt2, littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
            return readXForm + 28 + HemfFill.readBitmap(littleEndianInputStream, this.bitmap, readIndex, readUInt, readUInt2, readUInt3, readUInt4);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfBitBlt extends EmfStretchBlt {
        @Override // org.apache.poi.hemf.record.emf.HemfFill.EmfStretchBlt, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.bitBlt;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfFill.EmfStretchBlt
        public boolean srcEqualsDstDimension() {
            return false;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfExtFloodFill extends HwmfFill.WmfExtFloodFill implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.extFloodFill;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long readPointL = HemfDraw.readPointL(littleEndianInputStream, this.start) + this.colorRef.init(littleEndianInputStream);
            this.mode = HwmfFill.WmfExtFloodFill.HwmfFloodFillMode.values()[(int) littleEndianInputStream.readUInt()];
            return readPointL + 4;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfExtSelectClipRgn implements HemfRecord {
        protected HwmfRegionMode regionMode;
        protected final List<Rectangle2D> rgnRects = new ArrayList();

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.setClip(getShape(), this.regionMode, true);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.extSelectClipRgn;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("regionMode", new Supplier() { // from class: com.sunia.HTREnginev2.gih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfExtSelectClipRgn.this.getRegionMode();
                }
            }, "rgnRects", new Supplier() { // from class: com.sunia.HTREnginev2.hih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfExtSelectClipRgn.this.getRgnRects();
                }
            });
        }

        public HwmfRegionMode getRegionMode() {
            return this.regionMode;
        }

        public List<Rectangle2D> getRgnRects() {
            return this.rgnRects;
        }

        public Shape getShape() {
            return HemfFill.getRgnShape(this.rgnRects);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            littleEndianInputStream.readUInt();
            HwmfRegionMode valueOf = HwmfRegionMode.valueOf((int) littleEndianInputStream.readUInt());
            this.regionMode = valueOf;
            if (valueOf != HwmfRegionMode.RGN_COPY) {
                return 8 + HemfFill.readRgnData(littleEndianInputStream, this.rgnRects);
            }
            return 8L;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfFillRgn extends HwmfFill.WmfFillRegion implements HemfRecord {
        protected final Rectangle2D bounds = new Rectangle2D.Double();
        protected final List<Rectangle2D> rgnRects = new ArrayList();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.fillRgn;
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfFillRegion, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.iih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfFill.EmfFillRgn.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.jih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfFillRgn.this.getBounds();
                }
            }, "rgnRects", new Supplier() { // from class: com.sunia.HTREnginev2.kih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfFillRgn.this.getRgnRects();
                }
            });
        }

        public List<Rectangle2D> getRgnRects() {
            return this.rgnRects;
        }

        public Shape getShape() {
            return HemfFill.getRgnShape(this.rgnRects);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            littleEndianInputStream.readUInt();
            this.brushIndex = (int) littleEndianInputStream.readUInt();
            return readRectL + 8 + HemfFill.readRgnData(littleEndianInputStream, this.rgnRects);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfFrameRgn extends HwmfDraw.WmfFrameRegion implements HemfRecord {
        private final Rectangle2D bounds = new Rectangle2D.Double();
        private final List<Rectangle2D> rgnRects = new ArrayList();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfFrameRegion, org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.applyObjectTableEntry(this.brushIndex);
            hwmfGraphics.fill(getShape());
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.frameRgn;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfFrameRegion, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.lih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfFill.EmfFrameRgn.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.mih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfFrameRgn.this.getBounds();
                }
            }, "rgnRects", new Supplier() { // from class: com.sunia.HTREnginev2.nih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfFrameRgn.this.getRgnRects();
                }
            });
        }

        public List<Rectangle2D> getRgnRects() {
            return this.rgnRects;
        }

        public Shape getShape() {
            return HemfFill.getRgnShape(this.rgnRects);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            littleEndianInputStream.readUInt();
            this.brushIndex = (int) littleEndianInputStream.readUInt();
            this.frame.setSize(littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
            return readRectL + 16 + HemfFill.readRgnData(littleEndianInputStream, this.rgnRects);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfInvertRgn implements HemfRecord {
        protected final Rectangle2D bounds = new Rectangle2D.Double();
        protected final List<Rectangle2D> rgnRects = new ArrayList();

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.invertRgn;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.oih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfInvertRgn.this.getBounds();
                }
            }, "rgnRects", new Supplier() { // from class: com.sunia.HTREnginev2.pih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfInvertRgn.this.getRgnRects();
                }
            });
        }

        public List<Rectangle2D> getRgnRects() {
            return this.rgnRects;
        }

        public Shape getShape() {
            return HemfFill.getRgnShape(this.rgnRects);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            littleEndianInputStream.readUInt();
            return readRectL + 4 + HemfFill.readRgnData(littleEndianInputStream, this.rgnRects);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPaintRgn extends EmfInvertRgn {
        @Override // org.apache.poi.hemf.record.emf.HemfFill.EmfInvertRgn, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.paintRgn;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetDiBitsToDevice implements HemfRecord {
        protected HwmfFill.ColorUsage usageSrc;
        protected final Rectangle2D bounds = new Rectangle2D.Double();
        protected final Point2D dest = new Point2D.Double();
        protected final Rectangle2D src = new Rectangle2D.Double();
        protected final HwmfBitmapDib bitmap = new HwmfBitmapDib();

        public HwmfBitmapDib getBitmap() {
            return this.bitmap;
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        public Point2D getDest() {
            return this.dest;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setDiBitsToDevice;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.qih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfSetDiBitsToDevice.this.getBounds();
                }
            }, "dest", new Supplier() { // from class: com.sunia.HTREnginev2.rih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfSetDiBitsToDevice.this.getDest();
                }
            }, Constant.SRC_TAG, new Supplier() { // from class: com.sunia.HTREnginev2.sih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfSetDiBitsToDevice.this.getSrc();
                }
            }, "usageSrc", new Supplier() { // from class: com.sunia.HTREnginev2.tih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfSetDiBitsToDevice.this.getUsageSrc();
                }
            }, "bitmap", new Supplier() { // from class: com.sunia.HTREnginev2.uih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfSetDiBitsToDevice.this.getBitmap();
                }
            });
        }

        public Rectangle2D getSrc() {
            return this.src;
        }

        public HwmfFill.ColorUsage getUsageSrc() {
            return this.usageSrc;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            int readIndex = littleEndianInputStream.getReadIndex();
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds) + HemfDraw.readPointL(littleEndianInputStream, this.dest) + HemfFill.readBounds2(littleEndianInputStream, this.src);
            int readUInt = (int) littleEndianInputStream.readUInt();
            int readUInt2 = (int) littleEndianInputStream.readUInt();
            int readUInt3 = (int) littleEndianInputStream.readUInt();
            int readUInt4 = (int) littleEndianInputStream.readUInt();
            this.usageSrc = HwmfFill.ColorUsage.valueOf((int) littleEndianInputStream.readUInt());
            littleEndianInputStream.readUInt();
            littleEndianInputStream.readUInt();
            return readRectL + 28 + HemfFill.readBitmap(littleEndianInputStream, this.bitmap, readIndex, readUInt, readUInt2, readUInt3, readUInt4);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetPolyfillMode extends HwmfFill.WmfSetPolyfillMode implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setPolyfillMode;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.polyFillMode = HwmfFill.WmfSetPolyfillMode.HwmfPolyfillMode.valueOf((int) littleEndianInputStream.readUInt());
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfStretchBlt extends HwmfFill.WmfStretchDib implements HemfRecord {
        protected final Rectangle2D bounds = new Rectangle2D.Double();
        protected final AffineTransform xFormSrc = new AffineTransform();
        protected final HwmfColorRef bkColorSrc = new HwmfColorRef();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.getProperties().setBackgroundColor(this.bkColorSrc);
            super.draw((HwmfGraphics) hemfGraphics);
        }

        public HwmfColorRef getBkColorSrc() {
            return this.bkColorSrc;
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.stretchBlt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfStretchDib, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.vih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfFill.EmfStretchBlt.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.wih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfStretchBlt.this.getBounds();
                }
            }, "xFormSrc", new Supplier() { // from class: com.sunia.HTREnginev2.xih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfStretchBlt.this.getXFormSrc();
                }
            }, "bkColorSrc", new Supplier() { // from class: com.sunia.HTREnginev2.yih
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfStretchBlt.this.getBkColorSrc();
                }
            });
        }

        public AffineTransform getXFormSrc() {
            return this.xFormSrc;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            int readIndex = littleEndianInputStream.getReadIndex();
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds) + HemfFill.readBounds2(littleEndianInputStream, this.dstBounds);
            this.rasterOperation = HwmfTernaryRasterOp.valueOf(((int) littleEndianInputStream.readUInt()) >>> 16);
            Point2D.Double r5 = new Point2D.Double();
            long readPointL = readRectL + 4 + HemfDraw.readPointL(littleEndianInputStream, r5) + HemfFill.readXForm(littleEndianInputStream, this.xFormSrc) + this.bkColorSrc.init(littleEndianInputStream);
            this.colorUsage = HwmfFill.ColorUsage.valueOf((int) littleEndianInputStream.readUInt());
            int readUInt = (int) littleEndianInputStream.readUInt();
            int readUInt2 = (int) littleEndianInputStream.readUInt();
            long j3 = readPointL + 12;
            if (j3 >= j) {
                return j3;
            }
            int readUInt3 = (int) littleEndianInputStream.readUInt();
            int readUInt4 = (int) littleEndianInputStream.readUInt();
            long j4 = j3 + 8;
            if (j4 >= j) {
                return j4;
            }
            if (srcEqualsDstDimension()) {
                this.srcBounds.setRect(r5.getX(), r5.getY(), this.dstBounds.getWidth(), this.dstBounds.getHeight());
            } else {
                j4 += 8;
                this.srcBounds.setRect(r5.getX(), r5.getY(), littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
            }
            return j4 + HemfFill.readBitmap(littleEndianInputStream, this.bitmap, readIndex, readUInt, readUInt2, readUInt3, readUInt4);
        }

        public boolean srcEqualsDstDimension() {
            return false;
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfStretchDib
        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfStretchDiBits extends HwmfFill.WmfStretchDib implements HemfRecord {
        protected final Rectangle2D bounds = new Rectangle2D.Double();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.stretchDiBits;
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfStretchDib, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.zih
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfFill.EmfStretchDiBits.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.ajh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfFill.EmfStretchDiBits.this.getBounds();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            int readIndex = littleEndianInputStream.getReadIndex();
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            int readInt = littleEndianInputStream.readInt();
            int readInt2 = littleEndianInputStream.readInt();
            long readBounds2 = readRectL + 8 + HemfFill.readBounds2(littleEndianInputStream, this.srcBounds);
            int readUInt = (int) littleEndianInputStream.readUInt();
            int readUInt2 = (int) littleEndianInputStream.readUInt();
            int readUInt3 = (int) littleEndianInputStream.readUInt();
            int readUInt4 = (int) littleEndianInputStream.readUInt();
            this.colorUsage = HwmfFill.ColorUsage.valueOf(littleEndianInputStream.readInt());
            this.rasterOperation = HwmfTernaryRasterOp.valueOf(((int) littleEndianInputStream.readUInt()) >>> 16);
            this.dstBounds.setRect(readInt, readInt2, littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
            return readBounds2 + 32 + HemfFill.readBitmap(littleEndianInputStream, this.bitmap, readIndex, readUInt, readUInt2, readUInt3, readUInt4);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    private HemfFill() {
    }

    public static Shape getRgnShape(List<Rectangle2D> list) {
        if (list.size() == 1) {
            return list.get(0);
        }
        final Area area = new Area();
        list.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.uhh
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HemfFill.lambda$getRgnShape$0(Area.this, (Rectangle2D) obj);
            }
        });
        return area;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getRgnShape$0(Area area, Rectangle2D rectangle2D) {
        area.add(new Area(rectangle2D));
    }

    public static long readBitmap(LittleEndianInputStream littleEndianInputStream, HwmfBitmapDib hwmfBitmapDib, int i, int i2, int i3, int i4, int i5) throws IOException {
        int readIndex;
        int readIndex2;
        if (i2 == 0 || (readIndex2 = i2 - (readIndex = littleEndianInputStream.getReadIndex() - (i - 8))) < 0) {
            return 0L;
        }
        int i6 = ((i4 - readIndex) - i3) - readIndex2;
        littleEndianInputStream.skipFully(readIndex2);
        if (i3 == 0 || i5 == 0) {
            return readIndex2;
        }
        int i7 = i3 + i5;
        if (i6 == 0) {
            return readIndex2 + hwmfBitmapDib.init(littleEndianInputStream, i7);
        }
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(i7);
        long j = i3;
        IOUtils.copy(littleEndianInputStream, unsynchronizedByteArrayOutputStream, j);
        littleEndianInputStream.skipFully(i6);
        long j2 = i5;
        IOUtils.copy(littleEndianInputStream, unsynchronizedByteArrayOutputStream, j2);
        hwmfBitmapDib.init(new LittleEndianInputStream(unsynchronizedByteArrayOutputStream.toInputStream()), i7);
        return readIndex2 + j + i6 + j2;
    }

    public static int readBounds2(LittleEndianInputStream littleEndianInputStream, Rectangle2D rectangle2D) {
        rectangle2D.setRect(littleEndianInputStream.readInt(), littleEndianInputStream.readInt(), littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
        return 16;
    }

    public static long readRgnData(LittleEndianInputStream littleEndianInputStream, List<Rectangle2D> list) {
        littleEndianInputStream.readUInt();
        littleEndianInputStream.readUInt();
        long readUInt = littleEndianInputStream.readUInt();
        littleEndianInputStream.readUInt();
        long readRectL = HemfDraw.readRectL(littleEndianInputStream, new Rectangle2D.Double()) + 16;
        for (int i = 0; i < readUInt; i++) {
            Rectangle2D.Double r5 = new Rectangle2D.Double();
            readRectL += HemfDraw.readRectL(littleEndianInputStream, r5);
            list.add(r5);
        }
        return readRectL;
    }

    public static int readXForm(LittleEndianInputStream littleEndianInputStream, AffineTransform affineTransform) {
        affineTransform.setTransform(littleEndianInputStream.readFloat(), -littleEndianInputStream.readFloat(), -littleEndianInputStream.readFloat(), littleEndianInputStream.readFloat(), littleEndianInputStream.readFloat(), littleEndianInputStream.readFloat());
        if (!affineTransform.isIdentity()) {
            return 24;
        }
        affineTransform.setToIdentity();
        return 24;
    }
}
