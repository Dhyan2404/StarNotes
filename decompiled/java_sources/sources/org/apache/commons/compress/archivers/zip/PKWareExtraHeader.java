package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipException;

/* loaded from: classes12.dex */
public abstract class PKWareExtraHeader implements ZipExtraField {

    /* renamed from: e */
    public final ZipShort f105797e;

    /* renamed from: f */
    public byte[] f105798f;

    /* renamed from: g */
    public byte[] f105799g;

    /* loaded from: classes12.dex */
    public enum EncryptionAlgorithm {
        DES(26113),
        RC2pre52(26114),
        TripleDES168(26115),
        TripleDES192(26121),
        AES128(26126),
        AES192(26127),
        AES256(26128),
        RC2(26370),
        RC4(26625),
        UNKNOWN(65535);

        private static final Map<Integer, EncryptionAlgorithm> codeToEnum;
        private final int code;

        static {
            HashMap hashMap = new HashMap();
            for (EncryptionAlgorithm encryptionAlgorithm : values()) {
                hashMap.put(Integer.valueOf(encryptionAlgorithm.getCode()), encryptionAlgorithm);
            }
            codeToEnum = Collections.unmodifiableMap(hashMap);
        }

        EncryptionAlgorithm(int i) {
            this.code = i;
        }

        public static EncryptionAlgorithm getAlgorithmByCode(int i) {
            return codeToEnum.get(Integer.valueOf(i));
        }

        public int getCode() {
            return this.code;
        }
    }

    /* loaded from: classes12.dex */
    public enum HashAlgorithm {
        NONE(0),
        CRC32(1),
        MD5(32771),
        SHA1(32772),
        RIPEND160(32775),
        SHA256(32780),
        SHA384(32781),
        SHA512(32782);

        private static final Map<Integer, HashAlgorithm> codeToEnum;
        private final int code;

        static {
            HashMap hashMap = new HashMap();
            for (HashAlgorithm hashAlgorithm : values()) {
                hashMap.put(Integer.valueOf(hashAlgorithm.getCode()), hashAlgorithm);
            }
            codeToEnum = Collections.unmodifiableMap(hashMap);
        }

        HashAlgorithm(int i) {
            this.code = i;
        }

        public static HashAlgorithm getAlgorithmByCode(int i) {
            return codeToEnum.get(Integer.valueOf(i));
        }

        public int getCode() {
            return this.code;
        }
    }

    public PKWareExtraHeader(ZipShort zipShort) {
        this.f105797e = zipShort;
    }

    public final void assertMinimalLength(int i, int i2) throws ZipException {
        if (i2 >= i) {
            return;
        }
        throw new ZipException(getClass().getName() + " is too short, only " + i2 + " bytes, expected at least " + i);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        byte[] bArr = this.f105799g;
        return bArr != null ? ZipUtil.m66568e(bArr) : getLocalFileDataData();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return this.f105799g != null ? new ZipShort(this.f105799g.length) : getLocalFileDataLength();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return this.f105797e;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        return ZipUtil.m66568e(this.f105798f);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        byte[] bArr = this.f105798f;
        return new ZipShort(bArr != null ? bArr.length : 0);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i2 + i);
        setCentralDirectoryData(copyOfRange);
        if (this.f105798f == null) {
            setLocalFileDataData(copyOfRange);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) throws ZipException {
        setLocalFileDataData(Arrays.copyOfRange(bArr, i, i2 + i));
    }

    public void setCentralDirectoryData(byte[] bArr) {
        this.f105799g = ZipUtil.m66568e(bArr);
    }

    public void setLocalFileDataData(byte[] bArr) {
        this.f105798f = ZipUtil.m66568e(bArr);
    }
}
