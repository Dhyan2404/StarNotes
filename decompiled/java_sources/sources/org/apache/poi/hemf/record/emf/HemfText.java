package org.apache.poi.hemf.record.emf;

import com.sunia.HTREnginev2.gon;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfText;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfText;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.RecordFormatException;

@Internal
/* loaded from: classes12.dex */
public class HemfText {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static int MAX_RECORD_LENGTH = 1000000;

    /* loaded from: classes12.dex */
    public static class EmfExtCreateFontIndirectW extends HwmfText.WmfCreateFontIndirect implements HemfRecord {
        int fontIdx;

        public EmfExtCreateFontIndirectW() {
            super(new HemfFont());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.addObjectTableEntry(this, this.fontIdx);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.extCreateFontIndirectW;
        }

        public int getFontIdx() {
            return this.fontIdx;
        }

        @Override // org.apache.poi.hwmf.record.HwmfText.WmfCreateFontIndirect, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.uyh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfText.EmfExtCreateFontIndirectW.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "fontIdx", new Supplier() { // from class: com.sunia.HTREnginev2.vyh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfText.EmfExtCreateFontIndirectW.this.getFontIdx());
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.fontIdx = (int) littleEndianInputStream.readUInt();
            return this.font.init(littleEndianInputStream, (int) (j - 4)) + 4;
        }

        @Override // org.apache.poi.hwmf.record.HwmfText.WmfCreateFontIndirect
        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfExtTextOutA extends HwmfText.WmfExtTextOut implements HemfRecord {
        protected Rectangle2D boundsIgnored;
        protected EmfGraphicsMode graphicsMode;
        protected final Dimension2D scale;

        public EmfExtTextOutA() {
            super(new EmfExtTextOutOptions());
            this.boundsIgnored = new Rectangle2D.Double();
            this.scale = new Dimension2DDouble();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return this.boundsIgnored;
        }

        @Override // org.apache.poi.hwmf.record.HwmfText.WmfExtTextOut, org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            Dimension2D dimension2D = this.graphicsMode == EmfGraphicsMode.GM_COMPATIBLE ? this.scale : null;
            hwmfGraphics.setCharsetProvider(this.charsetProvider);
            hwmfGraphics.drawString(this.rawTextBytes, this.stringLength, this.reference, dimension2D, this.bounds, this.options, this.f111443dx, isUnicode());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.extTextOutA;
        }

        @Override // org.apache.poi.hwmf.record.HwmfText.WmfExtTextOut, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.wyh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfText.EmfExtTextOutA.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "boundsIgnored", new Supplier() { // from class: com.sunia.HTREnginev2.xyh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfText.EmfExtTextOutA.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "graphicsMode", new Supplier() { // from class: com.sunia.HTREnginev2.yyh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfText.EmfExtTextOutA.this.getGraphicsMode();
                }
            }, "scale", new Supplier() { // from class: com.sunia.HTREnginev2.zyh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfText.EmfExtTextOutA.this.getScale();
                }
            });
        }

        public EmfGraphicsMode getGraphicsMode() {
            return this.graphicsMode;
        }

        public Dimension2D getScale() {
            return this.scale;
        }

        @Override // org.apache.poi.hwmf.record.HwmfText.WmfExtTextOut
        public String getText(Charset charset) throws IOException {
            return super.getText(charset);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long j3;
            if (j < 0 || 2147483647L <= j) {
                throw new RecordFormatException("recordSize must be a positive integer (0-0x7FFFFFFF)");
            }
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.boundsIgnored);
            this.graphicsMode = EmfGraphicsMode.values()[littleEndianInputStream.readInt() - 1];
            long readDimensionFloat = readRectL + 4 + HemfDraw.readDimensionFloat(littleEndianInputStream, this.scale) + HemfDraw.readPointL(littleEndianInputStream, this.reference);
            this.stringLength = (int) littleEndianInputStream.readUInt();
            int readUInt = (int) littleEndianInputStream.readUInt();
            long j4 = 8;
            long initInt = readDimensionFloat + 8 + this.options.initInt(littleEndianInputStream) + HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            if (!this.options.isClipped() && !this.options.isOpaque()) {
                this.bounds.setRect(0.0d, 0.0d, 0.0d, 0.0d);
            }
            int readUInt2 = (int) littleEndianInputStream.readUInt();
            long j5 = initInt + 4;
            String str = readUInt2 < readUInt ? "ds" : "sd";
            int i = (int) (readUInt2 <= 8 ? j : readUInt2 - 8);
            char[] charArray = str.toCharArray();
            int length = charArray.length;
            int i2 = 0;
            while (i2 < length) {
                if (charArray[i2] != 'd') {
                    int intExact = Math.toIntExact(readUInt - (j5 + j4));
                    if (readUInt > 0 && intExact >= 0 && readUInt - 8 < j) {
                        littleEndianInputStream.skipFully(intExact);
                        long j6 = j5 + intExact;
                        long intExact2 = Math.toIntExact(Math.min(j, i) - j6);
                        byte[] safelyAllocate = IOUtils.safelyAllocate(intExact2, HemfText.MAX_RECORD_LENGTH);
                        this.rawTextBytes = safelyAllocate;
                        littleEndianInputStream.readFully(safelyAllocate);
                        j5 = j6 + intExact2;
                    }
                    j3 = 4;
                } else {
                    this.f111443dx.clear();
                    int i3 = (int) (readUInt2 - (j5 + 8));
                    if (readUInt2 > 0 && i3 >= 0 && readUInt2 - 8 < j) {
                        littleEndianInputStream.skipFully(i3);
                        j5 += i3;
                        int min = (int) Math.min(readUInt2 < readUInt ? readUInt - 8 : j, j);
                        while (j5 <= min - 4) {
                            this.f111443dx.add(Integer.valueOf((int) littleEndianInputStream.readUInt()));
                            j5 += 4;
                        }
                    }
                    j3 = 4;
                    if (this.f111443dx.size() < this.stringLength) {
                        this.f111443dx.clear();
                    }
                    i = Math.toIntExact(j);
                }
                i2++;
                j4 = 8;
            }
            return j5;
        }

        @Override // org.apache.poi.hwmf.record.HwmfText.WmfExtTextOut
        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfExtTextOutOptions extends HwmfText.WmfExtTextOutOptions {
        @Override // org.apache.poi.hwmf.record.HwmfText.WmfExtTextOutOptions
        public int init(LittleEndianInputStream littleEndianInputStream) {
            this.flags = (int) littleEndianInputStream.readUInt();
            return 4;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfExtTextOutW extends EmfExtTextOutA {
        @Override // org.apache.poi.hemf.record.emf.HemfText.EmfExtTextOutA, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.extTextOutW;
        }

        public String getText() throws IOException {
            return getText(StandardCharsets.UTF_16LE);
        }

        @Override // org.apache.poi.hwmf.record.HwmfText.WmfExtTextOut
        public boolean isUnicode() {
            return true;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfGraphicsMode {
        GM_COMPATIBLE,
        GM_ADVANCED
    }

    /* loaded from: classes12.dex */
    public static class EmfSetTextAlign extends HwmfText.WmfSetTextAlign implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setTextAlign;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.textAlignmentMode = (int) littleEndianInputStream.readUInt();
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetTextColor extends HwmfText.WmfSetTextColor implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setTextColor;
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
    public static class PolyTextOutA extends UnimplementedHemfRecord {
    }

    /* loaded from: classes12.dex */
    public static class PolyTextOutW extends UnimplementedHemfRecord {
    }

    /* loaded from: classes12.dex */
    public static class SetTextJustification extends UnimplementedHemfRecord {
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }
}
