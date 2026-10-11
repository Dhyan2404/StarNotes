package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class PAPFormattedDiskPage extends FormattedDiskPage {
    private static final int BX_SIZE = 13;
    private static final int FC_SIZE = 4;
    private ArrayList<PAPX> _overFlow;
    private ArrayList<PAPX> _papxList;

    public PAPFormattedDiskPage() {
        this._papxList = new ArrayList<>();
    }

    private ParagraphHeight getParagraphHeight(int i) {
        return new ParagraphHeight(this._fkp, this._offset + 1 + ((this._crun + 1) * 4) + (i * 13));
    }

    public void fill(List<PAPX> list) {
        this._papxList.addAll(list);
    }

    @Override // org.apache.poi.hwpf.model.FormattedDiskPage
    public byte[] getGrpprl(int i) {
        int i2;
        int uByte = LittleEndian.getUByte(this._fkp, this._offset + ((this._crun + 1) * 4) + (i * 13)) * 2;
        int uByte2 = LittleEndian.getUByte(this._fkp, this._offset + uByte) * 2;
        if (uByte2 == 0) {
            uByte++;
            i2 = LittleEndian.getUByte(this._fkp, this._offset + uByte) * 2;
        } else {
            i2 = uByte2 - 1;
        }
        return IOUtils.safelyClone(this._fkp, this._offset + uByte + 1, i2, 512);
    }

    public ArrayList<PAPX> getOverflow() {
        return this._overFlow;
    }

    public PAPX getPAPX(int i) {
        return this._papxList.get(i);
    }

    public List<PAPX> getPAPXs() {
        return Collections.unmodifiableList(this._papxList);
    }

    public byte[] toByteArray(ByteArrayOutputStream byteArrayOutputStream, CharIndexTranslator charIndexTranslator) throws IOException {
        int i;
        int i2;
        byte[] bArr;
        int i3;
        int i4;
        PAPFormattedDiskPage pAPFormattedDiskPage = this;
        byte[] bArr2 = new byte[512];
        int size = pAPFormattedDiskPage._papxList.size();
        byte[] bArr3 = new byte[0];
        int i5 = 0;
        int i6 = 4;
        while (true) {
            i = TarConstants.XSTAR_CTIME_OFFSET;
            i2 = 511;
            if (i5 >= size) {
                break;
            }
            byte[] grpprl = pAPFormattedDiskPage._papxList.get(i5).getGrpprl();
            int length = grpprl.length;
            if (length > 488) {
                length = 8;
            }
            int i7 = i6 + (!Arrays.equals(grpprl, bArr3) ? length + 17 + 1 : 17);
            if (i7 > (i5 % 2) + 511) {
                break;
            }
            i6 = length % 2 > 0 ? i7 + 1 : i7 + 2;
            i5++;
            bArr3 = grpprl;
        }
        if (i5 != size) {
            ArrayList<PAPX> arrayList = new ArrayList<>();
            pAPFormattedDiskPage._overFlow = arrayList;
            arrayList.addAll(pAPFormattedDiskPage._papxList.subList(i5, size));
        }
        bArr2[511] = (byte) i5;
        int i8 = (i5 * 4) + 4;
        byte[] bArr4 = new byte[0];
        PAPX papx = null;
        int i9 = 0;
        int i10 = 0;
        while (i9 < i5) {
            papx = pAPFormattedDiskPage._papxList.get(i9);
            byte[] byteArray = papx.getParagraphHeight().toByteArray();
            byte[] grpprl2 = papx.getGrpprl();
            if (grpprl2.length > i) {
                byte[] copyOfRange = Arrays.copyOfRange(grpprl2, 2, grpprl2.length);
                int size2 = byteArrayOutputStream.size();
                byteArrayOutputStream.write(copyOfRange);
                bArr = new byte[8];
                LittleEndian.putUShort(bArr, 0, LittleEndian.getUShort(grpprl2, 0));
                i3 = 2;
                LittleEndian.putUShort(bArr, 2, 26182);
                LittleEndian.putInt(bArr, 4, size2);
            } else {
                bArr = grpprl2;
                i3 = 2;
            }
            boolean equals = Arrays.equals(bArr4, bArr);
            if (!equals) {
                int length2 = i2 - (bArr.length + (2 - (bArr.length % i3)));
                i2 = length2 - (length2 % 2);
            }
            LittleEndian.putInt(bArr2, i10, charIndexTranslator.getByteIndex(papx.getStart()));
            bArr2[i8] = (byte) (i2 / 2);
            System.arraycopy(byteArray, 0, bArr2, i8 + 1, byteArray.length);
            if (!equals) {
                if (bArr.length % 2 > 0) {
                    i4 = i2 + 1;
                    bArr2[i2] = (byte) ((bArr.length + 1) / 2);
                } else {
                    int i11 = i2 + 1;
                    bArr2[i11] = (byte) (bArr.length / 2);
                    i4 = i11 + 1;
                }
                System.arraycopy(bArr, 0, bArr2, i4, bArr.length);
                bArr4 = bArr;
            }
            i8 += 13;
            i10 += 4;
            i9++;
            pAPFormattedDiskPage = this;
            i = TarConstants.XSTAR_CTIME_OFFSET;
        }
        if (papx != null) {
            LittleEndian.putInt(bArr2, i10, charIndexTranslator.getByteIndex(papx.getEnd()));
        }
        return bArr2;
    }

    public PAPFormattedDiskPage(byte[] bArr, byte[] bArr2, int i, CharIndexTranslator charIndexTranslator) {
        super(bArr, i);
        this._papxList = new ArrayList<>();
        for (int i2 = 0; i2 < this._crun; i2++) {
            for (int[] iArr : charIndexTranslator.getCharIndexRanges(getStart(i2), getEnd(i2))) {
                this._papxList.add(new PAPX(iArr[0], iArr[1], getGrpprl(i2), getParagraphHeight(i2), bArr2));
            }
        }
        this._fkp = null;
    }
}
