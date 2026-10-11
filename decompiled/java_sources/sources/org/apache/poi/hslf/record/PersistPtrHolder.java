package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Stream;
import org.apache.poi.hslf.exceptions.CorruptPowerPointFileException;
import org.apache.poi.hslf.record.PersistPtrHolder;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class PersistPtrHolder extends PositionDependentRecordAtom {
    private final byte[] _header;
    private byte[] _ptrData;
    private final Map<Integer, Integer> _slideLocations;
    private final long _type;
    private static final BitField persistIdFld = BitFieldFactory.getInstance(1048575);
    private static final BitField cntPersistFld = BitFieldFactory.getInstance(-1048576);

    public PersistPtrHolder(byte[] bArr, int i, int i2) {
        i2 = i2 < 8 ? 8 : i2;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._type = LittleEndian.getUShort(r7, 2);
        this._slideLocations = new HashMap();
        this._ptrData = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
        int i4 = 0;
        while (true) {
            byte[] bArr2 = this._ptrData;
            if (i4 >= bArr2.length) {
                return;
            }
            int i5 = LittleEndian.getInt(bArr2, i4);
            int value = persistIdFld.getValue(i5);
            int value2 = cntPersistFld.getValue(i5);
            i4 += 4;
            for (int i6 = 0; i6 < value2; i6++) {
                this._slideLocations.put(Integer.valueOf(value + i6), Integer.valueOf((int) LittleEndian.getUInt(this._ptrData, i4)));
                i4 += 4;
            }
        }
    }

    private void normalizePersistDirectory() {
        int[] iArr = new int[this._slideLocations.size() * 2];
        final Stream<Map.Entry<Integer, Integer>> sorted = this._slideLocations.entrySet().stream().sorted(Comparator.comparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.m3l
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) ((Map.Entry) obj).getKey()).intValue();
            }
        }));
        sorted.getClass();
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = 0;
        int i5 = 0;
        for (Map.Entry entry : new Iterable() { // from class: com.sunia.HTREnginev2.n3l
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                return sorted.iterator();
            }
        }) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if (i2 + 1 < intValue) {
                i++;
                i4 = i;
                i5 = 0;
                i3 = intValue;
            }
            i5++;
            iArr[i4] = cntPersistFld.setValue(persistIdFld.setValue(0, i3), i5);
            i++;
            iArr[i] = ((Integer) entry.getValue()).intValue();
            i2 = intValue;
        }
        this._ptrData = new byte[(i + 1) * 4];
        for (int i6 = 0; i6 <= i; i6++) {
            LittleEndian.putInt(this._ptrData, i6 * 4, iArr[i6]);
        }
        LittleEndian.putInt(this._header, 4, this._ptrData.length);
    }

    public void addSlideLookup(int i, int i2) {
        if (!this._slideLocations.containsKey(Integer.valueOf(i))) {
            this._slideLocations.put(Integer.valueOf(i), Integer.valueOf(i2));
            return;
        }
        throw new CorruptPowerPointFileException("A record with persistId " + i + " already exists.");
    }

    public void clear() {
        this._slideLocations.clear();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("slideLocations", new Supplier() { // from class: com.sunia.HTREnginev2.l3l
            @Override // java.util.function.Supplier
            public final Object get() {
                return PersistPtrHolder.this.getSlideLocationsLookup();
            }
        });
    }

    public int[] getKnownSlideIDs() {
        int[] iArr = new int[this._slideLocations.size()];
        Iterator<Integer> it2 = this._slideLocations.keySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            iArr[i] = it2.next().intValue();
            i++;
        }
        return iArr;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return this._type;
    }

    public Map<Integer, Integer> getSlideLocationsLookup() {
        return Collections.unmodifiableMap(this._slideLocations);
    }

    @Override // org.apache.poi.hslf.record.PositionDependentRecordAtom, org.apache.poi.hslf.record.PositionDependentRecord
    public void updateOtherRecordReferences(Map<Integer, Integer> map) {
        for (Map.Entry<Integer, Integer> entry : this._slideLocations.entrySet()) {
            Integer value = entry.getValue();
            Integer num = map.get(value);
            if (num == null) {
                Record.LOG.atWarn().log("Couldn't find the new location of the \"slide\" with id {} that used to be at {}. Not updating the position of it, you probably won't be able to find it any more (if you ever could!)", entry.getKey(), value);
            } else {
                entry.setValue(num);
            }
        }
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        normalizePersistDirectory();
        outputStream.write(this._header);
        outputStream.write(this._ptrData);
    }
}
