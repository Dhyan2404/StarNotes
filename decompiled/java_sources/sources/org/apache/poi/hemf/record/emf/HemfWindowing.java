package org.apache.poi.hemf.record.emf;

import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfRecord;
import org.apache.poi.hemf.record.emf.HemfWindowing;
import org.apache.poi.hwmf.record.HwmfDraw;
import org.apache.poi.hwmf.record.HwmfRegionMode;
import org.apache.poi.hwmf.record.HwmfWindowing;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfWindowing {

    /* loaded from: classes12.dex */
    public static class EmfScaleViewportExtEx extends HwmfWindowing.WmfScaleViewportExt implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D viewport = renderBounds.getViewport();
            viewport.setRect(viewport.getX(), viewport.getY(), viewport.getWidth() * this.scale.getWidth(), viewport.getHeight() * this.scale.getHeight());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.scaleViewportExtEx;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfWindowing.readScale(littleEndianInputStream, this.scale);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfScaleWindowExtEx extends HwmfWindowing.WmfScaleWindowExt implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D window = renderBounds.getWindow();
            window.setRect(window.getX(), window.getY(), window.getWidth() * this.scale.getWidth(), window.getHeight() * this.scale.getHeight());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.scaleWindowExtEx;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfWindowing.readScale(littleEndianInputStream, this.scale);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSelectClipPath implements HemfRecord {
        protected HwmfRegionMode regionMode;

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.setClip(hemfGraphics.getProperties().getPath(), this.regionMode, false);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.selectClipPath;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("regionMode", new Supplier() { // from class: com.sunia.HTREnginev2.azh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfWindowing.EmfSelectClipPath.this.getRegionMode();
                }
            });
        }

        public HwmfRegionMode getRegionMode() {
            return this.regionMode;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.regionMode = HwmfRegionMode.valueOf(littleEndianInputStream.readInt());
            return 4L;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetExcludeClipRect extends HwmfWindowing.WmfExcludeClipRect implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setExcludeClipRect;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readRectL(littleEndianInputStream, this.bounds);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetIntersectClipRect extends HwmfWindowing.WmfIntersectClipRect implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D bounds = renderBounds.getBounds();
            if (bounds.isEmpty()) {
                bounds.setRect(this.bounds);
            } else {
                bounds.add(this.bounds);
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setIntersectClipRect;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readRectL(littleEndianInputStream, HwmfDraw.normalizeBounds(this.bounds));
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetOffsetClipRgn extends HwmfWindowing.WmfOffsetClipRgn implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setOffsetClipRgn;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readPointL(littleEndianInputStream, this.offset);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetViewportExtEx extends HwmfWindowing.WmfSetViewportExt implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D viewport = renderBounds.getViewport();
            viewport.setRect(viewport.getX(), viewport.getY(), this.extents.getWidth(), this.extents.getHeight());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setViewportExtEx;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readDimensionInt(littleEndianInputStream, this.extents);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetViewportOrgEx extends HwmfWindowing.WmfSetViewportOrg implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D viewport = renderBounds.getViewport();
            viewport.setRect(this.origin.getX(), this.origin.getY(), viewport.getWidth(), viewport.getHeight());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setViewportOrgEx;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readPointL(littleEndianInputStream, this.origin);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetWindowExtEx extends HwmfWindowing.WmfSetWindowExt implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D window = renderBounds.getWindow();
            window.setRect(window.getX(), window.getY(), this.size.getWidth(), this.size.getHeight());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setWindowExtEx;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readDimensionInt(littleEndianInputStream, this.size);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetWindowOrgEx extends HwmfWindowing.WmfSetWindowOrg implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D window = renderBounds.getWindow();
            window.setRect(this.origin.getX(), this.origin.getY(), window.getWidth(), window.getHeight());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setWindowOrgEx;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readPointL(littleEndianInputStream, this.origin);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readScale(LittleEndianInputStream littleEndianInputStream, Dimension2D dimension2D) {
        dimension2D.setSize(littleEndianInputStream.readInt() / littleEndianInputStream.readInt(), littleEndianInputStream.readInt() / littleEndianInputStream.readInt());
        return 16;
    }
}
