package org.apache.poi.hssf.record;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sunia.HTREnginev2.b7n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.PaletteRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class PaletteRecord extends StandardRecord {
    private static final int[] DEFAULT_COLORS = {0, 16777215, 16711680, 65280, 255, 16776960, 16711935, 65535, 8388608, 32768, 128, 8421376, 8388736, b7n.f65484e, 12632256, 8421504, 10066431, 10040166, 16777164, 13434879, 6684774, 16744576, 26316, 13421823, 128, 16711935, 16776960, 65535, 8388736, 8388608, b7n.f65484e, 255, 52479, 13434879, 13434828, 16777113, 10079487, 16751052, 13408767, 16764057, 3368703, 3394764, 10079232, 16763904, 16750848, 16737792, 6710937, 9868950, 13158, 3381606, 13056, 3355392, 10040064, 10040166, 3355545, 3355443};
    public static final short FIRST_COLOR_INDEX = 8;
    public static final byte STANDARD_PALETTE_SIZE = 56;
    public static final short sid = 146;
    private final ArrayList<PColor> _colors;

    public PaletteRecord() {
        final ArrayList<PColor> arrayList = new ArrayList<>(100);
        this._colors = arrayList;
        Arrays.stream(DEFAULT_COLORS).mapToObj(new IntFunction() { // from class: org.apache.poi.hssf.record.k
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return new PaletteRecord.PColor(i);
            }
        }).forEach(new Consumer() { // from class: org.apache.poi.hssf.record.l
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((PaletteRecord.PColor) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this._colors;
    }

    public byte[] getColor(int i) {
        int i2 = i - 8;
        if (i2 < 0 || i2 >= this._colors.size()) {
            return null;
        }
        return this._colors.get(i2).getTriplet();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this._colors.size() * 4) + 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(CouchFieldKey.KEY_COLORS, new Supplier() { // from class: com.sunia.HTREnginev2.nuk
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = PaletteRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 146;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._colors.size());
        Iterator<PColor> it2 = this._colors.iterator();
        while (it2.hasNext()) {
            it2.next().serialize(littleEndianOutput);
        }
    }

    public void setColor(short s, byte b, byte b2, byte b3) {
        int i = s - 8;
        if (i < 0 || i >= 56) {
            return;
        }
        while (this._colors.size() <= i) {
            this._colors.add(new PColor(0, 0, 0));
        }
        this._colors.set(i, new PColor(b, b2, b3));
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.PALETTE;
    }

    /* loaded from: classes12.dex */
    public static final class PColor implements GenericRecord {
        public static final short ENCODED_SIZE = 4;
        private final int _blue;
        private final int _green;
        private final int _red;

        public PColor(int i) {
            this._red = (i >>> 16) & 255;
            this._green = (i >>> 8) & 255;
            this._blue = i & 255;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this._red & 255);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this._green & 255);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this._blue & 255);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("red", new Supplier() { // from class: org.apache.poi.hssf.record.n
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = PaletteRecord.PColor.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "green", new Supplier() { // from class: org.apache.poi.hssf.record.o
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = PaletteRecord.PColor.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "blue", new Supplier() { // from class: org.apache.poi.hssf.record.p
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = PaletteRecord.PColor.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
        }

        public byte[] getTriplet() {
            return new byte[]{(byte) this._red, (byte) this._green, (byte) this._blue};
        }

        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeByte(this._red);
            littleEndianOutput.writeByte(this._green);
            littleEndianOutput.writeByte(this._blue);
            littleEndianOutput.writeByte(0);
        }

        public PColor(int i, int i2, int i3) {
            this._red = i;
            this._green = i2;
            this._blue = i3;
        }

        public PColor(PColor pColor) {
            this._red = pColor._red;
            this._green = pColor._green;
            this._blue = pColor._blue;
        }

        public PColor(RecordInputStream recordInputStream) {
            this._red = recordInputStream.readByte();
            this._green = recordInputStream.readByte();
            this._blue = recordInputStream.readByte();
            recordInputStream.readByte();
        }
    }

    public PaletteRecord(PaletteRecord paletteRecord) {
        super(paletteRecord);
        final ArrayList<PColor> arrayList = new ArrayList<>(100);
        this._colors = arrayList;
        arrayList.ensureCapacity(paletteRecord._colors.size());
        paletteRecord._colors.stream().map(new Function() { // from class: org.apache.poi.hssf.record.m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new PaletteRecord.PColor((PaletteRecord.PColor) obj);
            }
        }).forEach(new Consumer() { // from class: org.apache.poi.hssf.record.l
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((PaletteRecord.PColor) obj);
            }
        });
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public PaletteRecord copy() {
        return new PaletteRecord(this);
    }

    public PaletteRecord(RecordInputStream recordInputStream) {
        ArrayList<PColor> arrayList = new ArrayList<>(100);
        this._colors = arrayList;
        short readShort = recordInputStream.readShort();
        arrayList.ensureCapacity(readShort);
        for (int i = 0; i < readShort; i++) {
            this._colors.add(new PColor(recordInputStream));
        }
    }
}
