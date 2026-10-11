package org.apache.poi.hwpf.model;

import java.util.Arrays;
import org.apache.logging.log4j.LogManager;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

@Internal
/* loaded from: classes12.dex */
public class Sttb {
    private final int _cDataLength;
    private int _cbExtra;
    private String[] _data;
    private byte[][] _extraData;
    private final boolean _fExtend;

    public Sttb(byte[] bArr, int i) {
        this(2, bArr, i);
    }

    public void fillFields(byte[] bArr, int i) {
        short s = LittleEndian.getShort(bArr, i);
        int i2 = i + 2;
        if (s != -1) {
            LogManager.getLogger((Class<?>) Sttb.class).atWarn().log("Non-extended character Pascal strings are not supported right now. Creating empty values in the RevisionMarkAuthorTable for now.  Please, contact POI developers for update.");
            this._data = new String[0];
            this._extraData = new byte[0];
            return;
        }
        int uShort = this._cDataLength == 2 ? LittleEndian.getUShort(bArr, i2) : LittleEndian.getInt(bArr, i2);
        int i3 = i2 + this._cDataLength;
        this._cbExtra = LittleEndian.getUShort(bArr, i3);
        int i4 = i3 + 2;
        this._data = new String[uShort];
        this._extraData = new byte[uShort];
        for (int i5 = 0; i5 < uShort; i5++) {
            short s2 = LittleEndian.getShort(bArr, i4);
            i4 += 2;
            if (s2 >= 0) {
                this._data[i5] = StringUtil.getFromUnicodeLE(bArr, i4, s2);
                int i6 = i4 + (s2 * 2);
                this._extraData[i5] = Arrays.copyOfRange(bArr, i6, this._cbExtra + i6);
                i4 = i6 + this._cbExtra;
            }
        }
    }

    public String[] getData() {
        return this._data;
    }

    public int getSize() {
        int i = this._cDataLength + 2 + 2;
        String[] strArr = this._data;
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            String str = strArr[i2];
            i = i + 2 + ((str == null ? 0 : str.length()) * 2);
        }
        return this._extraData != null ? i + (this._cbExtra * this._data.length) : i;
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        LittleEndian.putShort(bArr, 0, (short) -1);
        String[] strArr = this._data;
        int i = 6;
        if (strArr != null && strArr.length != 0) {
            if (this._cDataLength == 4) {
                LittleEndian.putInt(bArr, 2, strArr.length);
                LittleEndian.putUShort(bArr, 6, this._cbExtra);
                i = 8;
            } else {
                LittleEndian.putUShort(bArr, 2, strArr.length);
                LittleEndian.putUShort(bArr, 4, this._cbExtra);
            }
            int i2 = 0;
            while (true) {
                String[] strArr2 = this._data;
                if (i2 >= strArr2.length) {
                    return bArr;
                }
                String str = strArr2[i2];
                if (str == null) {
                    bArr[i] = -1;
                    bArr[i + 1] = 0;
                    i += 2;
                } else {
                    LittleEndian.putUShort(bArr, i, str.length());
                    int i3 = i + 2;
                    StringUtil.putUnicodeLE(str, bArr, i3);
                    i = i3 + (str.length() * 2);
                    int i4 = this._cbExtra;
                    if (i4 != 0) {
                        byte[] bArr2 = this._extraData[i2];
                        if (bArr2 != null && bArr2.length != 0) {
                            System.arraycopy(bArr2, 0, bArr, i, Math.min(bArr2.length, i4));
                        }
                        i += this._cbExtra;
                    }
                }
                i2++;
            }
        } else {
            if (this._cDataLength == 4) {
                LittleEndian.putInt(bArr, 2, 0);
                LittleEndian.putUShort(bArr, 6, this._cbExtra);
                return bArr;
            }
            LittleEndian.putUShort(bArr, 2, 0);
            LittleEndian.putUShort(bArr, 4, this._cbExtra);
            return bArr;
        }
    }

    public Sttb(int i, byte[] bArr, int i2) {
        this._fExtend = true;
        this._cDataLength = i;
        fillFields(bArr, i2);
    }

    public Sttb(int i, String[] strArr) {
        this._fExtend = true;
        this._cDataLength = i;
        this._data = (String[]) Arrays.copyOf(strArr, strArr.length);
        this._cbExtra = 0;
        this._extraData = null;
    }

    public int serialize(byte[] bArr, int i) {
        byte[] serialize = serialize();
        System.arraycopy(serialize, 0, bArr, i, serialize.length);
        return serialize.length;
    }
}
