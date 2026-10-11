package org.apache.poi.hemf.record.emf;

import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfPalette;
import org.apache.poi.hwmf.record.HwmfPalette;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfPalette {

    /* loaded from: classes12.dex */
    public static class EmfCreatePalette extends HwmfPalette.WmfCreatePalette implements HemfRecord {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        protected int paletteIndex;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.addObjectTableEntry(this, this.paletteIndex);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.createPalette;
        }

        @Override // org.apache.poi.hwmf.record.HwmfPalette.WmfPaletteParent, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.flh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPalette.EmfCreatePalette.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "paletteIndex", new Supplier() { // from class: com.sunia.HTREnginev2.glh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPalette.EmfCreatePalette.this.getPaletteIndex());
                }
            });
        }

        public int getPaletteIndex() {
            return this.paletteIndex;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.start = 768;
            this.paletteIndex = (int) littleEndianInputStream.readUInt();
            littleEndianInputStream.readUShort();
            return readPaletteEntries(littleEndianInputStream, -1) + 4 + 2;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfRealizePalette extends HwmfPalette.WmfRealizePalette implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.realizePalette;
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
    public static class EmfResizePalette extends HwmfPalette.WmfResizePalette implements HemfRecord {
        int paletteIndex;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.addObjectTableEntry(this, this.paletteIndex);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.resizePalette;
        }

        @Override // org.apache.poi.hwmf.record.HwmfPalette.WmfResizePalette, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.hlh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPalette.EmfResizePalette.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "paletteIndex", new Supplier() { // from class: com.sunia.HTREnginev2.ilh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPalette.EmfResizePalette.this.getPaletteIndex());
                }
            });
        }

        public int getPaletteIndex() {
            return this.paletteIndex;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.paletteIndex = (int) littleEndianInputStream.readUInt();
            this.numberOfEntries = (int) littleEndianInputStream.readUInt();
            return 8L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSelectPalette extends HwmfPalette.WmfSelectPalette implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.selectPalette;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.paletteIndex = (int) littleEndianInputStream.readUInt();
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetIcmMode implements HemfRecord {
        private ICMMode icmMode;

        /* loaded from: classes12.dex */
        public enum ICMMode {
            ICM_OFF(1),
            ICM_ON(2),
            ICM_QUERY(3),
            ICM_DONE_OUTSIDEDC(4);


            /* renamed from: id */
            public final int f111341id;

            ICMMode(int i) {
                this.f111341id = i;
            }

            public static ICMMode valueOf(int i) {
                for (ICMMode iCMMode : values()) {
                    if (iCMMode.f111341id == i) {
                        return iCMMode;
                    }
                }
                return null;
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.seticmmode;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("icmMode", new Supplier() { // from class: com.sunia.HTREnginev2.jlh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPalette.EmfSetIcmMode.this.getIcmMode();
                }
            });
        }

        public ICMMode getIcmMode() {
            return this.icmMode;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.icmMode = ICMMode.valueOf(littleEndianInputStream.readInt());
            return 4L;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetPaletteEntries extends HwmfPalette.WmfSetPaletteEntries implements HemfRecord {
        int paletteIndex;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.addObjectTableEntry(this, this.paletteIndex);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setPaletteEntries;
        }

        @Override // org.apache.poi.hwmf.record.HwmfPalette.WmfPaletteParent, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.klh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPalette.EmfSetPaletteEntries.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "paletteIndex", new Supplier() { // from class: com.sunia.HTREnginev2.llh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPalette.EmfSetPaletteEntries.this.getPaletteIndex());
                }
            });
        }

        public int getPaletteIndex() {
            return this.paletteIndex;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.paletteIndex = (int) littleEndianInputStream.readUInt();
            this.start = (int) littleEndianInputStream.readUInt();
            return readPaletteEntries(littleEndianInputStream, (int) littleEndianInputStream.readUInt()) + 12;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }
}
