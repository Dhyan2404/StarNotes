package org.apache.poi.hwmf.record;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Area;
import java.awt.geom.Dimension2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.draw.HwmfDrawProperties;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfWindowing;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfWindowing {

    /* loaded from: classes12.dex */
    public static class WmfCreateRegion implements HwmfRecord, HwmfObjectTableEntry {
        private final Rectangle2D bounds = new Rectangle2D.Double();
        private int maxScan;
        private int nextInChain;
        private int objectCount;
        private int objectType;
        private int regionSize;
        private int scanCount;
        private WmfScanObject[] scanObjects;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.nextInChain);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this.objectType);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this.objectCount);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return Integer.valueOf(this.regionSize);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return Integer.valueOf(this.scanCount);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$5() {
            return Integer.valueOf(this.maxScan);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$6() {
            return this.bounds;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$7() {
            return Arrays.asList(this.scanObjects);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v0, types: [java.awt.geom.Rectangle2D$Double] */
        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            Area area;
            Area area2 = new Area();
            WmfScanObject[] wmfScanObjectArr = this.scanObjects;
            int length = wmfScanObjectArr.length;
            int i = 0;
            int i2 = 0;
            Area area3 = null;
            while (true) {
                int i3 = 1;
                if (i >= length) {
                    break;
                }
                WmfScanObject wmfScanObject = wmfScanObjectArr[i];
                int min = Math.min(wmfScanObject.top, wmfScanObject.bottom);
                int abs = Math.abs((wmfScanObject.top - wmfScanObject.bottom) - 1);
                int i4 = 0;
                while (i4 < wmfScanObject.count / 2) {
                    area3 = r15;
                    ?? r15 = new Rectangle2D.Double(Math.min(wmfScanObject.left_scanline[i4], wmfScanObject.right_scanline[i4]), min, Math.abs((wmfScanObject.right_scanline[i4] - wmfScanObject.left_scanline[i4]) - i3), abs);
                    area2.add(new Area(area3));
                    i2++;
                    i4++;
                    wmfScanObject = wmfScanObject;
                    wmfScanObjectArr = wmfScanObjectArr;
                    length = length;
                    i3 = 1;
                }
                i++;
            }
            if (i2 > 0) {
                if (i2 == 1) {
                    area2 = area3;
                }
                area = area2;
            } else {
                area = null;
            }
            hwmfGraphics.getProperties().setRegion(area);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.addObjectTableEntry(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("nextInChain", new Supplier() { // from class: com.sunia.HTREnginev2.oai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfWindowing.WmfCreateRegion.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
            linkedHashMap.put("objectType", new Supplier() { // from class: com.sunia.HTREnginev2.pai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HwmfWindowing.WmfCreateRegion.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
            linkedHashMap.put("objectCount", new Supplier() { // from class: com.sunia.HTREnginev2.qai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HwmfWindowing.WmfCreateRegion.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
            linkedHashMap.put("regionSize", new Supplier() { // from class: com.sunia.HTREnginev2.rai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HwmfWindowing.WmfCreateRegion.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            });
            linkedHashMap.put("scanCount", new Supplier() { // from class: com.sunia.HTREnginev2.sai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HwmfWindowing.WmfCreateRegion.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            });
            linkedHashMap.put("maxScan", new Supplier() { // from class: com.sunia.HTREnginev2.tai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$5;
                    lambda$getGenericProperties$5 = HwmfWindowing.WmfCreateRegion.this.lambda$getGenericProperties$5();
                    return lambda$getGenericProperties$5;
                }
            });
            linkedHashMap.put("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.uai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$6;
                    lambda$getGenericProperties$6 = HwmfWindowing.WmfCreateRegion.this.lambda$getGenericProperties$6();
                    return lambda$getGenericProperties$6;
                }
            });
            linkedHashMap.put("scanObjects", new Supplier() { // from class: com.sunia.HTREnginev2.vai
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$7;
                    lambda$getGenericProperties$7 = HwmfWindowing.WmfCreateRegion.this.lambda$getGenericProperties$7();
                    return lambda$getGenericProperties$7;
                }
            });
            return Collections.unmodifiableMap(linkedHashMap);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.createRegion;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.nextInChain = littleEndianInputStream.readShort();
            this.objectType = littleEndianInputStream.readShort();
            this.objectCount = littleEndianInputStream.readInt();
            this.regionSize = littleEndianInputStream.readShort();
            this.scanCount = littleEndianInputStream.readShort();
            this.maxScan = littleEndianInputStream.readShort();
            double readShort = littleEndianInputStream.readShort();
            double readShort2 = littleEndianInputStream.readShort();
            this.bounds.setRect(readShort, readShort2, littleEndianInputStream.readShort() - readShort, littleEndianInputStream.readShort() - readShort2);
            this.scanObjects = new WmfScanObject[this.scanCount];
            int i2 = 22;
            for (int i3 = 0; i3 < this.scanCount; i3++) {
                WmfScanObject[] wmfScanObjectArr = this.scanObjects;
                WmfScanObject wmfScanObject = new WmfScanObject();
                wmfScanObjectArr[i3] = wmfScanObject;
                i2 += wmfScanObject.init(littleEndianInputStream);
            }
            return i2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfExcludeClipRect implements HwmfRecord {
        protected final Rectangle2D bounds = new Rectangle2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.setClip(HwmfDraw.normalizeBounds(this.bounds), HwmfRegionMode.RGN_DIFF, false);
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.wai
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfExcludeClipRect.this.getBounds();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.excludeClipRect;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readBounds(littleEndianInputStream, this.bounds);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfIntersectClipRect implements HwmfRecord {
        protected final Rectangle2D bounds = new Rectangle2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.setClip(this.bounds, HwmfRegionMode.RGN_AND, false);
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.xai
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfIntersectClipRect.this.getBounds();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.intersectClipRect;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readBounds(littleEndianInputStream, this.bounds);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfOffsetClipRgn implements HwmfRecord {
        protected final Point2D offset = new Point2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            Shape clip = hwmfGraphics.getProperties().getClip();
            if (clip == null) {
                return;
            }
            AffineTransform affineTransform = new AffineTransform();
            affineTransform.translate(this.offset.getX(), this.offset.getY());
            hwmfGraphics.setClip(affineTransform.createTransformedShape(clip), HwmfRegionMode.RGN_COPY, false);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(TypedValues.CycleType.S_WAVE_OFFSET, new Supplier() { // from class: com.sunia.HTREnginev2.yai
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfOffsetClipRgn.this.getOffset();
                }
            });
        }

        public Point2D getOffset() {
            return this.offset;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.offsetClipRgn;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readPointS(littleEndianInputStream, this.offset);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfOffsetViewportOrg implements HwmfRecord {
        protected final Point2D offset = new Point2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            Rectangle2D viewport = properties.getViewport();
            if (this.offset.getX() == 0.0d && this.offset.getY() == 0.0d) {
                return;
            }
            properties.setViewportOrg((viewport == null ? 0.0d : viewport.getX()) + this.offset.getX(), (viewport != null ? viewport.getY() : 0.0d) + this.offset.getY());
            hwmfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(TypedValues.CycleType.S_WAVE_OFFSET, new Supplier() { // from class: com.sunia.HTREnginev2.zai
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfOffsetViewportOrg.this.getOffset();
                }
            });
        }

        public Point2D getOffset() {
            return this.offset;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.offsetViewportOrg;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readPointS(littleEndianInputStream, this.offset);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfOffsetWindowOrg implements HwmfRecord {
        protected final Point2D offset = new Point2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            Rectangle2D window = properties.getWindow();
            if (this.offset.getX() == 0.0d && this.offset.getY() == 0.0d) {
                return;
            }
            properties.setWindowOrg(window.getX() + this.offset.getX(), window.getY() + this.offset.getY());
            hwmfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(TypedValues.CycleType.S_WAVE_OFFSET, new Supplier() { // from class: com.sunia.HTREnginev2.abi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfOffsetWindowOrg.this.getOffset();
                }
            });
        }

        public Point2D getOffset() {
            return this.offset;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.offsetWindowOrg;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readPointS(littleEndianInputStream, this.offset);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfScaleViewportExt implements HwmfRecord {
        protected final Dimension2D scale = new Dimension2DDouble();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            Rectangle2D window = properties.getViewport() == null ? properties.getWindow() : properties.getViewport();
            if (this.scale.getWidth() == 1.0d && this.scale.getHeight() == 1.0d) {
                return;
            }
            properties.setViewportExt(window.getWidth() * this.scale.getWidth(), window.getHeight() * this.scale.getHeight());
            hwmfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("scale", new Supplier() { // from class: com.sunia.HTREnginev2.bbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfScaleViewportExt.this.getScale();
                }
            });
        }

        public Dimension2D getScale() {
            return this.scale;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.scaleViewportExt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            double readShort = littleEndianInputStream.readShort();
            double readShort2 = littleEndianInputStream.readShort();
            this.scale.setSize(littleEndianInputStream.readShort() / littleEndianInputStream.readShort(), readShort2 / readShort);
            return 8;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfScaleWindowExt implements HwmfRecord {
        protected final Dimension2D scale = new Dimension2DDouble();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            Rectangle2D window = hwmfGraphics.getProperties().getWindow();
            if (this.scale.getWidth() == 1.0d && this.scale.getHeight() == 1.0d) {
                return;
            }
            hwmfGraphics.getProperties().setWindowExt(window.getWidth() * this.scale.getWidth(), window.getHeight() * this.scale.getHeight());
            hwmfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("scale", new Supplier() { // from class: com.sunia.HTREnginev2.cbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfScaleWindowExt.this.getScale();
                }
            });
        }

        public Dimension2D getScale() {
            return this.scale;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.scaleWindowExt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            double readShort = littleEndianInputStream.readShort();
            double readShort2 = littleEndianInputStream.readShort();
            this.scale.setSize(littleEndianInputStream.readShort() / littleEndianInputStream.readShort(), readShort2 / readShort);
            return 8;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfScanObject implements GenericRecord {
        private int bottom;
        private int count;
        private int count2;
        private int[] left_scanline;
        private int[] right_scanline;
        private int top;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.count);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this.top);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this.bottom);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$3() {
            return Arrays.asList(this.left_scanline);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$4() {
            return Arrays.asList(this.right_scanline);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$5() {
            return Integer.valueOf(this.count2);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("count", new Supplier() { // from class: com.sunia.HTREnginev2.dbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfWindowing.WmfScanObject.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, OneDriverConstants.TOP, new Supplier() { // from class: com.sunia.HTREnginev2.ebi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HwmfWindowing.WmfScanObject.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "bottom", new Supplier() { // from class: com.sunia.HTREnginev2.fbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = HwmfWindowing.WmfScanObject.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            }, "left_scanline", new Supplier() { // from class: com.sunia.HTREnginev2.gbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$3;
                    lambda$getGenericProperties$3 = HwmfWindowing.WmfScanObject.this.lambda$getGenericProperties$3();
                    return lambda$getGenericProperties$3;
                }
            }, "right_scanline", new Supplier() { // from class: com.sunia.HTREnginev2.hbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$4;
                    lambda$getGenericProperties$4 = HwmfWindowing.WmfScanObject.this.lambda$getGenericProperties$4();
                    return lambda$getGenericProperties$4;
                }
            }, "count2", new Supplier() { // from class: com.sunia.HTREnginev2.ibi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$5;
                    lambda$getGenericProperties$5 = HwmfWindowing.WmfScanObject.this.lambda$getGenericProperties$5();
                    return lambda$getGenericProperties$5;
                }
            });
        }

        public int init(LittleEndianInputStream littleEndianInputStream) {
            this.count = littleEndianInputStream.readUShort();
            this.top = littleEndianInputStream.readUShort();
            this.bottom = littleEndianInputStream.readUShort();
            int i = this.count;
            this.left_scanline = new int[i / 2];
            this.right_scanline = new int[i / 2];
            int i2 = 6;
            for (int i3 = 0; i3 < this.count / 2; i3++) {
                this.left_scanline[i3] = littleEndianInputStream.readUShort();
                this.right_scanline[i3] = littleEndianInputStream.readUShort();
                i2 += 4;
            }
            this.count2 = littleEndianInputStream.readUShort();
            return i2 + 2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSelectClipRegion implements HwmfRecord {
        private int region;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("region", new Supplier() { // from class: com.sunia.HTREnginev2.jbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfWindowing.WmfSelectClipRegion.this.getRegion());
                }
            });
        }

        public int getRegion() {
            return this.region;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.selectClipRegion;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.region = littleEndianInputStream.readShort();
            return 2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetViewportExt implements HwmfRecord {
        protected final Dimension2D extents = new Dimension2DDouble();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            Rectangle2D viewport = properties.getViewport();
            double width = viewport == null ? 0.0d : viewport.getWidth();
            double height = viewport != null ? viewport.getHeight() : 0.0d;
            if (width == this.extents.getWidth() && height == this.extents.getHeight()) {
                return;
            }
            properties.setViewportExt(this.extents.getWidth(), this.extents.getHeight());
            hwmfGraphics.updateWindowMapMode();
        }

        public Dimension2D getExtents() {
            return this.extents;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("extents", new Supplier() { // from class: com.sunia.HTREnginev2.kbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfSetViewportExt.this.getExtents();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setViewportExt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.extents.setSize(littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
            return 4;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetViewportOrg implements HwmfRecord {
        protected final Point2D origin = new Point2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            Rectangle2D viewport = properties.getViewport();
            double x = viewport == null ? 0.0d : viewport.getX();
            double y = viewport != null ? viewport.getY() : 0.0d;
            if (x == this.origin.getX() && y == this.origin.getY()) {
                return;
            }
            properties.setViewportOrg(this.origin.getX(), this.origin.getY());
            hwmfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("origin", new Supplier() { // from class: com.sunia.HTREnginev2.lbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfSetViewportOrg.this.getOrigin();
                }
            });
        }

        public Point2D getOrigin() {
            return this.origin;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setViewportOrg;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readPointS(littleEndianInputStream, this.origin);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetWindowExt implements HwmfRecord {
        protected final Dimension2D size = new Dimension2DDouble();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            double d;
            double d2;
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            Rectangle2D window = properties.getWindow();
            if (window != null) {
                d = window.getWidth();
                d2 = window.getHeight();
            } else {
                d = 0.0d;
                d2 = 0.0d;
            }
            if (d == this.size.getWidth() && d2 == this.size.getHeight()) {
                return;
            }
            properties.setWindowExt(this.size.getWidth(), this.size.getHeight());
            hwmfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("size", new Supplier() { // from class: com.sunia.HTREnginev2.mbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfSetWindowExt.this.getSize();
                }
            });
        }

        public Dimension2D getSize() {
            return this.size;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setWindowExt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.size.setSize(littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
            return 4;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetWindowOrg implements HwmfRecord {
        protected final Point2D origin = new Point2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            Rectangle2D window = properties.getWindow();
            if (window.getX() == getX() && window.getY() == getY()) {
                return;
            }
            properties.setWindowOrg(getX(), getY());
            hwmfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("origin", new Supplier() { // from class: com.sunia.HTREnginev2.nbi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfWindowing.WmfSetWindowOrg.this.getOrigin();
                }
            });
        }

        public Point2D getOrigin() {
            return this.origin;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setWindowOrg;
        }

        public double getX() {
            return this.origin.getX();
        }

        public double getY() {
            return this.origin.getY();
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readPointS(littleEndianInputStream, this.origin);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }
}
