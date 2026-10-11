package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class SlideListWithText extends RecordContainer {
    public static final int MASTER = 1;
    public static final int NOTES = 2;
    public static final int SLIDES = 0;
    private static final long _type = RecordTypes.SlideListWithText.typeID;
    private final byte[] _header;
    private SlideAtomsSet[] slideAtomsSets;

    /* loaded from: classes12.dex */
    public static class SlideAtomsSet {
        private final SlidePersistAtom slidePersistAtom;
        private final Record[] slideRecords;

        public SlideAtomsSet(SlidePersistAtom slidePersistAtom, Record[] recordArr) {
            this.slidePersistAtom = slidePersistAtom;
            this.slideRecords = (Record[]) recordArr.clone();
        }

        public SlidePersistAtom getSlidePersistAtom() {
            return this.slidePersistAtom;
        }

        public Record[] getSlideRecords() {
            return this.slideRecords;
        }
    }

    public SlideListWithText(byte[] bArr, int i, int i2) {
        Record[] recordArr;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (true) {
            Record[] recordArr2 = this._children;
            if (i4 < recordArr2.length) {
                if (recordArr2[i4] instanceof SlidePersistAtom) {
                    int i5 = i4 + 1;
                    int i6 = i5;
                    while (true) {
                        recordArr = this._children;
                        if (i6 >= recordArr.length || (recordArr[i6] instanceof SlidePersistAtom)) {
                            break;
                        } else {
                            i6++;
                        }
                    }
                    int i7 = (i6 - i4) - 1;
                    arrayList.add(new SlideAtomsSet((SlidePersistAtom) this._children[i4], (Record[]) Arrays.copyOfRange(recordArr, i5, i5 + i7, Record[].class)));
                    i4 += i7;
                }
                i4++;
            } else {
                this.slideAtomsSets = (SlideAtomsSet[]) arrayList.toArray(new SlideAtomsSet[0]);
                return;
            }
        }
    }

    public void addSlidePersistAtom(SlidePersistAtom slidePersistAtom) {
        appendChildRecord(slidePersistAtom);
        SlideAtomsSet slideAtomsSet = new SlideAtomsSet(slidePersistAtom, new Record[0]);
        SlideAtomsSet[] slideAtomsSetArr = this.slideAtomsSets;
        int length = slideAtomsSetArr.length + 1;
        SlideAtomsSet[] slideAtomsSetArr2 = new SlideAtomsSet[length];
        System.arraycopy(slideAtomsSetArr, 0, slideAtomsSetArr2, 0, slideAtomsSetArr.length);
        slideAtomsSetArr2[length - 1] = slideAtomsSet;
        this.slideAtomsSets = slideAtomsSetArr2;
    }

    public int getInstance() {
        return LittleEndian.getShort(this._header, 0) >> 4;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public SlideAtomsSet[] getSlideAtomsSets() {
        return this.slideAtomsSets;
    }

    public void setInstance(int i) {
        LittleEndian.putShort(this._header, 0, (short) ((i << 4) | 15));
    }

    public void setSlideAtomsSets(SlideAtomsSet[] slideAtomsSetArr) {
        this.slideAtomsSets = (SlideAtomsSet[]) slideAtomsSetArr.clone();
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], _type, this._children, outputStream);
    }

    public SlideListWithText() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 15);
        LittleEndian.putUShort(bArr, 2, (int) _type);
        LittleEndian.putInt(bArr, 4, 0);
        this._children = new Record[0];
        this.slideAtomsSets = new SlideAtomsSet[0];
    }
}
