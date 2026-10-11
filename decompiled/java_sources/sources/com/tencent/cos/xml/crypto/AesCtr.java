package com.tencent.cos.xml.crypto;

/* loaded from: classes10.dex */
class AesCtr extends ContentCryptoScheme {
    private byte[] computeJ0(byte[] bArr) {
        int blockSizeInBytes = getBlockSizeInBytes();
        byte[] bArr2 = new byte[blockSizeInBytes];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        bArr2[blockSizeInBytes - 1] = 1;
        return ContentCryptoScheme.incrementBlocks(bArr2, 1L);
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public byte[] adjustIV(byte[] bArr, long j) {
        if (bArr.length != 12) {
            throw new UnsupportedOperationException();
        }
        int blockSizeInBytes = getBlockSizeInBytes();
        long j2 = blockSizeInBytes;
        long j3 = j / j2;
        if (j2 * j3 == j) {
            return ContentCryptoScheme.incrementBlocks(computeJ0(bArr), j3);
        }
        throw new IllegalArgumentException("Expecting byteOffset to be multiple of 16, but got blockOffset=" + j3 + ", blockSize=" + blockSizeInBytes + ", byteOffset=" + j);
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public int getBlockSizeInBytes() {
        return 16;
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public String getCipherAlgorithm() {
        return "AES/CTR/NoPadding";
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public int getIVLengthInBytes() {
        return 16;
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public String getKeyGeneratorAlgorithm() {
        return "AES";
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public int getKeyLengthInBits() {
        return 256;
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public long getMaxPlaintextSize() {
        return -1L;
    }
}
