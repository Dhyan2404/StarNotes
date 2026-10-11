package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.zip.PKWareExtraHeader;

/* loaded from: classes12.dex */
public class X0016_CertificateIdForCentralDirectory extends PKWareExtraHeader {

    /* renamed from: h */
    public int f105857h;

    /* renamed from: i */
    public PKWareExtraHeader.HashAlgorithm f105858i;

    public X0016_CertificateIdForCentralDirectory() {
        super(new ZipShort(22));
    }

    public PKWareExtraHeader.HashAlgorithm getHashAlgorithm() {
        return this.f105858i;
    }

    public int getRecordCount() {
        return this.f105857h;
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        assertMinimalLength(4, i2);
        this.f105857h = ZipShort.getValue(bArr, i);
        this.f105858i = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i + 2));
    }
}
