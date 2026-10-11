package org.apache.poi.poifs.crypt.standard;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.DataSpaceMapUtils;
import org.apache.poi.poifs.crypt.Decryptor;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.EncryptionVerifier;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.crypt.standard.StandardEncryptor;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSWriterEvent;
import org.apache.poi.poifs.filesystem.POIFSWriterListener;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.LittleEndianOutputStream;
import org.apache.poi.util.RandomSingleton;
import org.apache.poi.util.TempFile;

/* loaded from: classes12.dex */
public class StandardEncryptor extends Encryptor {
    private static final Logger LOG = LogManager.getLogger((Class<?>) StandardEncryptor.class);

    public StandardEncryptor() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Cipher getCipher(SecretKey secretKey, String str) {
        EncryptionVerifier verifier = getEncryptionInfo().getVerifier();
        return CryptoFunctions.getCipher(secretKey, verifier.getCipherAlgorithm(), verifier.getChainingMode(), null, 1, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createEncryptionInfoEntry$0(EncryptionInfo encryptionInfo, StandardEncryptionHeader standardEncryptionHeader, StandardEncryptionVerifier standardEncryptionVerifier, LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
        littleEndianByteArrayOutputStream.writeShort(encryptionInfo.getVersionMajor());
        littleEndianByteArrayOutputStream.writeShort(encryptionInfo.getVersionMinor());
        littleEndianByteArrayOutputStream.writeInt(encryptionInfo.getEncryptionFlags());
        standardEncryptionHeader.write(littleEndianByteArrayOutputStream);
        standardEncryptionVerifier.write(littleEndianByteArrayOutputStream);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void confirmPassword(String str) {
        SecureRandom randomSingleton = RandomSingleton.getInstance();
        byte[] bArr = new byte[16];
        byte[] bArr2 = new byte[16];
        randomSingleton.nextBytes(bArr);
        randomSingleton.nextBytes(bArr2);
        confirmPassword(str, null, null, bArr, bArr2, null);
    }

    public void createEncryptionInfoEntry(DirectoryNode directoryNode) throws IOException {
        final EncryptionInfo encryptionInfo = getEncryptionInfo();
        final StandardEncryptionHeader standardEncryptionHeader = (StandardEncryptionHeader) encryptionInfo.getHeader();
        final StandardEncryptionVerifier standardEncryptionVerifier = (StandardEncryptionVerifier) encryptionInfo.getVerifier();
        DataSpaceMapUtils.createEncryptionEntry(directoryNode, EncryptionInfo.ENCRYPTION_INFO_ENTRY, new EncryptionRecord() { // from class: com.sunia.HTREnginev2.mxm
            @Override // org.apache.poi.poifs.crypt.standard.EncryptionRecord
            public final void write(LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
                StandardEncryptor.lambda$createEncryptionInfoEntry$0(EncryptionInfo.this, standardEncryptionHeader, standardEncryptionVerifier, littleEndianByteArrayOutputStream);
            }
        });
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public OutputStream getDataStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException {
        createEncryptionInfoEntry(directoryNode);
        DataSpaceMapUtils.addDefaultDataSpace(directoryNode);
        return new StandardCipherOutputStream(this, directoryNode);
    }

    public int getKeySizeInBytes() {
        return getEncryptionInfo().getHeader().getKeySize() / 8;
    }

    /* loaded from: classes12.dex */
    public class StandardCipherOutputStream extends FilterOutputStream implements POIFSWriterListener {
        protected long countBytes;
        protected final boolean deleteFile;
        protected final DirectoryNode dir;
        protected final File fileOut;

        private StandardCipherOutputStream(DirectoryNode directoryNode, File file, boolean z) throws IOException {
            super(new CipherOutputStream(new FileOutputStream(file), StandardEncryptor.this.getCipher(StandardEncryptor.this.getSecretKey(), "PKCS5Padding")));
            this.deleteFile = z;
            this.fileOut = file;
            this.dir = directoryNode;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            File file;
            super.close();
            writeToPOIFS();
            if (!this.deleteFile || (file = this.fileOut) == null) {
                return;
            }
            file.delete();
        }

        @Override // org.apache.poi.poifs.filesystem.POIFSWriterListener
        public void processPOIFSWriterEvent(POIFSWriterEvent pOIFSWriterEvent) {
            try {
                LittleEndianOutputStream littleEndianOutputStream = new LittleEndianOutputStream(pOIFSWriterEvent.getStream());
                littleEndianOutputStream.writeLong(this.countBytes);
                FileInputStream fileInputStream = new FileInputStream(this.fileOut);
                try {
                    IOUtils.copy(fileInputStream, littleEndianOutputStream);
                    fileInputStream.close();
                    if (!this.fileOut.delete()) {
                        StandardEncryptor.LOG.atError().log("Can't delete temporary encryption file: {}", this.fileOut);
                    }
                    littleEndianOutputStream.close();
                } finally {
                }
            } catch (IOException e) {
                throw new EncryptedDocumentException(e);
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            ((FilterOutputStream) this).out.write(bArr, i, i2);
            this.countBytes += i2;
        }

        public void writeToPOIFS() throws IOException {
            this.dir.createDocument(Decryptor.DEFAULT_POIFS_ENTRY, (int) (this.fileOut.length() + 8), this);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i) throws IOException {
            ((FilterOutputStream) this).out.write(i);
            this.countBytes++;
        }

        public StandardCipherOutputStream(StandardEncryptor standardEncryptor, DirectoryNode directoryNode) throws IOException {
            this(directoryNode, TempFile.createTempFile("encrypted_package", "crypt"), true);
        }
    }

    public StandardEncryptor(StandardEncryptor standardEncryptor) {
        super(standardEncryptor);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public StandardEncryptor copy() {
        return new StandardEncryptor(this);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void confirmPassword(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        StandardEncryptionVerifier standardEncryptionVerifier = (StandardEncryptionVerifier) getEncryptionInfo().getVerifier();
        standardEncryptionVerifier.setSalt(bArr4);
        SecretKey generateSecretKey = StandardDecryptor.generateSecretKey(str, standardEncryptionVerifier, getKeySizeInBytes());
        setSecretKey(generateSecretKey);
        Cipher cipher = getCipher(generateSecretKey, null);
        try {
            byte[] doFinal = cipher.doFinal(bArr3);
            byte[] doFinal2 = cipher.doFinal(Arrays.copyOf(CryptoFunctions.getMessageDigest(standardEncryptionVerifier.getHashAlgorithm()).digest(bArr3), standardEncryptionVerifier.getCipherAlgorithm().encryptedVerifierHashLength));
            standardEncryptionVerifier.setEncryptedVerifier(doFinal);
            standardEncryptionVerifier.setEncryptedVerifierHash(doFinal2);
        } catch (GeneralSecurityException e) {
            throw new EncryptedDocumentException("Password confirmation failed", e);
        }
    }
}
