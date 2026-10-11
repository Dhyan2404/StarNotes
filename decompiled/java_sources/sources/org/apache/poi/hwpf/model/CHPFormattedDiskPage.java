package org.apache.poi.hwpf.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.RecordFormatException;

@Internal
/* loaded from: classes12.dex */
public final class CHPFormattedDiskPage extends FormattedDiskPage {
    private static final int FC_SIZE = 4;
    private ArrayList<CHPX> _chpxList;
    private ArrayList<CHPX> _overFlow;

    public CHPFormattedDiskPage() {
        this._chpxList = new ArrayList<>();
    }

    public void fill(List<CHPX> list) {
        this._chpxList.addAll(list);
    }

    public CHPX getCHPX(int i) {
        return this._chpxList.get(i);
    }

    public List<CHPX> getCHPXs() {
        return Collections.unmodifiableList(this._chpxList);
    }

    @Override // org.apache.poi.hwpf.model.FormattedDiskPage
    public byte[] getGrpprl(int i) {
        int uByte = LittleEndian.getUByte(this._fkp, this._offset + ((this._crun + 1) * 4) + i) * 2;
        if (uByte == 0) {
            return new byte[0];
        }
        return IOUtils.safelyClone(this._fkp, this._offset + uByte + 1, LittleEndian.getUByte(this._fkp, this._offset + uByte), HWPFDocument.getMaxRecordLength());
    }

    public ArrayList<CHPX> getOverflow() {
        return this._overFlow;
    }

    public byte[] toByteArray(CharIndexTranslator charIndexTranslator) {
        int i;
        byte[] bArr = new byte[512];
        int size = this._chpxList.size();
        int i2 = 6;
        int i3 = 0;
        while (true) {
            i = 511;
            if (i3 >= size) {
                break;
            }
            int length = this._chpxList.get(i3).getGrpprl().length;
            i2 += length + 6;
            if (i2 > (i3 % 2) + 511) {
                break;
            }
            if ((length + 1) % 2 > 0) {
                i2++;
            }
            i3++;
        }
        if (i3 == 0) {
            throw new RecordFormatException("empty grpprl entry.");
        }
        if (i3 != size) {
            ArrayList<CHPX> arrayList = new ArrayList<>();
            this._overFlow = arrayList;
            arrayList.addAll(this._chpxList.subList(i3, size));
        }
        bArr[511] = (byte) i3;
        int i4 = (i3 * 4) + 4;
        int i5 = 0;
        int i6 = 0;
        for (CHPX chpx : this._chpxList.subList(0, i3)) {
            int byteIndex = charIndexTranslator.getByteIndex(chpx.getStart());
            int byteIndex2 = charIndexTranslator.getByteIndex(chpx.getEnd());
            LittleEndian.putInt(bArr, i5, byteIndex);
            byte[] grpprl = chpx.getGrpprl();
            int length2 = i - (grpprl.length + 1);
            i = length2 - (length2 % 2);
            bArr[i4] = (byte) (i / 2);
            bArr[i] = (byte) grpprl.length;
            System.arraycopy(grpprl, 0, bArr, i + 1, grpprl.length);
            i4++;
            i5 += 4;
            i6 = byteIndex2;
        }
        LittleEndian.putInt(bArr, i5, i6);
        return bArr;
    }

    public CHPFormattedDiskPage(byte[] bArr, int i, CharIndexTranslator charIndexTranslator) {
        super(bArr, i);
        this._chpxList = new ArrayList<>();
        for (int i2 = 0; i2 < this._crun; i2++) {
            for (int[] iArr : charIndexTranslator.getCharIndexRanges(getStart(i2), getEnd(i2))) {
                this._chpxList.add(new CHPX(iArr[0], iArr[1], new SprmBuffer(getGrpprl(i2), 0)));
            }
        }
    }
}
