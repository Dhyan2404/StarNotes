package org.apache.poi.poifs.crypt.binaryrc4;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChunkedCipherOutputStream;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.DataSpaceMapUtils;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.crypt.binaryrc4.BinaryRC4Encryptor;
import org.apache.poi.poifs.crypt.standard.EncryptionRecord;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.RandomSingleton;

/* loaded from: classes12.dex */
public class BinaryRC4Encryptor extends Encryptor {
    private int chunkSize;

    public BinaryRC4Encryptor() {
        this.chunkSize = 512;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createEncryptionInfoEntry$0(EncryptionInfo encryptionInfo, BinaryRC4EncryptionHeader binaryRC4EncryptionHeader, BinaryRC4EncryptionVerifier binaryRC4EncryptionVerifier, LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
        littleEndianByteArrayOutputStream.writeShort(encryptionInfo.getVersionMajor());
        littleEndianByteArrayOutputStream.writeShort(encryptionInfo.getVersionMinor());
        binaryRC4EncryptionHeader.write(littleEndianByteArrayOutputStream);
        binaryRC4EncryptionVerifier.write(littleEndianByteArrayOutputStream);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void confirmPassword(String str) {
        SecureRandom randomSingleton = RandomSingleton.getInstance();
        byte[] bArr = new byte[16];
        byte[] bArr2 = new byte[16];
        randomSingleton.nextBytes(bArr);
        randomSingleton.nextBytes(bArr2);
        confirmPassword(str, null, null, bArr2, bArr, null);
    }

    public void createEncryptionInfoEntry(DirectoryNode directoryNode) throws IOException {
        DataSpaceMapUtils.addDefaultDataSpace(directoryNode);
        final EncryptionInfo encryptionInfo = getEncryptionInfo();
        final BinaryRC4EncryptionHeader binaryRC4EncryptionHeader = (BinaryRC4EncryptionHeader) encryptionInfo.getHeader();
        final BinaryRC4EncryptionVerifier binaryRC4EncryptionVerifier = (BinaryRC4EncryptionVerifier) encryptionInfo.getVerifier();
        DataSpaceMapUtils.createEncryptionEntry(directoryNode, EncryptionInfo.ENCRYPTION_INFO_ENTRY, new EncryptionRecord() { // from class: com.sunia.HTREnginev2.tq
            @Override // org.apache.poi.poifs.crypt.standard.EncryptionRecord
            public final void write(LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
                BinaryRC4Encryptor.lambda$createEncryptionInfoEntry$0(EncryptionInfo.this, binaryRC4EncryptionHeader, binaryRC4EncryptionVerifier, littleEndianByteArrayOutputStream);
            }
        });
    }

    public int getKeySizeInBytes() {
        return getEncryptionInfo().getHeader().getKeySize() / 8;
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void setChunkSize(int i) {
        this.chunkSize = i;
    }

    /* loaded from: classes12.dex */
    public class BinaryRC4CipherOutputStream extends ChunkedCipherOutputStream {
        public BinaryRC4CipherOutputStream(OutputStream outputStream) throws IOException, GeneralSecurityException {
            super(outputStream, BinaryRC4Encryptor.this.chunkSize);
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public void calculateChecksum(File file, int i) {
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public void createEncryptionInfoEntry(DirectoryNode directoryNode, File file) throws IOException, GeneralSecurityException {
            BinaryRC4Encryptor.this.createEncryptionInfoEntry(directoryNode);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            writeChunk(false);
            super.flush();
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public Cipher initCipherForBlock(Cipher cipher, int i, boolean z) throws GeneralSecurityException {
            return BinaryRC4Decryptor.initCipherForBlock(cipher, i, BinaryRC4Encryptor.this.getEncryptionInfo(), BinaryRC4Encryptor.this.getSecretKey(), 1);
        }

        public BinaryRC4CipherOutputStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException {
            super(directoryNode, BinaryRC4Encryptor.this.chunkSize);
        }
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public BinaryRC4Encryptor copy() {
        return new BinaryRC4Encryptor(this);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public OutputStream getDataStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException {
        return new BinaryRC4CipherOutputStream(directoryNode);
    }

    public BinaryRC4Encryptor(BinaryRC4Encryptor binaryRC4Encryptor) {
        super(binaryRC4Encryptor);
        this.chunkSize = 512;
        this.chunkSize = binaryRC4Encryptor.chunkSize;
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public BinaryRC4CipherOutputStream getDataStream(OutputStream outputStream, int i) throws IOException, GeneralSecurityException {
        return new BinaryRC4CipherOutputStream(outputStream);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void confirmPassword(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        BinaryRC4EncryptionVerifier binaryRC4EncryptionVerifier = (BinaryRC4EncryptionVerifier) getEncryptionInfo().getVerifier();
        binaryRC4EncryptionVerifier.setSalt(bArr4);
        SecretKey generateSecretKey = BinaryRC4Decryptor.generateSecretKey(str, binaryRC4EncryptionVerifier);
        setSecretKey(generateSecretKey);
        try {
            Cipher initCipherForBlock = BinaryRC4Decryptor.initCipherForBlock(null, 0, getEncryptionInfo(), generateSecretKey, 1);
            byte[] bArr6 = new byte[16];
            initCipherForBlock.update(bArr3, 0, 16, bArr6);
            binaryRC4EncryptionVerifier.setEncryptedVerifier(bArr6);
            binaryRC4EncryptionVerifier.setEncryptedVerifierHash(initCipherForBlock.doFinal(CryptoFunctions.getMessageDigest(binaryRC4EncryptionVerifier.getHashAlgorithm()).digest(bArr3)));
        } catch (GeneralSecurityException e) {
            throw new EncryptedDocumentException("Password confirmation failed", e);
        }
    }
}
