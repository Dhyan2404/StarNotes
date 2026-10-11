package com.tencent.cos.xml.crypto;

import com.tencent.cos.xml.exception.CosXmlClientException;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public abstract class ContentCryptoScheme {
    static final long MAX_CBC_BYTES = 4503599627370496L;
    static final long MAX_CTR_BYTES = -1;
    static final long MAX_GCM_BLOCKS = 4294967294L;
    static final long MAX_GCM_BYTES = 68719476704L;
    static final ContentCryptoScheme AES_GCM = new AesGcm();
    static final ContentCryptoScheme AES_CTR = new AesCtr();

    public static ContentCryptoScheme fromCEKAlgo(String str) {
        ContentCryptoScheme contentCryptoScheme = AES_CTR;
        if (contentCryptoScheme.getCipherAlgorithm().equals(str)) {
            return contentCryptoScheme;
        }
        throw new UnsupportedOperationException("Unsupported content encryption scheme: " + str);
    }

    public static byte[] incrementBlocks(byte[] bArr, long j) {
        if (j == 0) {
            return bArr;
        }
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (j > MAX_GCM_BLOCKS) {
            throw new IllegalStateException();
        }
        ByteBuffer allocate = ByteBuffer.allocate(8);
        for (int i = 12; i <= 15; i++) {
            allocate.put(i - 8, bArr[i]);
        }
        long j2 = allocate.getLong() + j;
        if (j2 > MAX_GCM_BLOCKS) {
            throw new IllegalStateException();
        }
        allocate.rewind();
        byte[] array = allocate.putLong(j2).array();
        for (int i2 = 12; i2 <= 15; i2++) {
            bArr[i2] = array[i2 - 8];
        }
        return bArr;
    }

    public byte[] adjustIV(byte[] bArr, long j) {
        return bArr;
    }

    public CipherLite createAuxillaryCipher(SecretKey secretKey, byte[] bArr, int i, Provider provider, long j) throws NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException {
        return null;
    }

    public CipherLite createCipherLite(SecretKey secretKey, byte[] bArr, int i, Provider provider) throws CosXmlClientException {
        Cipher cipher;
        String specificCipherProvider = getSpecificCipherProvider();
        try {
            if (specificCipherProvider != null) {
                cipher = Cipher.getInstance(getCipherAlgorithm(), specificCipherProvider);
            } else if (provider != null) {
                cipher = Cipher.getInstance(getCipherAlgorithm(), provider);
            } else {
                cipher = Cipher.getInstance(getCipherAlgorithm());
            }
            cipher.init(i, secretKey, new IvParameterSpec(bArr));
            return newCipherLite(cipher, secretKey, i);
        } catch (Exception e) {
            throw CosXmlClientException.internalException("Unable to build cipher: " + e.getMessage() + "\nMake sure you have the JCE unlimited strength policy files installed and configured for your JVM");
        }
    }

    public abstract int getBlockSizeInBytes();

    public abstract String getCipherAlgorithm();

    public abstract int getIVLengthInBytes();

    public abstract String getKeyGeneratorAlgorithm();

    public abstract int getKeyLengthInBits();

    public final String getKeySpec() {
        return getKeyGeneratorAlgorithm() + "_" + getKeyLengthInBits();
    }

    public abstract long getMaxPlaintextSize();

    public String getSpecificCipherProvider() {
        return null;
    }

    public int getTagLengthInBits() {
        return 0;
    }

    public CipherLite newCipherLite(Cipher cipher, SecretKey secretKey, int i) {
        return new CipherLite(cipher, this, secretKey, i);
    }

    public String toString() {
        return "cipherAlgo=" + getCipherAlgorithm() + ", blockSizeInBytes=" + getBlockSizeInBytes() + ", ivLengthInBytes=" + getIVLengthInBytes() + ", keyGenAlgo=" + getKeyGeneratorAlgorithm() + ", keyLengthInBits=" + getKeyLengthInBits() + ", specificProvider=" + getSpecificCipherProvider() + ", tagLengthInBits=" + getTagLengthInBits();
    }

    public CipherLite createCipherLite(SecretKey secretKey, byte[] bArr, int i) throws CosXmlClientException {
        return createCipherLite(secretKey, bArr, i, null);
    }
}
