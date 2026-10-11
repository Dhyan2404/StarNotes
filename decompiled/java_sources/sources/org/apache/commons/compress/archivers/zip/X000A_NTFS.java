package org.apache.commons.compress.archivers.zip;

import com.blankj.utilcode.util.BarUtils;
import java.util.Date;
import java.util.Objects;
import java.util.zip.ZipException;

/* loaded from: classes12.dex */
public class X000A_NTFS implements ZipExtraField {

    /* renamed from: h */
    public static final ZipShort f105848h = new ZipShort(10);

    /* renamed from: i */
    public static final ZipShort f105849i = new ZipShort(1);

    /* renamed from: j */
    public static final ZipShort f105850j = new ZipShort(24);

    /* renamed from: k */
    public static final long f105851k = -116444736000000000L;

    /* renamed from: e */
    public ZipEightByteInteger f105852e;

    /* renamed from: f */
    public ZipEightByteInteger f105853f;

    /* renamed from: g */
    public ZipEightByteInteger f105854g;

    public X000A_NTFS() {
        ZipEightByteInteger zipEightByteInteger = ZipEightByteInteger.ZERO;
        this.f105852e = zipEightByteInteger;
        this.f105853f = zipEightByteInteger;
        this.f105854g = zipEightByteInteger;
    }

    /* renamed from: a */
    public static ZipEightByteInteger m66422a(Date date) {
        if (date == null) {
            return null;
        }
        return new ZipEightByteInteger((date.getTime() * 10000) - (-116444736000000000L));
    }

    /* renamed from: d */
    public static Date m66423d(ZipEightByteInteger zipEightByteInteger) {
        if (zipEightByteInteger == null || ZipEightByteInteger.ZERO.equals(zipEightByteInteger)) {
            return null;
        }
        return new Date((zipEightByteInteger.getLongValue() - 116444736000000000L) / 10000);
    }

    /* renamed from: b */
    public final void m66424b(byte[] bArr, int i, int i2) {
        if (i2 >= 26) {
            if (f105850j.equals(new ZipShort(bArr, i))) {
                int i3 = i + 2;
                this.f105852e = new ZipEightByteInteger(bArr, i3);
                int i4 = i3 + 8;
                this.f105853f = new ZipEightByteInteger(bArr, i4);
                this.f105854g = new ZipEightByteInteger(bArr, i4 + 8);
            }
        }
    }

    /* renamed from: c */
    public final void m66425c() {
        ZipEightByteInteger zipEightByteInteger = ZipEightByteInteger.ZERO;
        this.f105852e = zipEightByteInteger;
        this.f105853f = zipEightByteInteger;
        this.f105854g = zipEightByteInteger;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof X000A_NTFS)) {
            return false;
        }
        X000A_NTFS x000a_ntfs = (X000A_NTFS) obj;
        return Objects.equals(this.f105852e, x000a_ntfs.f105852e) && Objects.equals(this.f105853f, x000a_ntfs.f105853f) && Objects.equals(this.f105854g, x000a_ntfs.f105854g);
    }

    public Date getAccessJavaTime() {
        return m66423d(this.f105853f);
    }

    public ZipEightByteInteger getAccessTime() {
        return this.f105853f;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        return getLocalFileDataData();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return getLocalFileDataLength();
    }

    public Date getCreateJavaTime() {
        return m66423d(this.f105854g);
    }

    public ZipEightByteInteger getCreateTime() {
        return this.f105854g;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return f105848h;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        byte[] bArr = new byte[getLocalFileDataLength().getValue()];
        System.arraycopy(f105849i.getBytes(), 0, bArr, 4, 2);
        System.arraycopy(f105850j.getBytes(), 0, bArr, 6, 2);
        System.arraycopy(this.f105852e.getBytes(), 0, bArr, 8, 8);
        System.arraycopy(this.f105853f.getBytes(), 0, bArr, 16, 8);
        System.arraycopy(this.f105854g.getBytes(), 0, bArr, 24, 8);
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(32);
    }

    public Date getModifyJavaTime() {
        return m66423d(this.f105852e);
    }

    public ZipEightByteInteger getModifyTime() {
        return this.f105852e;
    }

    public int hashCode() {
        ZipEightByteInteger zipEightByteInteger = this.f105852e;
        int i = BarUtils.f13631c;
        if (zipEightByteInteger != null) {
            i = (-123) ^ zipEightByteInteger.hashCode();
        }
        ZipEightByteInteger zipEightByteInteger2 = this.f105853f;
        if (zipEightByteInteger2 != null) {
            i ^= Integer.rotateLeft(zipEightByteInteger2.hashCode(), 11);
        }
        ZipEightByteInteger zipEightByteInteger3 = this.f105854g;
        return zipEightByteInteger3 != null ? i ^ Integer.rotateLeft(zipEightByteInteger3.hashCode(), 22) : i;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        m66425c();
        parseFromLocalFileData(bArr, i, i2);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) throws ZipException {
        int i3 = i2 + i;
        int i4 = i + 4;
        while (i4 + 4 <= i3) {
            ZipShort zipShort = new ZipShort(bArr, i4);
            int i5 = i4 + 2;
            if (zipShort.equals(f105849i)) {
                m66424b(bArr, i5, i3 - i5);
                return;
            }
            i4 = i5 + new ZipShort(bArr, i5).getValue() + 2;
        }
    }

    public void setAccessJavaTime(Date date) {
        setAccessTime(m66422a(date));
    }

    public void setAccessTime(ZipEightByteInteger zipEightByteInteger) {
        if (zipEightByteInteger == null) {
            zipEightByteInteger = ZipEightByteInteger.ZERO;
        }
        this.f105853f = zipEightByteInteger;
    }

    public void setCreateJavaTime(Date date) {
        setCreateTime(m66422a(date));
    }

    public void setCreateTime(ZipEightByteInteger zipEightByteInteger) {
        if (zipEightByteInteger == null) {
            zipEightByteInteger = ZipEightByteInteger.ZERO;
        }
        this.f105854g = zipEightByteInteger;
    }

    public void setModifyJavaTime(Date date) {
        setModifyTime(m66422a(date));
    }

    public void setModifyTime(ZipEightByteInteger zipEightByteInteger) {
        if (zipEightByteInteger == null) {
            zipEightByteInteger = ZipEightByteInteger.ZERO;
        }
        this.f105852e = zipEightByteInteger;
    }

    public String toString() {
        return "0x000A Zip Extra Field: Modify:[" + getModifyJavaTime() + "]  Access:[" + getAccessJavaTime() + "]  Create:[" + getCreateJavaTime() + "] ";
    }
}
