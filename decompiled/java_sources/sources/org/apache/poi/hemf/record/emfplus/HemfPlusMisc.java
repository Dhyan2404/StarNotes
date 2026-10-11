package org.apache.poi.hemf.record.emfplus;

import java.awt.geom.AffineTransform;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfFill;
import org.apache.poi.hemf.record.emf.HemfRecord;
import org.apache.poi.hemf.record.emfplus.HemfPlusMisc;
import org.apache.poi.hwmf.record.HwmfRegionMode;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfPlusMisc {

    /* loaded from: classes12.dex */
    public enum CombineMode {
        REPLACE(0, HwmfRegionMode.RGN_COPY),
        INTERSECT(1, HwmfRegionMode.RGN_AND),
        UNION(2, HwmfRegionMode.RGN_OR),
        XOR(3, HwmfRegionMode.RGN_XOR),
        EXCLUDE(4, HwmfRegionMode.RGN_DIFF),
        COMPLEMENT(5, HwmfRegionMode.RGN_COMPLEMENT);


        /* renamed from: id */
        public final int f111357id;
        public final HwmfRegionMode regionMode;

        CombineMode(int i, HwmfRegionMode hwmfRegionMode) {
            this.f111357id = i;
            this.regionMode = hwmfRegionMode;
        }

        public static CombineMode valueOf(int i) {
            for (CombineMode combineMode : values()) {
                if (combineMode.f111357id == i) {
                    return combineMode;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusEOF extends EmfPlusFlagOnly {
    }

    /* loaded from: classes12.dex */
    public static abstract class EmfPlusFlagOnly implements HemfPlusRecord {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final int[] FLAGS_MASK = {3840};
        private static final String[] FLAGS_NAMES = {"COMBINE_MODE"};
        private int flags;
        private HemfPlusRecordType recordType;

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public final HemfPlusRecordType getEmfPlusRecordType() {
            return this.recordType;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.mqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusMisc.EmfPlusFlagOnly.this.getFlags());
                }
            }, FLAGS_MASK, FLAGS_NAMES));
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.recordType = HemfPlusRecordType.getById(j2);
            return 0L;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfPlusRecordType getGenericRecordType() {
            return getEmfPlusRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusGetDC extends EmfPlusFlagOnly {
        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            renderBounds.setState(HemfGraphics.EmfRenderState.EMF_DCONTEXT);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.setRenderState(HemfGraphics.EmfRenderState.EMF_DCONTEXT);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusMultiplyWorldTransform extends EmfPlusSetWorldTransform {
        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusSetWorldTransform, org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            AffineTransform initTransform = hemfGraphics.getInitTransform();
            initTransform.concatenate(getMatrixData());
            hemfGraphics.setTransform(initTransform);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusSetWorldTransform, org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.multiplyWorldTransform;
        }
    }

    /* loaded from: classes12.dex */
    public interface EmfPlusObjectId {
        public static final BitField OBJECT_ID = BitFieldFactory.getInstance(255);

        int getFlags();

        default int getObjectId() {
            return OBJECT_ID.getValue(getFlags());
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusResetClip extends EmfPlusFlagOnly {
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusResetWorldTransform extends EmfPlusFlagOnly {
        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.getProperties().clearTransform();
            hemfGraphics.updateWindowMapMode();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusRestore extends EmfPlusSave {
        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusSave, org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.restorePlusProperties(getStackIndex());
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusSave, org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.restore;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSave implements HemfPlusRecord {
        private int flags;
        private int stackIndex;

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.savePlusProperties(getStackIndex());
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.save;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.nqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusMisc.EmfPlusSave.this.getFlags());
                }
            }, "stackIndex", new Supplier() { // from class: com.sunia.HTREnginev2.oqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusMisc.EmfPlusSave.this.getStackIndex());
                }
            });
        }

        public int getStackIndex() {
            return this.stackIndex;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.stackIndex = littleEndianInputStream.readInt();
            return 4L;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetAntiAliasMode extends EmfPlusFlagOnly {
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetClipPath extends EmfPlusFlagOnly implements EmfPlusObjectId {
        private static final BitField COMBINE_MODE = BitFieldFactory.getInstance(3840);

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            hemfGraphics.applyPlusObjectTableEntry(getObjectId());
            Path2D path = properties.getPath();
            hemfGraphics.setClip(path, path == null ? HwmfRegionMode.RGN_COPY : getCombineMode().regionMode, false);
        }

        public CombineMode getCombineMode() {
            return CombineMode.valueOf(COMBINE_MODE.getValue(getFlags()));
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetClipRect implements HemfPlusRecord {
        private static final BitField COMBINE_MODE = BitFieldFactory.getInstance(3840);
        private static final int[] FLAGS_MASK = {3840};
        private static final String[] FLAGS_NAMES = {"COMBINE_MODE"};
        private final Rectangle2D clipRect = new Rectangle2D.Double();
        private int flags;

        public Rectangle2D getClipRect() {
            return this.clipRect;
        }

        public CombineMode getCombineMode() {
            return CombineMode.valueOf(COMBINE_MODE.getValue(getFlags()));
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.setClipRect;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.pqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusMisc.EmfPlusSetClipRect.this.getFlags());
                }
            }, FLAGS_MASK, FLAGS_NAMES), "clipRect", new Supplier() { // from class: com.sunia.HTREnginev2.qqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusMisc.EmfPlusSetClipRect.this.getClipRect();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            return HemfPlusDraw.readRectF(littleEndianInputStream, this.clipRect);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetClipRegion extends EmfPlusSetClipPath {
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetCompositingMode extends EmfPlusFlagOnly {
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetCompositingQuality extends EmfPlusFlagOnly {
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetInterpolationMode extends EmfPlusFlagOnly {
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetPageTransform implements HemfPlusRecord {
        private int flags;
        private double pageScale;

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.setPageTransform;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.rqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusMisc.EmfPlusSetPageTransform.this.getFlags());
                }
            }, "pageScale", new Supplier() { // from class: com.sunia.HTREnginev2.sqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Double.valueOf(HemfPlusMisc.EmfPlusSetPageTransform.this.getPageScale());
                }
            });
        }

        public double getPageScale() {
            return this.pageScale;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.pageScale = littleEndianInputStream.readFloat();
            return 4L;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetPixelOffsetMode extends EmfPlusFlagOnly {
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetRenderingOrigin implements HemfPlusRecord {
        int flags;
        Point2D origin = new Point2D.Double();

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.setRenderingOrigin;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.tqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusMisc.EmfPlusSetRenderingOrigin.this.getFlags());
                }
            }, "origin", new Supplier() { // from class: com.sunia.HTREnginev2.uqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusMisc.EmfPlusSetRenderingOrigin.this.getOrigin();
                }
            });
        }

        public Point2D getOrigin() {
            return this.origin;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            this.origin.setLocation(littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
            return 8L;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetTextRenderingHint extends EmfPlusFlagOnly {
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusSetWorldTransform implements HemfPlusRecord {
        private int flags;
        private final AffineTransform matrixData = new AffineTransform();

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            properties.clearTransform();
            properties.addLeftTransform(getMatrixData());
            hemfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.setWorldTransform;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.vqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusMisc.EmfPlusSetWorldTransform.this.getFlags());
                }
            }, "matrixData", new Supplier() { // from class: com.sunia.HTREnginev2.wqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusMisc.EmfPlusSetWorldTransform.this.getMatrixData();
                }
            });
        }

        public AffineTransform getMatrixData() {
            return this.matrixData;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            this.flags = i;
            return HemfFill.readXForm(littleEndianInputStream, this.matrixData);
        }
    }
}
