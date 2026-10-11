package org.apache.commons.compress.archivers.zip;

import java.nio.charset.Charset;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

/* loaded from: classes12.dex */
public class AsiExtraField implements ZipExtraField, UnixStat, Cloneable {

    /* renamed from: k */
    public static final ZipShort f105770k = new ZipShort(30062);

    /* renamed from: l */
    public static final int f105771l = 14;

    /* renamed from: e */
    public int f105772e;

    /* renamed from: f */
    public int f105773f;

    /* renamed from: g */
    public int f105774g;

    /* renamed from: i */
    public boolean f105776i;

    /* renamed from: h */
    public String f105775h = "";

    /* renamed from: j */
    public CRC32 f105777j = new CRC32();

    public Object clone() {
        try {
            AsiExtraField asiExtraField = (AsiExtraField) super.clone();
            asiExtraField.f105777j = new CRC32();
            return asiExtraField;
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        return getLocalFileDataData();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return getLocalFileDataLength();
    }

    public int getGroupId() {
        return this.f105774g;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return f105770k;
    }

    public String getLinkedFile() {
        return this.f105775h;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        int value = getLocalFileDataLength().getValue() - 4;
        byte[] bArr = new byte[value];
        System.arraycopy(ZipShort.getBytes(getMode()), 0, bArr, 0, 2);
        byte[] bytes = getLinkedFile().getBytes(Charset.defaultCharset());
        System.arraycopy(ZipLong.getBytes(bytes.length), 0, bArr, 2, 4);
        System.arraycopy(ZipShort.getBytes(getUserId()), 0, bArr, 6, 2);
        System.arraycopy(ZipShort.getBytes(getGroupId()), 0, bArr, 8, 2);
        System.arraycopy(bytes, 0, bArr, 10, bytes.length);
        this.f105777j.reset();
        this.f105777j.update(bArr);
        long value2 = this.f105777j.getValue();
        byte[] bArr2 = new byte[value + 4];
        System.arraycopy(ZipLong.getBytes(value2), 0, bArr2, 0, 4);
        System.arraycopy(bArr, 0, bArr2, 4, value);
        return bArr2;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(getLinkedFile().getBytes(Charset.defaultCharset()).length + 14);
    }

    public int getMode() {
        return this.f105772e;
    }

    public int getUserId() {
        return this.f105773f;
    }

    public boolean isDirectory() {
        return this.f105776i && !isLink();
    }

    public boolean isLink() {
        return !getLinkedFile().isEmpty();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        parseFromLocalFileData(bArr, i, i2);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) throws ZipException {
        if (i2 < 14) {
            throw new ZipException("The length is too short, only " + i2 + " bytes, expected at least 14");
        }
        long value = ZipLong.getValue(bArr, i);
        int i3 = i2 - 4;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i + 4, bArr2, 0, i3);
        this.f105777j.reset();
        this.f105777j.update(bArr2);
        long value2 = this.f105777j.getValue();
        if (value != value2) {
            throw new ZipException("Bad CRC checksum, expected " + Long.toHexString(value) + " instead of " + Long.toHexString(value2));
        }
        int value3 = ZipShort.getValue(bArr2, 0);
        int value4 = (int) ZipLong.getValue(bArr2, 2);
        if (value4 < 0 || value4 > i3 - 10) {
            throw new ZipException("Bad symbolic link name length " + value4 + " in ASI extra field");
        }
        this.f105773f = ZipShort.getValue(bArr2, 6);
        this.f105774g = ZipShort.getValue(bArr2, 8);
        if (value4 == 0) {
            this.f105775h = "";
        } else {
            byte[] bArr3 = new byte[value4];
            System.arraycopy(bArr2, 10, bArr3, 0, value4);
            this.f105775h = new String(bArr3, Charset.defaultCharset());
        }
        setDirectory((value3 & 16384) != 0);
        setMode(value3);
    }

    public void setDirectory(boolean z) {
        this.f105776i = z;
        this.f105772e = getMode(this.f105772e);
    }

    public void setGroupId(int i) {
        this.f105774g = i;
    }

    public void setLinkedFile(String str) {
        this.f105775h = str;
        this.f105772e = getMode(this.f105772e);
    }

    public void setMode(int i) {
        this.f105772e = getMode(i);
    }

    public void setUserId(int i) {
        this.f105773f = i;
    }

    public int getMode(int i) {
        int i2;
        if (isLink()) {
            i2 = 40960;
        } else {
            i2 = isDirectory() ? 16384 : 32768;
        }
        return i2 | (i & 4095);
    }
}
