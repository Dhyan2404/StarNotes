package org.apache.poi.hemf.record.emf;

import com.sunia.HTREnginev2.gon;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfMisc;
import org.apache.poi.hwmf.draw.HwmfDrawProperties;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfBinaryRasterOp;
import org.apache.poi.hwmf.record.HwmfBitmapDib;
import org.apache.poi.hwmf.record.HwmfBrushStyle;
import org.apache.poi.hwmf.record.HwmfColorRef;
import org.apache.poi.hwmf.record.HwmfFill;
import org.apache.poi.hwmf.record.HwmfHatchStyle;
import org.apache.poi.hwmf.record.HwmfMapMode;
import org.apache.poi.hwmf.record.HwmfMisc;
import org.apache.poi.hwmf.record.HwmfObjectTableEntry;
import org.apache.poi.hwmf.record.HwmfPalette;
import org.apache.poi.hwmf.record.HwmfPenStyle;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfMisc {

    /* renamed from: org.apache.poi.hemf.record.emf.HemfMisc$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194461 {

        /* renamed from: $SwitchMap$org$apache$poi$hemf$record$emf$HemfMisc$HemfModifyWorldTransformMode */
        static final /* synthetic */ int[] f111339x93220614;

        static {
            int[] iArr = new int[HemfModifyWorldTransformMode.values().length];
            f111339x93220614 = iArr;
            try {
                iArr[HemfModifyWorldTransformMode.MWT_LEFTMULTIPLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111339x93220614[HemfModifyWorldTransformMode.MWT_RIGHTMULTIPLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111339x93220614[HemfModifyWorldTransformMode.MWT_IDENTITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111339x93220614[HemfModifyWorldTransformMode.MWT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCreateBrushIndirect extends HwmfMisc.WmfCreateBrushIndirect implements HemfRecord {
        private int brushIdx;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.addObjectTableEntry(this, this.brushIdx);
        }

        public int getBrushIdx() {
            return this.brushIdx;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.createBrushIndirect;
        }

        @Override // org.apache.poi.hwmf.record.HwmfMisc.WmfCreateBrushIndirect, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.mkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfMisc.EmfCreateBrushIndirect.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "brushIdx", new Supplier() { // from class: com.sunia.HTREnginev2.nkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfMisc.EmfCreateBrushIndirect.this.getBrushIdx());
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.brushIdx = (int) littleEndianInputStream.readUInt();
            this.brushStyle = HwmfBrushStyle.valueOf((int) littleEndianInputStream.readUInt());
            HwmfColorRef hwmfColorRef = new HwmfColorRef();
            this.colorRef = hwmfColorRef;
            int init = hwmfColorRef.init(littleEndianInputStream);
            this.brushHatch = HwmfHatchStyle.valueOf((int) littleEndianInputStream.readUInt());
            return init + 12;
        }

        @Override // org.apache.poi.hwmf.record.HwmfMisc.WmfCreateBrushIndirect
        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCreateDibPatternBrushPt extends HwmfMisc.WmfDibCreatePatternBrush implements HemfRecord {
        protected int brushIdx;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.addObjectTableEntry(this, this.brushIdx);
        }

        public int getBrushIdx() {
            return this.brushIdx;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.createDibPatternBrushPt;
        }

        @Override // org.apache.poi.hwmf.record.HwmfMisc.WmfDibCreatePatternBrush, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.okh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfMisc.EmfCreateDibPatternBrushPt.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "brushIdx", new Supplier() { // from class: com.sunia.HTREnginev2.pkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfMisc.EmfCreateDibPatternBrushPt.this.getBrushIdx());
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            int readIndex = littleEndianInputStream.getReadIndex();
            this.style = HwmfBrushStyle.BS_DIBPATTERNPT;
            this.brushIdx = (int) littleEndianInputStream.readUInt();
            this.colorUsage = HwmfFill.ColorUsage.valueOf((int) littleEndianInputStream.readUInt());
            int readInt = littleEndianInputStream.readInt();
            int readInt2 = littleEndianInputStream.readInt();
            int readInt3 = littleEndianInputStream.readInt();
            int readInt4 = littleEndianInputStream.readInt();
            this.patternDib = new HwmfBitmapDib();
            return Math.toIntExact(24 + HemfFill.readBitmap(littleEndianInputStream, r1, readIndex, readInt, readInt2, readInt3, readInt4));
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCreateMonoBrush implements HemfRecord, HwmfObjectTableEntry {
        protected final HwmfBitmapDib bitmap = new HwmfBitmapDib();
        protected HwmfFill.ColorUsage colorUsage;
        protected int penIndex;

        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            if (this.bitmap.isValid()) {
                HwmfDrawProperties properties = hwmfGraphics.getProperties();
                properties.setBrushStyle(HwmfBrushStyle.BS_PATTERN);
                properties.setBrushBitmap(this.bitmap.getImage());
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.addObjectTableEntry(this, this.penIndex);
        }

        public HwmfBitmapDib getBitmap() {
            return this.bitmap;
        }

        public HwmfFill.ColorUsage getColorUsage() {
            return this.colorUsage;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.createMonoBrush;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("penIndex", new Supplier() { // from class: com.sunia.HTREnginev2.qkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfMisc.EmfCreateMonoBrush.this.getPenIndex());
                }
            }, "colorUsage", new Supplier() { // from class: com.sunia.HTREnginev2.rkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfCreateMonoBrush.this.getColorUsage();
                }
            }, "bitmap", new Supplier() { // from class: com.sunia.HTREnginev2.skh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfCreateMonoBrush.this.getBitmap();
                }
            });
        }

        public int getPenIndex() {
            return this.penIndex;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            int readIndex = littleEndianInputStream.getReadIndex();
            this.penIndex = (int) littleEndianInputStream.readUInt();
            this.colorUsage = HwmfFill.ColorUsage.valueOf((int) littleEndianInputStream.readUInt());
            return Math.toIntExact(24 + HemfFill.readBitmap(littleEndianInputStream, this.bitmap, readIndex, (int) littleEndianInputStream.readUInt(), (int) littleEndianInputStream.readUInt(), (int) littleEndianInputStream.readUInt(), Math.toIntExact(littleEndianInputStream.readUInt())));
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCreatePen extends HwmfMisc.WmfCreatePenIndirect implements HemfRecord {
        protected int penIndex;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.addObjectTableEntry(this, this.penIndex);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.createPen;
        }

        @Override // org.apache.poi.hwmf.record.HwmfMisc.WmfCreatePenIndirect, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.tkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfMisc.EmfCreatePen.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "penIndex", new Supplier() { // from class: com.sunia.HTREnginev2.ukh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfMisc.EmfCreatePen.this.getPenIndex());
                }
            });
        }

        public int getPenIndex() {
            return this.penIndex;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.penIndex = (int) littleEndianInputStream.readUInt();
            this.penStyle = HwmfPenStyle.valueOf((int) littleEndianInputStream.readUInt());
            this.dimension.setSize(littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
            return this.colorRef.init(littleEndianInputStream) + 16;
        }

        @Override // org.apache.poi.hwmf.record.HwmfMisc.WmfCreatePenIndirect
        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfDeleteObject extends HwmfMisc.WmfDeleteObject implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.deleteobject;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.objectIndex = (int) littleEndianInputStream.readUInt();
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfEof implements HemfRecord {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        protected final List<HwmfPalette.PaletteEntry> palette = new ArrayList();

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.eof;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("palette", new Supplier() { // from class: com.sunia.HTREnginev2.vkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfEof.this.getPalette();
                }
            });
        }

        public List<HwmfPalette.PaletteEntry> getPalette() {
            return this.palette;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            littleEndianInputStream.getReadIndex();
            int readUInt = (int) littleEndianInputStream.readUInt();
            int readUInt2 = (int) littleEndianInputStream.readUInt();
            int i = 8;
            if (readUInt > 0 && readUInt2 > 0) {
                int i2 = readUInt2 - 16;
                littleEndianInputStream.skipFully(i2);
                int i3 = 8 + i2;
                for (int i4 = 0; i4 < readUInt; i4++) {
                    i3 += new HwmfPalette.PaletteEntry().init(littleEndianInputStream);
                }
                int i5 = (int) ((j - i3) - 4);
                littleEndianInputStream.skipFully(i5);
                i = i3 + i5;
            }
            littleEndianInputStream.readUInt();
            return i + 4;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfExtCreatePen extends EmfCreatePen {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        protected final HwmfBitmapDib bitmap = new HwmfBitmapDib();
        protected HwmfBrushStyle brushStyle;
        protected HwmfHatchStyle hatchStyle;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        public HwmfBitmapDib getBitmap() {
            return this.bitmap;
        }

        public HwmfBrushStyle getBrushStyle() {
            return this.brushStyle;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfMisc.EmfCreatePen, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.extCreatePen;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfMisc.EmfCreatePen, org.apache.poi.hwmf.record.HwmfMisc.WmfCreatePenIndirect, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.wkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfMisc.EmfExtCreatePen.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "brushStyle", new Supplier() { // from class: com.sunia.HTREnginev2.xkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfExtCreatePen.this.getBrushStyle();
                }
            }, "hatchStyle", new Supplier() { // from class: com.sunia.HTREnginev2.ykh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfExtCreatePen.this.getHatchStyle();
                }
            }, "bitmap", new Supplier() { // from class: com.sunia.HTREnginev2.zkh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfExtCreatePen.this.getBitmap();
                }
            });
        }

        public HwmfHatchStyle getHatchStyle() {
            return this.hatchStyle;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfMisc.EmfCreatePen, org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            int readIndex = littleEndianInputStream.getReadIndex();
            this.penIndex = (int) littleEndianInputStream.readUInt();
            int readUInt = (int) littleEndianInputStream.readUInt();
            int readUInt2 = (int) littleEndianInputStream.readUInt();
            int readUInt3 = (int) littleEndianInputStream.readUInt();
            int readUInt4 = (int) littleEndianInputStream.readUInt();
            HemfPenStyle valueOf = HemfPenStyle.valueOf((int) littleEndianInputStream.readUInt());
            this.penStyle = valueOf;
            this.dimension.setSize(littleEndianInputStream.readUInt(), 0.0d);
            this.brushStyle = HwmfBrushStyle.valueOf((int) littleEndianInputStream.readUInt());
            int init = 32 + this.colorRef.init(littleEndianInputStream);
            this.hatchStyle = HwmfHatchStyle.valueOf(littleEndianInputStream.readInt());
            int readUInt5 = (int) littleEndianInputStream.readUInt();
            int i = init + 4 + 4;
            float[] fArr = new float[readUInt5];
            for (int i2 = 0; i2 < readUInt5; i2++) {
                fArr[i2] = (int) littleEndianInputStream.readUInt();
            }
            if (this.penStyle.getLineDash() == HwmfPenStyle.HwmfLineDash.USERSTYLE) {
                valueOf.setLineDashes(fArr);
            }
            return Math.toIntExact(Math.addExact(i, readUInt5 * 4) + HemfFill.readBitmap(littleEndianInputStream, this.bitmap, readIndex, readUInt, readUInt2, readUInt3, readUInt4));
        }

        @Override // org.apache.poi.hemf.record.emf.HemfMisc.EmfCreatePen, org.apache.poi.hwmf.record.HwmfMisc.WmfCreatePenIndirect
        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfMisc.EmfCreatePen, org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfModifyWorldTransform implements HemfRecord {
        protected HemfHeader header;
        protected HemfModifyWorldTransformMode modifyWorldTransformMode;
        protected final AffineTransform xForm = new AffineTransform();

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            if (this.modifyWorldTransformMode == null) {
                return;
            }
            HemfDrawProperties properties = hemfGraphics.getProperties();
            int i = C194461.f111339x93220614[this.modifyWorldTransformMode.ordinal()];
            if (i == 1) {
                properties.addLeftTransform(this.xForm);
            } else if (i == 2) {
                properties.addRightTransform(this.xForm);
            } else if (i != 3) {
                properties.clearTransform();
                properties.addLeftTransform(this.xForm);
            } else {
                properties.clearTransform();
            }
            hemfGraphics.updateWindowMapMode();
            hemfGraphics.getProperties().setLocation(0.0d, 0.0d);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.modifyWorldTransform;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("xForm", new Supplier() { // from class: com.sunia.HTREnginev2.alh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfModifyWorldTransform.this.getXForm();
                }
            }, "modifyWorldTransformMode", new Supplier() { // from class: com.sunia.HTREnginev2.blh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfModifyWorldTransform.this.getModifyWorldTransformMode();
                }
            });
        }

        public HemfModifyWorldTransformMode getModifyWorldTransformMode() {
            return this.modifyWorldTransformMode;
        }

        public AffineTransform getXForm() {
            return this.xForm;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long readXForm = HemfFill.readXForm(littleEndianInputStream, this.xForm);
            this.modifyWorldTransformMode = HemfModifyWorldTransformMode.valueOf((int) littleEndianInputStream.readUInt());
            return readXForm + 4;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void setHeader(HemfHeader hemfHeader) {
            this.header = hemfHeader;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfRestoreDc extends HwmfMisc.WmfRestoreDc implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.restoreDc;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.nSavedDC = littleEndianInputStream.readInt();
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSaveDc extends HwmfMisc.WmfSaveDc implements HemfRecordWithoutProperties {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.saveDc;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return 0L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetBkColor extends HwmfMisc.WmfSetBkColor implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setBkColor;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return this.colorRef.init(littleEndianInputStream);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetBkMode extends HwmfMisc.WmfSetBkMode implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setBkMode;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.bkMode = HwmfMisc.WmfSetBkMode.HwmfBkMode.valueOf((int) littleEndianInputStream.readUInt());
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetBrushOrgEx implements HemfRecord {
        protected final Point2D origin = new Point2D.Double();

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setBrushOrgEx;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("origin", new Supplier() { // from class: com.sunia.HTREnginev2.clh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfSetBrushOrgEx.this.getOrigin();
                }
            });
        }

        public Point2D getOrigin() {
            return this.origin;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readPointL(littleEndianInputStream, this.origin);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetMapMode extends HwmfMisc.WmfSetMapMode implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setMapMode;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.mapMode = HwmfMapMode.valueOf((int) littleEndianInputStream.readUInt());
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetMapperFlags extends HwmfMisc.WmfSetMapperFlags implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setMapperFlags;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return super.init(littleEndianInputStream, j, (int) j2);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetMiterLimit implements HemfRecord {
        protected int miterLimit;

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.getProperties().setPenMiterLimit(this.miterLimit);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setMiterLimit;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("miterLimit", new Supplier() { // from class: com.sunia.HTREnginev2.dlh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfMisc.EmfSetMiterLimit.this.getMiterLimit());
                }
            });
        }

        public int getMiterLimit() {
            return this.miterLimit;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.miterLimit = (int) littleEndianInputStream.readUInt();
            return 4L;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetRop2 extends HwmfMisc.WmfSetRop2 implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setRop2;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.drawMode = HwmfBinaryRasterOp.valueOf((int) littleEndianInputStream.readUInt());
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetStretchBltMode extends HwmfMisc.WmfSetStretchBltMode implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setStretchBltMode;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.stretchBltMode = HwmfMisc.WmfSetStretchBltMode.StretchBltMode.valueOf((int) littleEndianInputStream.readUInt());
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetWorldTransform implements HemfRecord {
        protected final AffineTransform xForm = new AffineTransform();

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            properties.clearTransform();
            properties.addLeftTransform(this.xForm);
            hemfGraphics.updateWindowMapMode();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setWorldTransform;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("xForm", new Supplier() { // from class: com.sunia.HTREnginev2.elh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfMisc.EmfSetWorldTransform.this.getXForm();
                }
            });
        }

        public AffineTransform getXForm() {
            return this.xForm;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfFill.readXForm(littleEndianInputStream, this.xForm);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public enum HemfModifyWorldTransformMode {
        MWT_IDENTITY(1),
        MWT_LEFTMULTIPLY(2),
        MWT_RIGHTMULTIPLY(3),
        MWT_SET(4);


        /* renamed from: id */
        public final int f111340id;

        HemfModifyWorldTransformMode(int i) {
            this.f111340id = i;
        }

        public static HemfModifyWorldTransformMode valueOf(int i) {
            for (HemfModifyWorldTransformMode hemfModifyWorldTransformMode : values()) {
                if (hemfModifyWorldTransformMode.f111340id == i) {
                    return hemfModifyWorldTransformMode;
                }
            }
            return null;
        }
    }
}
