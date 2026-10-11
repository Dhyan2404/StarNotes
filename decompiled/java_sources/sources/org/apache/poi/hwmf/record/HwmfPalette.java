package org.apache.poi.hwmf.record;

import java.awt.Color;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.draw.HwmfDrawProperties;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfPalette;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfPalette {

    /* loaded from: classes12.dex */
    public static class WmfAnimatePalette extends WmfPaletteParent {
        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            List<PaletteEntry> palette = properties.getPalette();
            List<PaletteEntry> paletteCopy = getPaletteCopy();
            int paletteStart = getPaletteStart();
            if (palette == null) {
                palette = new ArrayList<>();
            }
            for (int size = palette.size(); size < paletteStart; size++) {
                palette.add(new PaletteEntry());
            }
            for (int i = 0; i < paletteCopy.size(); i++) {
                PaletteEntry paletteEntry = paletteCopy.get(i);
                int i2 = paletteStart + i;
                if (palette.size() <= i2) {
                    palette.add(paletteEntry);
                } else if (palette.get(i2).isReserved()) {
                    palette.set(i2, paletteEntry);
                }
            }
            properties.setPalette(palette);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.animatePalette;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfCreatePalette extends WmfPaletteParent implements HwmfObjectTableEntry {
        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.getProperties().setPalette(getPaletteCopy());
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.createPalette;
        }
    }

    /* loaded from: classes12.dex */
    public static abstract class WmfPaletteParent implements HwmfRecord, HwmfObjectTableEntry {
        protected final List<PaletteEntry> palette = new ArrayList();
        protected int start;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public final void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.addObjectTableEntry(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("paletteStart", new Supplier() { // from class: com.sunia.HTREnginev2.m6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfPalette.WmfPaletteParent.this.getPaletteStart());
                }
            }, "pallete", new Supplier() { // from class: com.sunia.HTREnginev2.n6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfPalette.WmfPaletteParent.this.getPaletteCopy();
                }
            });
        }

        public List<PaletteEntry> getPaletteCopy() {
            ArrayList arrayList = new ArrayList();
            Iterator<PaletteEntry> it2 = this.palette.iterator();
            while (it2.hasNext()) {
                arrayList.add(new PaletteEntry(it2.next()));
            }
            return arrayList;
        }

        public int getPaletteStart() {
            return this.start;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.start = littleEndianInputStream.readUShort();
            return readPaletteEntries(littleEndianInputStream, -1) + 2;
        }

        public int readPaletteEntries(LittleEndianInputStream littleEndianInputStream, int i) throws IOException {
            int readUShort = i > -1 ? i : littleEndianInputStream.readUShort();
            int i2 = i > -1 ? 0 : 2;
            for (int i3 = 0; i3 < readUShort; i3++) {
                PaletteEntry paletteEntry = new PaletteEntry();
                i2 += paletteEntry.init(littleEndianInputStream);
                this.palette.add(paletteEntry);
            }
            return i2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfRealizePalette implements HwmfRecord {
        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return null;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.realizePalette;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return 0;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfResizePalette implements HwmfRecord, HwmfObjectTableEntry {
        protected int numberOfEntries;

        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            List<PaletteEntry> palette = properties.getPalette();
            if (palette == null) {
                palette = new ArrayList<>();
            }
            int size = palette.size();
            while (true) {
                int i = this.numberOfEntries;
                if (size >= i) {
                    properties.setPalette(palette.subList(0, i));
                    return;
                } else {
                    palette.add(new PaletteEntry());
                    size++;
                }
            }
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.addObjectTableEntry(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("numberOfEntries", new Supplier() { // from class: com.sunia.HTREnginev2.o6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfPalette.WmfResizePalette.this.getNumberOfEntries());
                }
            });
        }

        public int getNumberOfEntries() {
            return this.numberOfEntries;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.resizePalette;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.numberOfEntries = littleEndianInputStream.readUShort();
            return 2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSelectPalette implements HwmfRecord {
        protected int paletteIndex;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.applyObjectTableEntry(this.paletteIndex);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("paletteIndex", new Supplier() { // from class: com.sunia.HTREnginev2.p6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfPalette.WmfSelectPalette.this.getPaletteIndex());
                }
            });
        }

        public int getPaletteIndex() {
            return this.paletteIndex;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.selectPalette;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.paletteIndex = littleEndianInputStream.readUShort();
            return 2;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetPaletteEntries extends WmfPaletteParent {
        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            HwmfDrawProperties properties = hwmfGraphics.getProperties();
            List<PaletteEntry> palette = properties.getPalette();
            if (palette == null) {
                palette = new ArrayList<>();
            }
            int paletteStart = getPaletteStart();
            for (int size = palette.size(); size < paletteStart; size++) {
                palette.add(new PaletteEntry());
            }
            for (PaletteEntry paletteEntry : getPaletteCopy()) {
                if (palette.size() <= paletteStart) {
                    palette.add(paletteEntry);
                } else {
                    palette.set(paletteStart, paletteEntry);
                }
                paletteStart++;
            }
            properties.setPalette(palette);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setPalEntries;
        }
    }

    /* loaded from: classes12.dex */
    public static class PaletteEntry implements GenericRecord {
        private Color colorRef;
        private int values;
        private static final BitField PC_RESERVED = BitFieldFactory.getInstance(1);
        private static final BitField PC_EXPLICIT = BitFieldFactory.getInstance(2);
        private static final BitField PC_NOCOLLAPSE = BitFieldFactory.getInstance(4);
        private static final int[] FLAGS_MASKS = {1, 2, 4};
        private static final String[] FLAGS_NAMES = {"RESERVED", "EXPLICIT", "NOCOLLAPSE"};

        public PaletteEntry() {
            this.values = PC_RESERVED.set(0);
            this.colorRef = Color.BLACK;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Number lambda$getGenericProperties$0() {
            return Integer.valueOf(this.values);
        }

        public Color getColorRef() {
            return this.colorRef;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.k6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Number lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HwmfPalette.PaletteEntry.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, FLAGS_MASKS, FLAGS_NAMES), "color", new Supplier() { // from class: com.sunia.HTREnginev2.l6i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfPalette.PaletteEntry.this.getColorRef();
                }
            });
        }

        public int init(LittleEndianInputStream littleEndianInputStream) throws IOException {
            this.values = littleEndianInputStream.readUByte();
            int readUByte = littleEndianInputStream.readUByte();
            this.colorRef = new Color(littleEndianInputStream.readUByte(), littleEndianInputStream.readUByte(), readUByte);
            return 4;
        }

        public boolean isExplicit() {
            return PC_EXPLICIT.isSet(this.values);
        }

        public boolean isNoCollapse() {
            return PC_NOCOLLAPSE.isSet(this.values);
        }

        public boolean isReserved() {
            return PC_RESERVED.isSet(this.values);
        }

        public PaletteEntry(PaletteEntry paletteEntry) {
            this.values = paletteEntry.values;
            this.colorRef = paletteEntry.colorRef;
        }
    }
}
