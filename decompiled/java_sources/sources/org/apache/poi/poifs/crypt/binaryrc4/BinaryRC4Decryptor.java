package org.apache.poi.poifs.crypt.binaryrc4;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChunkedCipherInputStream;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.Decryptor;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.EncryptionVerifier;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class BinaryRC4Decryptor extends Decryptor {
    private int chunkSize;
    private long length;

    public BinaryRC4Decryptor() {
        this.length = -1L;
        this.chunkSize = 512;
    }

    public static SecretKey generateSecretKey(String str, EncryptionVerifier encryptionVerifier) {
        if (str.length() > 255) {
            str = str.substring(0, 255);
        }
        MessageDigest messageDigest = CryptoFunctions.getMessageDigest(encryptionVerifier.getHashAlgorithm());
        byte[] digest = messageDigest.digest(StringUtil.getToUnicodeLE(str));
        byte[] salt = encryptionVerifier.getSalt();
        messageDigest.reset();
        for (int i = 0; i < 16; i++) {
            messageDigest.update(digest, 0, 5);
            messageDigest.update(salt);
        }
        return new SecretKeySpec(Arrays.copyOf(messageDigest.digest(), 5), encryptionVerifier.getCipherAlgorithm().jceId);
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public long getLength() {
        long j = this.length;
        if (j != -1) {
            return j;
        }
        throw new IllegalStateException("Decryptor.getDataStream() was not called");
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public Cipher initCipherForBlock(Cipher cipher, int i) throws GeneralSecurityException {
        return initCipherForBlock(cipher, i, getEncryptionInfo(), getSecretKey(), 2);
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public void setChunkSize(int i) {
        this.chunkSize = i;
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public boolean verifyPassword(String str) {
        EncryptionVerifier verifier = getEncryptionInfo().getVerifier();
        SecretKey generateSecretKey = generateSecretKey(str, verifier);
        try {
            Cipher initCipherForBlock = initCipherForBlock(null, 0, getEncryptionInfo(), generateSecretKey, 2);
            byte[] encryptedVerifier = verifier.getEncryptedVerifier();
            byte[] bArr = new byte[encryptedVerifier.length];
            initCipherForBlock.update(encryptedVerifier, 0, encryptedVerifier.length, bArr);
            setVerifier(bArr);
            if (!Arrays.equals(CryptoFunctions.getMessageDigest(verifier.getHashAlgorithm()).digest(bArr), initCipherForBlock.doFinal(verifier.getEncryptedVerifierHash()))) {
                return false;
            }
            setSecretKey(generateSecretKey);
            return true;
        } catch (GeneralSecurityException e) {
            throw new EncryptedDocumentException(e);
        }
    }

    /* loaded from: classes12.dex */
    public class BinaryRC4CipherInputStream extends ChunkedCipherInputStream {
        public BinaryRC4CipherInputStream(DocumentInputStream documentInputStream, long j) throws GeneralSecurityException {
            super(documentInputStream, j, BinaryRC4Decryptor.this.chunkSize);
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherInputStream
        public Cipher initCipherForBlock(Cipher cipher, int i) throws GeneralSecurityException {
            return BinaryRC4Decryptor.this.initCipherForBlock(cipher, i);
        }

        public BinaryRC4CipherInputStream(InputStream inputStream, int i, int i2) throws GeneralSecurityException {
            super(inputStream, i, BinaryRC4Decryptor.this.chunkSize, i2);
        }
    }

    public static Cipher initCipherForBlock(Cipher cipher, int i, EncryptionInfo encryptionInfo, SecretKey secretKey, int i2) throws GeneralSecurityException {
        HashAlgorithm hashAlgorithm = encryptionInfo.getVerifier().getHashAlgorithm();
        byte[] bArr = new byte[4];
        LittleEndian.putUInt(bArr, 0, i);
        SecretKeySpec secretKeySpec = new SecretKeySpec(CryptoFunctions.generateKey(secretKey.getEncoded(), hashAlgorithm, bArr, 16), secretKey.getAlgorithm());
        if (cipher == null) {
            return CryptoFunctions.getCipher(secretKeySpec, encryptionInfo.getHeader().getCipherAlgorithm(), null, null, i2);
        }
        cipher.init(i2, secretKeySpec);
        return cipher;
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public BinaryRC4Decryptor copy() {
        return new BinaryRC4Decryptor(this);
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public ChunkedCipherInputStream getDataStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException {
        DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream(Decryptor.DEFAULT_POIFS_ENTRY);
        this.length = createDocumentInputStream.readLong();
        return new BinaryRC4CipherInputStream(createDocumentInputStream, this.length);
    }

    public BinaryRC4Decryptor(BinaryRC4Decryptor binaryRC4Decryptor) {
        super(binaryRC4Decryptor);
        this.length = -1L;
        this.chunkSize = 512;
        this.length = binaryRC4Decryptor.length;
        this.chunkSize = binaryRC4Decryptor.chunkSize;
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public InputStream getDataStream(InputStream inputStream, int i, int i2) throws IOException, GeneralSecurityException {
        return new BinaryRC4CipherInputStream(inputStream, i, i2);
    }
}
