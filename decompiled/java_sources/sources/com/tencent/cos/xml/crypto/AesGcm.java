package com.tencent.cos.xml.crypto;

import com.onyx.galaxy.note.settings.utils.FeedbackEncryptor;
import com.tencent.cos.xml.exception.CosXmlClientException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

/* loaded from: classes10.dex */
class AesGcm extends ContentCryptoScheme {
    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public CipherLite createAuxillaryCipher(SecretKey secretKey, byte[] bArr, int i, Provider provider, long j) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidAlgorithmParameterException {
        ContentCryptoScheme contentCryptoScheme = ContentCryptoScheme.AES_CTR;
        try {
            return contentCryptoScheme.createCipherLite(secretKey, contentCryptoScheme.adjustIV(bArr, j), i, provider);
        } catch (CosXmlClientException e) {
            throw new InvalidKeyException(e);
        }
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public int getBlockSizeInBytes() {
        return 16;
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public String getCipherAlgorithm() {
        return FeedbackEncryptor.f61778b;
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public int getIVLengthInBytes() {
        return 12;
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
        return 68719476704L;
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public String getSpecificCipherProvider() {
        return "BC";
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public int getTagLengthInBits() {
        return 128;
    }

    @Override // com.tencent.cos.xml.crypto.ContentCryptoScheme
    public CipherLite newCipherLite(Cipher cipher, SecretKey secretKey, int i) {
        return new GCMCipherLite(cipher, secretKey, i);
    }
}
