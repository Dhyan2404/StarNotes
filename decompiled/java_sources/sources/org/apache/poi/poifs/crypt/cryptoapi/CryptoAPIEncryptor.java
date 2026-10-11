package org.apache.poi.poifs.crypt.cryptoapi;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import javax.crypto.Cipher;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChunkedCipherOutputStream;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.crypt.cryptoapi.CryptoAPIDecryptor;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.RandomSingleton;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class CryptoAPIEncryptor extends Encryptor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int chunkSize;

    /* loaded from: classes12.dex */
    public class CryptoAPICipherOutputStream extends ChunkedCipherOutputStream {
        public CryptoAPICipherOutputStream(OutputStream outputStream) throws IOException, GeneralSecurityException {
            super(outputStream, CryptoAPIEncryptor.this.chunkSize);
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public void calculateChecksum(File file, int i) {
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public void createEncryptionInfoEntry(DirectoryNode directoryNode, File file) {
            throw new EncryptedDocumentException("createEncryptionInfoEntry not supported");
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            writeChunk(false);
            super.flush();
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public Cipher initCipherForBlock(Cipher cipher, int i, boolean z) throws IOException, GeneralSecurityException {
            flush();
            return initCipherForBlockNoFlush(cipher, i, z);
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public Cipher initCipherForBlockNoFlush(Cipher cipher, int i, boolean z) throws GeneralSecurityException {
            return CryptoAPIDecryptor.initCipherForBlock(cipher, i, CryptoAPIEncryptor.this.getEncryptionInfo(), CryptoAPIEncryptor.this.getSecretKey(), 1);
        }
    }

    public CryptoAPIEncryptor() {
        this.chunkSize = 512;
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

    public Cipher initCipherForBlock(Cipher cipher, int i) throws GeneralSecurityException {
        return CryptoAPIDecryptor.initCipherForBlock(cipher, i, getEncryptionInfo(), getSecretKey(), 1);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void setChunkSize(int i) {
        this.chunkSize = i;
    }

    public void setSummaryEntries(DirectoryNode directoryNode, String str, POIFSFileSystem pOIFSFileSystem) throws IOException, GeneralSecurityException {
        CryptoAPIDocumentOutputStream cryptoAPIDocumentOutputStream = new CryptoAPIDocumentOutputStream(this);
        byte[] bArr = new byte[8];
        cryptoAPIDocumentOutputStream.write(bArr, 0, 8);
        ArrayList<CryptoAPIDecryptor.StreamDescriptorEntry> arrayList = new ArrayList();
        Iterator<Entry> it2 = pOIFSFileSystem.getRoot().iterator();
        int i = 0;
        while (it2.hasNext()) {
            Entry next = it2.next();
            if (!next.isDirectoryEntry()) {
                CryptoAPIDecryptor.StreamDescriptorEntry streamDescriptorEntry = new CryptoAPIDecryptor.StreamDescriptorEntry();
                streamDescriptorEntry.block = i;
                streamDescriptorEntry.streamOffset = cryptoAPIDocumentOutputStream.size();
                streamDescriptorEntry.streamName = next.getName();
                streamDescriptorEntry.flags = CryptoAPIDecryptor.StreamDescriptorEntry.flagStream.setValue(0, 1);
                streamDescriptorEntry.reserved2 = 0;
                cryptoAPIDocumentOutputStream.setBlock(i);
                DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream(next);
                try {
                    IOUtils.copy(createDocumentInputStream, cryptoAPIDocumentOutputStream);
                    if (createDocumentInputStream != null) {
                        createDocumentInputStream.close();
                    }
                    streamDescriptorEntry.streamSize = cryptoAPIDocumentOutputStream.size() - streamDescriptorEntry.streamOffset;
                    arrayList.add(streamDescriptorEntry);
                    i++;
                } finally {
                }
            }
        }
        int size = cryptoAPIDocumentOutputStream.size();
        cryptoAPIDocumentOutputStream.setBlock(0);
        LittleEndian.putUInt(bArr, 0, arrayList.size());
        cryptoAPIDocumentOutputStream.write(bArr, 0, 4);
        for (CryptoAPIDecryptor.StreamDescriptorEntry streamDescriptorEntry2 : arrayList) {
            LittleEndian.putUInt(bArr, 0, streamDescriptorEntry2.streamOffset);
            cryptoAPIDocumentOutputStream.write(bArr, 0, 4);
            LittleEndian.putUInt(bArr, 0, streamDescriptorEntry2.streamSize);
            cryptoAPIDocumentOutputStream.write(bArr, 0, 4);
            LittleEndian.putUShort(bArr, 0, streamDescriptorEntry2.block);
            cryptoAPIDocumentOutputStream.write(bArr, 0, 2);
            LittleEndian.putUByte(bArr, 0, (short) streamDescriptorEntry2.streamName.length());
            cryptoAPIDocumentOutputStream.write(bArr, 0, 1);
            LittleEndian.putUByte(bArr, 0, (short) streamDescriptorEntry2.flags);
            cryptoAPIDocumentOutputStream.write(bArr, 0, 1);
            LittleEndian.putUInt(bArr, 0, streamDescriptorEntry2.reserved2);
            cryptoAPIDocumentOutputStream.write(bArr, 0, 4);
            byte[] toUnicodeLE = StringUtil.getToUnicodeLE(streamDescriptorEntry2.streamName);
            cryptoAPIDocumentOutputStream.write(toUnicodeLE, 0, toUnicodeLE.length);
            LittleEndian.putShort(bArr, 0, (short) 0);
            cryptoAPIDocumentOutputStream.write(bArr, 0, 2);
        }
        int size2 = cryptoAPIDocumentOutputStream.size();
        LittleEndian.putUInt(bArr, 0, size);
        LittleEndian.putUInt(bArr, 4, size2 - size);
        cryptoAPIDocumentOutputStream.reset();
        cryptoAPIDocumentOutputStream.setBlock(0);
        cryptoAPIDocumentOutputStream.write(bArr, 0, 8);
        cryptoAPIDocumentOutputStream.setSize(size2);
        directoryNode.createDocument(str, cryptoAPIDocumentOutputStream.toInputStream(size2));
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public CryptoAPIEncryptor copy() {
        return new CryptoAPIEncryptor(this);
    }

    public CryptoAPIEncryptor(CryptoAPIEncryptor cryptoAPIEncryptor) {
        super(cryptoAPIEncryptor);
        this.chunkSize = 512;
        this.chunkSize = cryptoAPIEncryptor.chunkSize;
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public ChunkedCipherOutputStream getDataStream(DirectoryNode directoryNode) throws IOException {
        throw new IOException("not supported");
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public CryptoAPICipherOutputStream getDataStream(OutputStream outputStream, int i) throws IOException, GeneralSecurityException {
        return new CryptoAPICipherOutputStream(outputStream);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void confirmPassword(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        CryptoAPIEncryptionVerifier cryptoAPIEncryptionVerifier = (CryptoAPIEncryptionVerifier) getEncryptionInfo().getVerifier();
        cryptoAPIEncryptionVerifier.setSalt(bArr4);
        setSecretKey(CryptoAPIDecryptor.generateSecretKey(str, cryptoAPIEncryptionVerifier));
        try {
            Cipher initCipherForBlock = initCipherForBlock(null, 0);
            byte[] bArr6 = new byte[bArr3.length];
            initCipherForBlock.update(bArr3, 0, bArr3.length, bArr6);
            cryptoAPIEncryptionVerifier.setEncryptedVerifier(bArr6);
            cryptoAPIEncryptionVerifier.setEncryptedVerifierHash(initCipherForBlock.doFinal(CryptoFunctions.getMessageDigest(cryptoAPIEncryptionVerifier.getHashAlgorithm()).digest(bArr3)));
        } catch (GeneralSecurityException e) {
            throw new EncryptedDocumentException("Password confirmation failed", e);
        }
    }
}
