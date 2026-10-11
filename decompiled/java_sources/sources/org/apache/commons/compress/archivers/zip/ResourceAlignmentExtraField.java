package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;
import kotlin.jvm.internal.ShortCompanionObject;

/* loaded from: classes12.dex */
public class ResourceAlignmentExtraField implements ZipExtraField {
    public static final int BASE_SIZE = 2;

    /* renamed from: ID */
    public static final ZipShort f105811ID = new ZipShort(41246);

    /* renamed from: h */
    public static final int f105812h = 32768;

    /* renamed from: e */
    public short f105813e;

    /* renamed from: f */
    public boolean f105814f;

    /* renamed from: g */
    public int f105815g;

    public ResourceAlignmentExtraField() {
    }

    public boolean allowMethodChange() {
        return this.f105814f;
    }

    public short getAlignment() {
        return this.f105813e;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        return ZipShort.getBytes((this.f105814f ? ShortCompanionObject.MIN_VALUE : (short) 0) | this.f105813e);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return new ZipShort(2);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return f105811ID;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        byte[] bArr = new byte[this.f105815g + 2];
        ZipShort.putShort((this.f105814f ? ShortCompanionObject.MIN_VALUE : (short) 0) | this.f105813e, bArr, 0);
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(this.f105815g + 2);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        if (i2 >= 2) {
            int value = ZipShort.getValue(bArr, i);
            this.f105813e = (short) (value & 32767);
            this.f105814f = (value & 32768) != 0;
        } else {
            throw new ZipException("Too short content for ResourceAlignmentExtraField (0xa11e): " + i2);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) throws ZipException {
        parseFromCentralDirectoryData(bArr, i, i2);
        this.f105815g = i2 - 2;
    }

    public ResourceAlignmentExtraField(int i) {
        this(i, false);
    }

    public ResourceAlignmentExtraField(int i, boolean z) {
        this(i, z, 0);
    }

    public ResourceAlignmentExtraField(int i, boolean z, int i2) {
        if (i < 0 || i > 32767) {
            throw new IllegalArgumentException("Alignment must be between 0 and 0x7fff, was: " + i);
        }
        if (i2 >= 0) {
            this.f105813e = (short) i;
            this.f105814f = z;
            this.f105815g = i2;
        } else {
            throw new IllegalArgumentException("Padding must not be negative, was: " + i2);
        }
    }
}
