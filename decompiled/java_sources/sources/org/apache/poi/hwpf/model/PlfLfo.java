package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.NoSuchElementException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.model.types.LFOAbstractType;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class PlfLfo {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) PlfLfo.class);
    private static final int MAX_NUMBER_OF_LFO = 100000;
    private int _lfoMac;
    private LFO[] _rgLfo;
    private LFOData[] _rgLfoData;

    public PlfLfo(byte[] bArr, int i, int i2) {
        long uInt = LittleEndian.getUInt(bArr, i);
        int i3 = i + 4;
        if (uInt > 2147483647L) {
            throw new UnsupportedOperationException("Apache POI doesn't support rgLfo/rgLfoData size large than 2147483647 elements");
        }
        IOUtils.safelyAllocateCheck(uInt, 100000);
        int i4 = (int) uInt;
        this._lfoMac = i4;
        this._rgLfo = new LFO[i4];
        this._rgLfoData = new LFOData[i4];
        for (int i5 = 0; i5 < this._lfoMac; i5++) {
            LFO lfo = new LFO(bArr, i3);
            i3 += LFOAbstractType.getSize();
            this._rgLfo[i5] = lfo;
        }
        for (int i6 = 0; i6 < this._lfoMac; i6++) {
            LFOData lFOData = new LFOData(bArr, i3, this._rgLfo[i6].getClfolvl());
            i3 += lFOData.getSizeInBytes();
            this._rgLfoData[i6] = lFOData;
        }
        int i7 = i3 - i;
        if (i7 != i2) {
            LOGGER.atWarn().log("Actual size of PlfLfo is {} bytes, but expected {}", Unbox.box(i7), Unbox.box(i2));
        }
    }

    public void add(LFO lfo, LFOData lFOData) {
        LFO[] lfoArr = (LFO[]) Arrays.copyOf(this._rgLfo, this._lfoMac + 1);
        this._rgLfo = lfoArr;
        int i = this._lfoMac;
        lfoArr[i] = lfo;
        LFOData[] lFODataArr = (LFOData[]) Arrays.copyOf(this._rgLfoData, i + 1);
        this._rgLfoData = lFODataArr;
        int i2 = this._lfoMac;
        lFODataArr[i2] = lFOData;
        this._lfoMac = i2 + 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PlfLfo plfLfo = (PlfLfo) obj;
        return this._lfoMac == plfLfo._lfoMac && Arrays.equals(this._rgLfo, plfLfo._rgLfo) && Arrays.equals(this._rgLfoData, plfLfo._rgLfoData);
    }

    public int getIlfoByLsid(int i) {
        for (int i2 = 0; i2 < this._lfoMac; i2++) {
            if (this._rgLfo[i2].getLsid() == i) {
                return i2 + 1;
            }
        }
        throw new NoSuchElementException("LFO with lsid " + i + " not found");
    }

    public LFO getLfo(int i) throws NoSuchElementException {
        if (i > 0 && i <= this._lfoMac) {
            return this._rgLfo[i - 1];
        }
        throw new NoSuchElementException("LFO with ilfo " + i + " not found. lfoMac is " + this._lfoMac);
    }

    public LFOData getLfoData(int i) throws NoSuchElementException {
        if (i > 0 && i <= this._lfoMac) {
            return this._rgLfoData[i - 1];
        }
        throw new NoSuchElementException("LFOData with ilfo " + i + " not found. lfoMac is " + this._lfoMac);
    }

    public int getLfoMac() {
        return this._lfoMac;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{Integer.valueOf(this._lfoMac), this._rgLfo, this._rgLfoData});
    }

    public void writeTo(FileInformationBlock fileInformationBlock, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        int size = byteArrayOutputStream.size();
        fileInformationBlock.setFcPlfLfo(size);
        LittleEndian.putUInt(this._lfoMac, byteArrayOutputStream);
        byte[] bArr = new byte[LFOAbstractType.getSize() * this._lfoMac];
        for (int i = 0; i < this._lfoMac; i++) {
            this._rgLfo[i].serialize(bArr, LFOAbstractType.getSize() * i);
        }
        byteArrayOutputStream.write(bArr, 0, LFOAbstractType.getSize() * this._lfoMac);
        for (int i2 = 0; i2 < this._lfoMac; i2++) {
            this._rgLfoData[i2].writeTo(byteArrayOutputStream);
        }
        fileInformationBlock.setLcbPlfLfo(byteArrayOutputStream.size() - size);
    }
}
