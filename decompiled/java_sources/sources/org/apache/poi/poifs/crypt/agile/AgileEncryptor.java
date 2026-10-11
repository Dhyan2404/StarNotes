package org.apache.poi.poifs.crypt.agile;

import com.caverock.androidsvg.SVGParser;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChunkedCipherOutputStream;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.DataSpaceMapUtils;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.crypt.agile.AgileEncryptor;
import org.apache.poi.poifs.crypt.standard.EncryptionRecord;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.RandomSingleton;
import org.apache.poi.util.XMLHelper;
import org.w3c.dom.Document;

/* loaded from: classes12.dex */
public class AgileEncryptor extends Encryptor {
    private byte[] integritySalt;
    private byte[] pwHash;

    /* loaded from: classes12.dex */
    public class AgileCipherOutputStream extends ChunkedCipherOutputStream {
        public AgileCipherOutputStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException {
            super(directoryNode, 4096);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void marshallEncryptionRecord(LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
            EncryptionInfo encryptionInfo = AgileEncryptor.this.getEncryptionInfo();
            littleEndianByteArrayOutputStream.writeShort(encryptionInfo.getVersionMajor());
            littleEndianByteArrayOutputStream.writeShort(encryptionInfo.getVersionMinor());
            littleEndianByteArrayOutputStream.writeInt(encryptionInfo.getEncryptionFlags());
            AgileEncryptor.this.marshallEncryptionDocument(AgileEncryptor.this.createEncryptionDocument(), littleEndianByteArrayOutputStream);
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public void calculateChecksum(File file, int i) throws GeneralSecurityException, IOException {
            AgileEncryptor.this.updateIntegrityHMAC(file, i);
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public void createEncryptionInfoEntry(DirectoryNode directoryNode, File file) throws IOException {
            DataSpaceMapUtils.addDefaultDataSpace(directoryNode);
            DataSpaceMapUtils.createEncryptionEntry(directoryNode, EncryptionInfo.ENCRYPTION_INFO_ENTRY, new EncryptionRecord() { // from class: org.apache.poi.poifs.crypt.agile.a
                @Override // org.apache.poi.poifs.crypt.standard.EncryptionRecord
                public final void write(LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
                    AgileEncryptor.AgileCipherOutputStream.this.marshallEncryptionRecord(littleEndianByteArrayOutputStream);
                }
            });
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public Cipher initCipherForBlock(Cipher cipher, int i, boolean z) throws GeneralSecurityException {
            return AgileDecryptor.initCipherForBlock(cipher, i, z, AgileEncryptor.this.getEncryptionInfo(), AgileEncryptor.this.getSecretKey(), 1);
        }
    }

    public AgileEncryptor() {
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void confirmPassword(String str) {
        AgileEncryptionHeader agileEncryptionHeader = (AgileEncryptionHeader) getEncryptionInfo().getHeader();
        int blockSize = agileEncryptionHeader.getBlockSize();
        int keySize = agileEncryptionHeader.getKeySize() / 8;
        int i = agileEncryptionHeader.getHashAlgorithm().hashSize;
        int maxRecordLength = CryptoFunctions.getMaxRecordLength();
        long j = blockSize;
        byte[] safelyAllocate = IOUtils.safelyAllocate(j, maxRecordLength);
        byte[] safelyAllocate2 = IOUtils.safelyAllocate(j, maxRecordLength);
        byte[] safelyAllocate3 = IOUtils.safelyAllocate(j, maxRecordLength);
        byte[] safelyAllocate4 = IOUtils.safelyAllocate(keySize, maxRecordLength);
        byte[] safelyAllocate5 = IOUtils.safelyAllocate(i, maxRecordLength);
        SecureRandom randomSingleton = RandomSingleton.getInstance();
        randomSingleton.nextBytes(safelyAllocate);
        randomSingleton.nextBytes(safelyAllocate2);
        randomSingleton.nextBytes(safelyAllocate3);
        randomSingleton.nextBytes(safelyAllocate4);
        randomSingleton.nextBytes(safelyAllocate5);
        confirmPassword(str, safelyAllocate4, safelyAllocate3, safelyAllocate, safelyAllocate2, safelyAllocate5);
    }

    public EncryptionDocument createEncryptionDocument() {
        AgileEncryptionVerifier agileEncryptionVerifier = (AgileEncryptionVerifier) getEncryptionInfo().getVerifier();
        AgileEncryptionHeader agileEncryptionHeader = (AgileEncryptionHeader) getEncryptionInfo().getHeader();
        EncryptionDocument encryptionDocument = new EncryptionDocument();
        KeyData keyData = new KeyData();
        encryptionDocument.setKeyData(keyData);
        KeyEncryptor keyEncryptor = new KeyEncryptor();
        encryptionDocument.getKeyEncryptors().add(keyEncryptor);
        PasswordKeyEncryptor passwordKeyEncryptor = new PasswordKeyEncryptor();
        keyEncryptor.setPasswordKeyEncryptor(passwordKeyEncryptor);
        passwordKeyEncryptor.setSpinCount(Integer.valueOf(agileEncryptionVerifier.getSpinCount()));
        keyData.setSaltSize(Integer.valueOf(agileEncryptionHeader.getBlockSize()));
        passwordKeyEncryptor.setSaltSize(Integer.valueOf(agileEncryptionVerifier.getBlockSize()));
        keyData.setBlockSize(Integer.valueOf(agileEncryptionHeader.getBlockSize()));
        passwordKeyEncryptor.setBlockSize(Integer.valueOf(agileEncryptionVerifier.getBlockSize()));
        keyData.setKeyBits(Integer.valueOf(agileEncryptionHeader.getKeySize()));
        passwordKeyEncryptor.setKeyBits(Integer.valueOf(agileEncryptionVerifier.getKeySize()));
        keyData.setHashSize(Integer.valueOf(agileEncryptionHeader.getHashAlgorithm().hashSize));
        passwordKeyEncryptor.setHashSize(Integer.valueOf(agileEncryptionVerifier.getHashAlgorithm().hashSize));
        if (!agileEncryptionHeader.getCipherAlgorithm().xmlId.equals(agileEncryptionVerifier.getCipherAlgorithm().xmlId)) {
            throw new EncryptedDocumentException("Cipher algorithm of header and verifier have to match");
        }
        keyData.setCipherAlgorithm(agileEncryptionHeader.getCipherAlgorithm());
        passwordKeyEncryptor.setCipherAlgorithm(agileEncryptionHeader.getCipherAlgorithm());
        keyData.setCipherChaining(agileEncryptionHeader.getChainingMode());
        passwordKeyEncryptor.setCipherChaining(agileEncryptionHeader.getChainingMode());
        keyData.setHashAlgorithm(agileEncryptionHeader.getHashAlgorithm());
        passwordKeyEncryptor.setHashAlgorithm(agileEncryptionVerifier.getHashAlgorithm());
        keyData.setSaltValue(agileEncryptionHeader.getKeySalt());
        passwordKeyEncryptor.setSaltValue(agileEncryptionVerifier.getSalt());
        passwordKeyEncryptor.setEncryptedVerifierHashInput(agileEncryptionVerifier.getEncryptedVerifier());
        passwordKeyEncryptor.setEncryptedVerifierHashValue(agileEncryptionVerifier.getEncryptedVerifierHash());
        passwordKeyEncryptor.setEncryptedKeyValue(agileEncryptionVerifier.getEncryptedKey());
        DataIntegrity dataIntegrity = new DataIntegrity();
        encryptionDocument.setDataIntegrity(dataIntegrity);
        dataIntegrity.setEncryptedHmacKey(agileEncryptionHeader.getEncryptedHmacKey());
        dataIntegrity.setEncryptedHmacValue(agileEncryptionHeader.getEncryptedHmacValue());
        return encryptionDocument;
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public OutputStream getDataStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException {
        return new AgileCipherOutputStream(directoryNode);
    }

    public void marshallEncryptionDocument(EncryptionDocument encryptionDocument, LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
        Document newDocument = XMLHelper.newDocumentBuilder().newDocument();
        encryptionDocument.write(newDocument);
        try {
            Transformer newTransformer = XMLHelper.newTransformer();
            newTransformer.setOutputProperty("method", "xml");
            newTransformer.setOutputProperty("encoding", "UTF-8");
            newTransformer.setOutputProperty("indent", SVGParser.f16048t);
            newTransformer.setOutputProperty("standalone", "yes");
            newTransformer.transform(new DOMSource(newDocument), new StreamResult(littleEndianByteArrayOutputStream));
        } catch (TransformerException e) {
            throw new EncryptedDocumentException("error marshalling encryption info document", e);
        }
    }

    public void updateIntegrityHMAC(File file, int i) throws GeneralSecurityException, IOException {
        AgileEncryptionHeader agileEncryptionHeader = (AgileEncryptionHeader) getEncryptionInfo().getHeader();
        int blockSize = agileEncryptionHeader.getBlockSize();
        HashAlgorithm hashAlgorithm = agileEncryptionHeader.getHashAlgorithm();
        Mac mac = CryptoFunctions.getMac(hashAlgorithm);
        byte[] bArr = this.integritySalt;
        mac.init(new SecretKeySpec(CryptoFunctions.getBlock0(bArr, AgileDecryptor.getNextBlockSize(bArr.length, blockSize)), hashAlgorithm.jceHmacId));
        byte[] bArr2 = new byte[1024];
        LittleEndian.putLong(bArr2, 0, i);
        mac.update(bArr2, 0, 8);
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr2);
                if (read == -1) {
                    fileInputStream.close();
                    byte[] doFinal = mac.doFinal();
                    agileEncryptionHeader.setEncryptedHmacValue(CryptoFunctions.getCipher(getSecretKey(), agileEncryptionHeader.getCipherAlgorithm(), agileEncryptionHeader.getChainingMode(), CryptoFunctions.generateIv(agileEncryptionHeader.getHashAlgorithm(), agileEncryptionHeader.getKeySalt(), AgileDecryptor.kIntegrityValueBlock, blockSize), 1).doFinal(CryptoFunctions.getBlock0(doFinal, AgileDecryptor.getNextBlockSize(doFinal.length, blockSize))));
                    return;
                }
                mac.update(bArr2, 0, read);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    public AgileEncryptor(AgileEncryptor agileEncryptor) {
        super(agileEncryptor);
        byte[] bArr = agileEncryptor.integritySalt;
        this.integritySalt = bArr == null ? null : (byte[]) bArr.clone();
        byte[] bArr2 = agileEncryptor.pwHash;
        this.pwHash = bArr2 != null ? (byte[]) bArr2.clone() : null;
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public AgileEncryptor copy() {
        return new AgileEncryptor(this);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void confirmPassword(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        AgileEncryptionVerifier agileEncryptionVerifier = (AgileEncryptionVerifier) getEncryptionInfo().getVerifier();
        AgileEncryptionHeader agileEncryptionHeader = (AgileEncryptionHeader) getEncryptionInfo().getHeader();
        agileEncryptionVerifier.setSalt(bArr4);
        agileEncryptionHeader.setKeySalt(bArr2);
        int blockSize = agileEncryptionHeader.getBlockSize();
        byte[] hashPassword = CryptoFunctions.hashPassword(str, agileEncryptionVerifier.getHashAlgorithm(), bArr4, agileEncryptionVerifier.getSpinCount());
        this.pwHash = hashPassword;
        agileEncryptionVerifier.setEncryptedVerifier(AgileDecryptor.hashInput(agileEncryptionVerifier, hashPassword, AgileDecryptor.kVerifierInputBlock, bArr3, 1));
        agileEncryptionVerifier.setEncryptedVerifierHash(AgileDecryptor.hashInput(agileEncryptionVerifier, this.pwHash, AgileDecryptor.kHashedVerifierBlock, CryptoFunctions.getMessageDigest(agileEncryptionVerifier.getHashAlgorithm()).digest(bArr3), 1));
        agileEncryptionVerifier.setEncryptedKey(AgileDecryptor.hashInput(agileEncryptionVerifier, this.pwHash, AgileDecryptor.kCryptoKeyBlock, bArr, 1));
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, agileEncryptionHeader.getCipherAlgorithm().jceId);
        setSecretKey(secretKeySpec);
        this.integritySalt = (byte[]) bArr5.clone();
        try {
            Cipher cipher = CryptoFunctions.getCipher(secretKeySpec, agileEncryptionHeader.getCipherAlgorithm(), agileEncryptionHeader.getChainingMode(), CryptoFunctions.generateIv(agileEncryptionHeader.getHashAlgorithm(), agileEncryptionHeader.getKeySalt(), AgileDecryptor.kIntegrityKeyBlock, agileEncryptionHeader.getBlockSize()), 1);
            byte[] bArr6 = this.integritySalt;
            agileEncryptionHeader.setEncryptedHmacKey(cipher.doFinal(CryptoFunctions.getBlock0(bArr6, AgileDecryptor.getNextBlockSize(bArr6.length, blockSize))));
        } catch (GeneralSecurityException e) {
            throw new EncryptedDocumentException(e);
        }
    }
}
