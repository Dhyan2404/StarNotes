package org.apache.poi.hwmf.record;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.awt.Color;
import java.awt.Shape;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hwmf.draw.HwmfDrawProperties;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfFill;
import org.apache.poi.hwmf.record.HwmfMisc;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfFill {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* loaded from: classes12.dex */
    public enum ColorUsage {
        DIB_RGB_COLORS(0),
        DIB_PAL_COLORS(1),
        DIB_PAL_INDICES(2);

        public final int flag;

        ColorUsage(int i) {
            this.flag = i;
        }

        public static ColorUsage valueOf(int i) {
            for (ColorUsage colorUsage : values()) {
                if (colorUsage.flag == i) {
                    return colorUsage;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public interface HwmfImageRecord {
        byte[] getBMPData();

        default BufferedImage getImage() {
            return getImage(Color.BLACK, new Color(16777215, true), true);
        }

        BufferedImage getImage(Color color, Color color2, boolean z);
    }

    /* loaded from: classes12.dex */
    public static class WmfBitBlt extends WmfStretchBlt {
        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfStretchBlt, org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.bitBlt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfStretchBlt, org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            boolean hasBitmap = HwmfFill.hasBitmap(j / 2, i);
            this.rasterOperation = HwmfFill.readRasterOperation(littleEndianInputStream);
            Point2D.Double r12 = new Point2D.Double();
            int readPointS = HwmfDraw.readPointS(littleEndianInputStream, r12) + 4;
            if (!hasBitmap) {
                littleEndianInputStream.readShort();
                readPointS += 2;
            }
            int readBounds2 = readPointS + HwmfFill.readBounds2(littleEndianInputStream, this.dstBounds);
            if (hasBitmap) {
                HwmfBitmap16 hwmfBitmap16 = new HwmfBitmap16();
                this.target = hwmfBitmap16;
                readBounds2 += hwmfBitmap16.init(littleEndianInputStream);
            }
            this.srcBounds.setRect(r12.getX(), r12.getY(), this.dstBounds.getWidth(), this.dstBounds.getHeight());
            return readBounds2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfDibBitBlt extends WmfDibStretchBlt {
        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfDibStretchBlt, org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.dibBitBlt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfDibStretchBlt, org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            boolean hasBitmap = HwmfFill.hasBitmap(j / 2, i);
            this.rasterOperation = HwmfFill.readRasterOperation(littleEndianInputStream);
            Point2D.Double r0 = new Point2D.Double();
            int readPointS = HwmfDraw.readPointS(littleEndianInputStream, r0) + 4;
            if (!hasBitmap) {
                littleEndianInputStream.readShort();
                readPointS += 2;
            }
            int readBounds2 = readPointS + HwmfFill.readBounds2(littleEndianInputStream, this.dstBounds);
            if (hasBitmap) {
                HwmfBitmapDib hwmfBitmapDib = new HwmfBitmapDib();
                this.target = hwmfBitmapDib;
                readBounds2 += hwmfBitmapDib.init(littleEndianInputStream, (int) ((j - 6) - readBounds2));
            }
            this.srcBounds.setRect(r0.getX(), r0.getY(), this.dstBounds.getWidth(), this.dstBounds.getHeight());
            return readBounds2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfDibStretchBlt implements HwmfRecord, HwmfImageRecord {
        protected HwmfTernaryRasterOp rasterOperation;
        protected HwmfBitmapDib target;
        protected final Rectangle2D srcBounds = new Rectangle2D.Double();
        protected final Rectangle2D dstBounds = new Rectangle2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            properties.setRasterOp3(this.rasterOperation);
            if (this.target != null) {
                HwmfMisc.WmfSetBkMode.HwmfBkMode bkMode = properties.getBkMode();
                properties.setBkMode(HwmfMisc.WmfSetBkMode.HwmfBkMode.TRANSPARENT);
                hwmfGraphics.drawImage(this.target.getImage(properties.getPenColor().getColor(), properties.getBackgroundColor().getColor(), true), this.srcBounds, this.dstBounds);
                properties.setBkMode(bkMode);
            }
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.HwmfImageRecord
        public byte[] getBMPData() {
            HwmfBitmapDib hwmfBitmapDib = this.target;
            if (hwmfBitmapDib == null || !hwmfBitmapDib.isValid()) {
                return null;
            }
            return this.target.getBMPData();
        }

        public Rectangle2D getDstBounds() {
            return this.dstBounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("rasterOperation", new Supplier() { // from class: com.sunia.HTREnginev2.i3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfDibStretchBlt.this.getRasterOperation();
                }
            }, "srcBounds", new Supplier() { // from class: com.sunia.HTREnginev2.j3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfDibStretchBlt.this.getSrcBounds();
                }
            }, "dstBounds", new Supplier() { // from class: com.sunia.HTREnginev2.k3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfDibStretchBlt.this.getDstBounds();
                }
            }, "target", new Supplier() { // from class: com.sunia.HTREnginev2.l3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfDibStretchBlt.this.getTarget();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.HwmfImageRecord
        public BufferedImage getImage(Color color, Color color2, boolean z) {
            HwmfBitmapDib hwmfBitmapDib = this.target;
            if (hwmfBitmapDib == null || !hwmfBitmapDib.isValid()) {
                return null;
            }
            return this.target.getImage(color, color2, z);
        }

        public HwmfTernaryRasterOp getRasterOperation() {
            return this.rasterOperation;
        }

        public Rectangle2D getSrcBounds() {
            return this.srcBounds;
        }

        public HwmfBitmapDib getTarget() {
            return this.target;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.dibStretchBlt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            boolean hasBitmap = HwmfFill.hasBitmap(j, i);
            this.rasterOperation = HwmfFill.readRasterOperation(littleEndianInputStream);
            int readBounds2 = HwmfFill.readBounds2(littleEndianInputStream, this.srcBounds) + 4;
            if (!hasBitmap) {
                littleEndianInputStream.readShort();
                readBounds2 += 2;
            }
            int readBounds22 = readBounds2 + HwmfFill.readBounds2(littleEndianInputStream, this.dstBounds);
            if (!hasBitmap) {
                return readBounds22;
            }
            HwmfBitmapDib hwmfBitmapDib = new HwmfBitmapDib();
            this.target = hwmfBitmapDib;
            return readBounds22 + hwmfBitmapDib.init(littleEndianInputStream, (int) ((j - 6) - readBounds22));
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfExtFloodFill extends WmfFloodFill {
        protected HwmfFloodFillMode mode;

        /* loaded from: classes12.dex */
        public enum HwmfFloodFillMode {
            FLOOD_FILL_BORDER,
            FLOOD_FILL_SURFACE
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfFloodFill, org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfFloodFill, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(Constants.ATTRNAME_MODE, new Supplier() { // from class: com.sunia.HTREnginev2.m3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfExtFloodFill.this.getMode();
                }
            });
        }

        public HwmfFloodFillMode getMode() {
            return this.mode;
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfFloodFill, org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.extFloodFill;
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.WmfFloodFill, org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.mode = HwmfFloodFillMode.values()[littleEndianInputStream.readUShort()];
            return super.init(littleEndianInputStream, j, i) + 2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfFillRegion implements HwmfRecord {
        protected int brushIndex;
        protected int regionIndex;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.applyObjectTableEntry(this.regionIndex);
            hwmfGraphics.applyObjectTableEntry(this.brushIndex);
            Shape region = hwmfGraphics.getProperties().getRegion();
            if (region != null) {
                hwmfGraphics.fill(region);
            }
        }

        public int getBrushIndex() {
            return this.brushIndex;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("regionIndex", new Supplier() { // from class: com.sunia.HTREnginev2.n3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfFill.WmfFillRegion.this.getRegionIndex());
                }
            }, "brushIndex", new Supplier() { // from class: com.sunia.HTREnginev2.o3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfFill.WmfFillRegion.this.getBrushIndex());
                }
            });
        }

        public int getRegionIndex() {
            return this.regionIndex;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.fillRegion;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.regionIndex = littleEndianInputStream.readUShort();
            this.brushIndex = littleEndianInputStream.readUShort();
            return 4;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfFloodFill implements HwmfRecord {
        protected final HwmfColorRef colorRef = new HwmfColorRef();
        protected final Point2D start = new Point2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        public HwmfColorRef getColorRef() {
            return this.colorRef;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("colorRef", new Supplier() { // from class: com.sunia.HTREnginev2.p3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfFloodFill.this.getColorRef();
                }
            }, gon.f71290o0, new Supplier() { // from class: com.sunia.HTREnginev2.q3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfFloodFill.this.getStart();
                }
            });
        }

        public Point2D getStart() {
            return this.start;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.floodFill;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return this.colorRef.init(littleEndianInputStream) + HwmfDraw.readPointS(littleEndianInputStream, this.start);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfInvertRegion implements HwmfRecord {
        private int regionIndex;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("regionIndex", new Supplier() { // from class: com.sunia.HTREnginev2.r3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfFill.WmfInvertRegion.this.getRegionIndex());
                }
            });
        }

        public int getRegionIndex() {
            return this.regionIndex;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.invertRegion;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.regionIndex = littleEndianInputStream.readUShort();
            return 2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfPaintRegion implements HwmfRecord {
        int regionIndex;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.applyObjectTableEntry(this.regionIndex);
            Shape region = hwmfGraphics.getProperties().getRegion();
            if (region != null) {
                hwmfGraphics.fill(region);
            }
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("regionIndex", new Supplier() { // from class: com.sunia.HTREnginev2.s3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfFill.WmfPaintRegion.this.getRegionIndex());
                }
            });
        }

        public int getRegionIndex() {
            return this.regionIndex;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.paintRegion;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.regionIndex = littleEndianInputStream.readUShort();
            return 2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfPatBlt implements HwmfRecord {
        private final Rectangle2D bounds = new Rectangle2D.Double();
        private HwmfTernaryRasterOp rasterOperation;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("rasterOperation", new Supplier() { // from class: com.sunia.HTREnginev2.t3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfPatBlt.this.getRasterOperation();
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.u3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfPatBlt.this.getBounds();
                }
            });
        }

        public HwmfTernaryRasterOp getRasterOperation() {
            return this.rasterOperation;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.patBlt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.rasterOperation = HwmfFill.readRasterOperation(littleEndianInputStream);
            return HwmfFill.readBounds2(littleEndianInputStream, this.bounds) + 4;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetDibToDev implements HwmfRecord, HwmfImageRecord, HwmfObjectTableEntry {
        private ColorUsage colorUsage;
        private HwmfBitmapDib dib;
        private int scanCount;
        private int startScan;
        protected final Rectangle2D srcBounds = new Rectangle2D.Double();
        protected final Rectangle2D dstBounds = new Rectangle2D.Double();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return this.dib;
        }

        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.addObjectTableEntry(this);
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.HwmfImageRecord
        public byte[] getBMPData() {
            return this.dib.getBMPData();
        }

        public ColorUsage getColorUsage() {
            return this.colorUsage;
        }

        public Rectangle2D getDstBounds() {
            return this.dstBounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("colorUsage", new Supplier() { // from class: com.sunia.HTREnginev2.v3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfSetDibToDev.this.getColorUsage();
                }
            }, "scanCount", new Supplier() { // from class: com.sunia.HTREnginev2.w3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfFill.WmfSetDibToDev.this.getScanCount());
                }
            }, "startScan", new Supplier() { // from class: com.sunia.HTREnginev2.x3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfFill.WmfSetDibToDev.this.getStartScan());
                }
            }, "srcBounds", new Supplier() { // from class: com.sunia.HTREnginev2.y3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfSetDibToDev.this.getSrcBounds();
                }
            }, "dstBounds", new Supplier() { // from class: com.sunia.HTREnginev2.z3i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfSetDibToDev.this.getDstBounds();
                }
            }, "dib", new Supplier() { // from class: com.sunia.HTREnginev2.a4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfFill.WmfSetDibToDev.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.HwmfImageRecord
        public BufferedImage getImage(Color color, Color color2, boolean z) {
            return this.dib.getImage(color, color2, z);
        }

        public int getScanCount() {
            return this.scanCount;
        }

        public Rectangle2D getSrcBounds() {
            return this.srcBounds;
        }

        public int getStartScan() {
            return this.startScan;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setDibToDev;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.colorUsage = ColorUsage.valueOf(littleEndianInputStream.readUShort());
            this.scanCount = littleEndianInputStream.readUShort();
            this.startScan = littleEndianInputStream.readUShort();
            Point2D.Double r14 = new Point2D.Double();
            int readPointS = HwmfDraw.readPointS(littleEndianInputStream, r14) + 6 + HwmfFill.readBounds2(littleEndianInputStream, this.dstBounds);
            HwmfBitmapDib hwmfBitmapDib = new HwmfBitmapDib();
            this.dib = hwmfBitmapDib;
            int init = readPointS + hwmfBitmapDib.init(littleEndianInputStream, (int) ((j - 6) - readPointS));
            this.srcBounds.setRect(r14.getX(), r14.getY(), this.dstBounds.getWidth(), this.dstBounds.getHeight());
            return init;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetPolyfillMode implements HwmfRecord {
        protected HwmfPolyfillMode polyFillMode;

        /* loaded from: classes12.dex */
        public enum HwmfPolyfillMode {
            ALTERNATE(1, 0),
            WINDING(2, 1);

            public final int awtFlag;
            public final int wmfFlag;

            HwmfPolyfillMode(int i, int i2) {
                this.wmfFlag = i;
                this.awtFlag = i2;
            }

            public static HwmfPolyfillMode valueOf(int i) {
                for (HwmfPolyfillMode hwmfPolyfillMode : values()) {
                    if (hwmfPolyfillMode.wmfFlag == i) {
                        return hwmfPolyfillMode;
                    }
                }
                return null;
            }
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.getProperties().setPolyfillMode(this.polyFillMode);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("polyFillMode", new Supplier() { // from class: com.sunia.HTREnginev2.b4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfSetPolyfillMode.this.getPolyFillMode();
                }
            });
        }

        public HwmfPolyfillMode getPolyFillMode() {
            return this.polyFillMode;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setPolyFillMode;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.polyFillMode = HwmfPolyfillMode.valueOf(littleEndianInputStream.readUShort() & 3);
            return 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfStretchBlt implements HwmfRecord {
        protected HwmfTernaryRasterOp rasterOperation;
        protected HwmfBitmap16 target;
        protected final Rectangle2D srcBounds = new Rectangle2D.Double();
        protected final Rectangle2D dstBounds = new Rectangle2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        public Rectangle2D getDstBounds() {
            return this.dstBounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("rasterOperation", new Supplier() { // from class: com.sunia.HTREnginev2.c4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfStretchBlt.this.getRasterOperation();
                }
            }, "srcBounds", new Supplier() { // from class: com.sunia.HTREnginev2.d4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfStretchBlt.this.getSrcBounds();
                }
            }, "dstBounds", new Supplier() { // from class: com.sunia.HTREnginev2.e4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfStretchBlt.this.getDstBounds();
                }
            }, "target", new Supplier() { // from class: com.sunia.HTREnginev2.f4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfStretchBlt.this.getTarget();
                }
            });
        }

        public HwmfTernaryRasterOp getRasterOperation() {
            return this.rasterOperation;
        }

        public Rectangle2D getSrcBounds() {
            return this.srcBounds;
        }

        public HwmfBitmap16 getTarget() {
            return this.target;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.stretchBlt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            boolean hasBitmap = HwmfFill.hasBitmap(j, i);
            this.rasterOperation = HwmfFill.readRasterOperation(littleEndianInputStream);
            int readBounds2 = HwmfFill.readBounds2(littleEndianInputStream, this.srcBounds) + 4;
            if (!hasBitmap) {
                littleEndianInputStream.readShort();
                readBounds2 += 2;
            }
            int readBounds22 = readBounds2 + HwmfFill.readBounds2(littleEndianInputStream, this.dstBounds);
            if (!hasBitmap) {
                return readBounds22;
            }
            HwmfBitmap16 hwmfBitmap16 = new HwmfBitmap16();
            this.target = hwmfBitmap16;
            return readBounds22 + hwmfBitmap16.init(littleEndianInputStream);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfStretchDib implements HwmfRecord, HwmfImageRecord {
        protected ColorUsage colorUsage;
        protected HwmfTernaryRasterOp rasterOperation;
        protected final Rectangle2D srcBounds = new Rectangle2D.Double();
        protected final Rectangle2D dstBounds = new Rectangle2D.Double();
        protected final HwmfBitmapDib bitmap = new HwmfBitmapDib();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            properties.setRasterOp3(this.rasterOperation);
            if (this.bitmap.isValid()) {
                hwmfGraphics.drawImage(this.bitmap.getImage(properties.getPenColor().getColor(), properties.getBackgroundColor().getColor(), properties.getBkMode() == HwmfMisc.WmfSetBkMode.HwmfBkMode.TRANSPARENT), this.srcBounds, this.dstBounds);
            } else {
                if (this.dstBounds.isEmpty()) {
                    return;
                }
                hwmfGraphics.drawImage((ImageRenderer) null, new Rectangle2D.Double(0.0d, 0.0d, 1.0d, 1.0d), this.dstBounds);
            }
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.HwmfImageRecord
        public byte[] getBMPData() {
            return this.bitmap.getBMPData();
        }

        public HwmfBitmapDib getBitmap() {
            return this.bitmap;
        }

        public ColorUsage getColorUsage() {
            return this.colorUsage;
        }

        public Rectangle2D getDstBounds() {
            return this.dstBounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("rasterOperation", new Supplier() { // from class: com.sunia.HTREnginev2.g4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfStretchDib.this.getRasterOperation();
                }
            }, "colorUsage", new Supplier() { // from class: com.sunia.HTREnginev2.h4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfStretchDib.this.getColorUsage();
                }
            }, "srcBounds", new Supplier() { // from class: com.sunia.HTREnginev2.i4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfStretchDib.this.getSrcBounds();
                }
            }, "dstBounds", new Supplier() { // from class: com.sunia.HTREnginev2.j4i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfFill.WmfStretchDib.this.getDstBounds();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfFill.HwmfImageRecord
        public BufferedImage getImage(Color color, Color color2, boolean z) {
            return this.bitmap.getImage(color, color2, z);
        }

        public HwmfTernaryRasterOp getRasterOperation() {
            return this.rasterOperation;
        }

        public Rectangle2D getSrcBounds() {
            return this.srcBounds;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.stretchDib;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.rasterOperation = HwmfFill.readRasterOperation(littleEndianInputStream);
            this.colorUsage = ColorUsage.valueOf(littleEndianInputStream.readUShort());
            int readBounds2 = HwmfFill.readBounds2(littleEndianInputStream, this.srcBounds) + 6 + HwmfFill.readBounds2(littleEndianInputStream, this.dstBounds);
            return readBounds2 + this.bitmap.init(littleEndianInputStream, (int) ((j - 6) - readBounds2));
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasBitmap(long j, int i) {
        return j > ((long) ((i >> 8) + 3));
    }

    public static int readBounds2(LittleEndianInputStream littleEndianInputStream, Rectangle2D rectangle2D) {
        short readShort = littleEndianInputStream.readShort();
        rectangle2D.setRect(littleEndianInputStream.readShort(), littleEndianInputStream.readShort(), littleEndianInputStream.readShort(), readShort);
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HwmfTernaryRasterOp readRasterOperation(LittleEndianInputStream littleEndianInputStream) {
        littleEndianInputStream.readUShort();
        return HwmfTernaryRasterOp.valueOf(littleEndianInputStream.readUShort());
    }
}
