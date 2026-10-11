package org.apache.poi.hwpf.model;

import java.util.Arrays;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class NilPICFAndBinData {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) NilPICFAndBinData.class);
    private static final int MAX_SIZE = 100000;
    private byte[] _binData;

    public NilPICFAndBinData(byte[] bArr, int i) {
        fillFields(bArr, i);
    }

    public void fillFields(byte[] bArr, int i) {
        int i2 = LittleEndian.getInt(bArr, i);
        int uShort = LittleEndian.getUShort(bArr, i + 4);
        if (uShort != 68) {
            LOGGER.atWarn().log("NilPICFAndBinData at offset {} cbHeader 0x{} != 0x44", Unbox.box(i), Integer.toHexString(uShort));
        }
        IOUtils.safelyAllocateCheck(i2, 100000);
        IOUtils.safelyAllocateCheck(uShort, 100000);
        int i3 = i + uShort;
        this._binData = Arrays.copyOfRange(bArr, i3, (i2 - uShort) + i3);
    }

    public byte[] getBinData() {
        return this._binData;
    }

    public byte[] serialize() {
        byte[] bArr = this._binData;
        byte[] bArr2 = new byte[bArr.length + 68];
        LittleEndian.putInt(bArr2, 0, bArr.length + 68);
        byte[] bArr3 = this._binData;
        System.arraycopy(bArr3, 0, bArr2, 68, bArr3.length);
        return bArr2;
    }

    public int serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i, this._binData.length + 68);
        byte[] bArr2 = this._binData;
        System.arraycopy(bArr2, 0, bArr, i + 68, bArr2.length);
        return this._binData.length + 68;
    }
}
