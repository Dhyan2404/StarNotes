package org.apache.poi.poifs.crypt.cryptoapi;

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
import org.apache.poi.poifs.crypt.EncryptionHeader;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.EncryptionVerifier;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class CryptoAPIDecryptor extends Decryptor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int chunkSize;
    private long length;

    /* loaded from: classes12.dex */
    public class CryptoAPICipherInputStream extends ChunkedCipherInputStream {
        public CryptoAPICipherInputStream(InputStream inputStream, long j, int i) throws GeneralSecurityException {
            super(inputStream, j, CryptoAPIDecryptor.this.chunkSize, i);
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherInputStream
        public Cipher initCipherForBlock(Cipher cipher, int i) throws GeneralSecurityException {
            return CryptoAPIDecryptor.this.initCipherForBlock(cipher, i);
        }
    }

    /* loaded from: classes12.dex */
    public static class StreamDescriptorEntry {
        static final BitField flagStream = BitFieldFactory.getInstance(1);
        int block;
        int flags;
        int reserved2;
        String streamName;
        int streamOffset;
        int streamSize;
    }

    public CryptoAPIDecryptor() {
        this.length = -1L;
        this.chunkSize = -1;
    }

    public static SecretKey generateSecretKey(String str, EncryptionVerifier encryptionVerifier) {
        if (str.length() > 255) {
            str = str.substring(0, 255);
        }
        MessageDigest messageDigest = CryptoFunctions.getMessageDigest(encryptionVerifier.getHashAlgorithm());
        messageDigest.update(encryptionVerifier.getSalt());
        return new SecretKeySpec(messageDigest.digest(StringUtil.getToUnicodeLE(str)), encryptionVerifier.getCipherAlgorithm().jceId);
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public long getLength() {
        long j = this.length;
        if (j != -1) {
            return j;
        }
        throw new IllegalStateException("Decryptor.getDataStream() was not called");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0100  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.poi.poifs.filesystem.POIFSFileSystem getSummaryEntries(org.apache.poi.poifs.filesystem.DirectoryNode r9, java.lang.String r10) throws java.io.IOException, java.security.GeneralSecurityException {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.poifs.crypt.cryptoapi.CryptoAPIDecryptor.getSummaryEntries(org.apache.poi.poifs.filesystem.DirectoryNode, java.lang.String):org.apache.poi.poifs.filesystem.POIFSFileSystem");
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

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public CryptoAPIDecryptor copy() {
        return new CryptoAPIDecryptor(this);
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public ChunkedCipherInputStream getDataStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException {
        throw new IOException("not supported");
    }

    public CryptoAPIDecryptor(CryptoAPIDecryptor cryptoAPIDecryptor) {
        super(cryptoAPIDecryptor);
        this.length = -1L;
        this.chunkSize = -1;
        this.length = cryptoAPIDecryptor.length;
        this.chunkSize = cryptoAPIDecryptor.chunkSize;
    }

    public static Cipher initCipherForBlock(Cipher cipher, int i, EncryptionInfo encryptionInfo, SecretKey secretKey, int i2) throws GeneralSecurityException {
        HashAlgorithm hashAlgorithm = encryptionInfo.getVerifier().getHashAlgorithm();
        byte[] bArr = new byte[4];
        LittleEndian.putUInt(bArr, 0, i);
        MessageDigest messageDigest = CryptoFunctions.getMessageDigest(hashAlgorithm);
        messageDigest.update(secretKey.getEncoded());
        byte[] digest = messageDigest.digest(bArr);
        EncryptionHeader header = encryptionInfo.getHeader();
        int keySize = header.getKeySize();
        byte[] block0 = CryptoFunctions.getBlock0(digest, keySize / 8);
        if (keySize == 40) {
            block0 = CryptoFunctions.getBlock0(block0, 16);
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(block0, secretKey.getAlgorithm());
        if (cipher == null) {
            return CryptoFunctions.getCipher(secretKeySpec, header.getCipherAlgorithm(), null, null, i2);
        }
        cipher.init(i2, secretKeySpec);
        return cipher;
    }

    @Override // org.apache.poi.poifs.crypt.Decryptor
    public ChunkedCipherInputStream getDataStream(InputStream inputStream, int i, int i2) throws IOException, GeneralSecurityException {
        return new CryptoAPICipherInputStream(inputStream, i, i2);
    }
}
