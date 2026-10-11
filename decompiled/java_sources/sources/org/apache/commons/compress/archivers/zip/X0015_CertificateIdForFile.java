package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.zip.PKWareExtraHeader;

/* loaded from: classes12.dex */
public class X0015_CertificateIdForFile extends PKWareExtraHeader {

    /* renamed from: h */
    public int f105855h;

    /* renamed from: i */
    public PKWareExtraHeader.HashAlgorithm f105856i;

    public X0015_CertificateIdForFile() {
        super(new ZipShort(21));
    }

    public PKWareExtraHeader.HashAlgorithm getHashAlgorithm() {
        return this.f105856i;
    }

    public int getRecordCount() {
        return this.f105855h;
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        assertMinimalLength(4, i2);
        super.parseFromCentralDirectoryData(bArr, i, i2);
        this.f105855h = ZipShort.getValue(bArr, i);
        this.f105856i = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i + 2));
    }
}
