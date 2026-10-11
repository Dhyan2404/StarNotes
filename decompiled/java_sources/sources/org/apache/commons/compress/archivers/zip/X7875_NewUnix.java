package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.zip.ZipException;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class X7875_NewUnix implements ZipExtraField, Cloneable, Serializable {
    private static final long serialVersionUID = 1;
    private BigInteger gid;
    private BigInteger uid;
    private int version = 1;
    private static final ZipShort HEADER_ID = new ZipShort(30837);
    private static final ZipShort ZERO = new ZipShort(0);
    private static final BigInteger ONE_THOUSAND = BigInteger.valueOf(1000);

    public X7875_NewUnix() {
        reset();
    }

    private void reset() {
        BigInteger bigInteger = ONE_THOUSAND;
        this.uid = bigInteger;
        this.gid = bigInteger;
    }

    public static byte[] trimLeadingZeroesForceMinLength(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length && bArr[i2] == 0; i2++) {
            i++;
        }
        int max = Math.max(1, bArr.length - i);
        byte[] bArr2 = new byte[max];
        int length2 = max - (bArr.length - i);
        System.arraycopy(bArr, i, bArr2, length2, max - length2);
        return bArr2;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof X7875_NewUnix)) {
            return false;
        }
        X7875_NewUnix x7875_NewUnix = (X7875_NewUnix) obj;
        return this.version == x7875_NewUnix.version && this.uid.equals(x7875_NewUnix.uid) && this.gid.equals(x7875_NewUnix.gid);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        return ByteUtils.EMPTY_BYTE_ARRAY;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return ZERO;
    }

    public long getGID() {
        return ZipUtil.m66564a(this.gid);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return HEADER_ID;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        byte[] byteArray = this.uid.toByteArray();
        byte[] byteArray2 = this.gid.toByteArray();
        byte[] trimLeadingZeroesForceMinLength = trimLeadingZeroesForceMinLength(byteArray);
        int length = trimLeadingZeroesForceMinLength != null ? trimLeadingZeroesForceMinLength.length : 0;
        byte[] trimLeadingZeroesForceMinLength2 = trimLeadingZeroesForceMinLength(byteArray2);
        int length2 = trimLeadingZeroesForceMinLength2 != null ? trimLeadingZeroesForceMinLength2.length : 0;
        byte[] bArr = new byte[length + 3 + length2];
        if (trimLeadingZeroesForceMinLength != null) {
            ZipUtil.reverse(trimLeadingZeroesForceMinLength);
        }
        if (trimLeadingZeroesForceMinLength2 != null) {
            ZipUtil.reverse(trimLeadingZeroesForceMinLength2);
        }
        bArr[0] = ZipUtil.unsignedIntToSignedByte(this.version);
        bArr[1] = ZipUtil.unsignedIntToSignedByte(length);
        if (trimLeadingZeroesForceMinLength != null) {
            System.arraycopy(trimLeadingZeroesForceMinLength, 0, bArr, 2, length);
        }
        int i = 2 + length;
        int i2 = i + 1;
        bArr[i] = ZipUtil.unsignedIntToSignedByte(length2);
        if (trimLeadingZeroesForceMinLength2 != null) {
            System.arraycopy(trimLeadingZeroesForceMinLength2, 0, bArr, i2, length2);
        }
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        byte[] trimLeadingZeroesForceMinLength = trimLeadingZeroesForceMinLength(this.uid.toByteArray());
        int length = trimLeadingZeroesForceMinLength == null ? 0 : trimLeadingZeroesForceMinLength.length;
        byte[] trimLeadingZeroesForceMinLength2 = trimLeadingZeroesForceMinLength(this.gid.toByteArray());
        return new ZipShort(length + 3 + (trimLeadingZeroesForceMinLength2 != null ? trimLeadingZeroesForceMinLength2.length : 0));
    }

    public long getUID() {
        return ZipUtil.m66564a(this.uid);
    }

    public int hashCode() {
        return this.gid.hashCode() ^ (Integer.rotateLeft(this.uid.hashCode(), 16) ^ (this.version * (-1234567)));
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) throws ZipException {
        reset();
        if (i2 < 3) {
            throw new ZipException("X7875_NewUnix length is too short, only " + i2 + " bytes");
        }
        int i3 = i + 1;
        this.version = ZipUtil.signedByteToUnsignedInt(bArr[i]);
        int i4 = i3 + 1;
        int signedByteToUnsignedInt = ZipUtil.signedByteToUnsignedInt(bArr[i3]);
        int i5 = signedByteToUnsignedInt + 3;
        if (i5 > i2) {
            throw new ZipException("X7875_NewUnix invalid: uidSize " + signedByteToUnsignedInt + " doesn't fit into " + i2 + " bytes");
        }
        int i6 = signedByteToUnsignedInt + i4;
        this.uid = new BigInteger(1, ZipUtil.reverse(Arrays.copyOfRange(bArr, i4, i6)));
        int i7 = i6 + 1;
        int signedByteToUnsignedInt2 = ZipUtil.signedByteToUnsignedInt(bArr[i6]);
        if (i5 + signedByteToUnsignedInt2 <= i2) {
            this.gid = new BigInteger(1, ZipUtil.reverse(Arrays.copyOfRange(bArr, i7, signedByteToUnsignedInt2 + i7)));
            return;
        }
        throw new ZipException("X7875_NewUnix invalid: gidSize " + signedByteToUnsignedInt2 + " doesn't fit into " + i2 + " bytes");
    }

    public void setGID(long j) {
        this.gid = ZipUtil.m66570g(j);
    }

    public void setUID(long j) {
        this.uid = ZipUtil.m66570g(j);
    }

    public String toString() {
        return "0x7875 Zip Extra Field: UID=" + this.uid + " GID=" + this.gid;
    }
}
