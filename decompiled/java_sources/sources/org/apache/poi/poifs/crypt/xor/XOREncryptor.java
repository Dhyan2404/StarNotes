package org.apache.poi.poifs.crypt.xor;

import com.zaxxer.sparsebits.SparseBitSet;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChunkedCipherOutputStream;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class XOREncryptor extends Encryptor {
    public XOREncryptor() {
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void confirmPassword(String str) {
        int createXorKey1 = CryptoFunctions.createXorKey1(str);
        int createXorVerifier1 = CryptoFunctions.createXorVerifier1(str);
        byte[] createXorArray1 = CryptoFunctions.createXorArray1(str);
        byte[] bArr = new byte[2];
        XOREncryptionVerifier xOREncryptionVerifier = (XOREncryptionVerifier) getEncryptionInfo().getVerifier();
        LittleEndian.putUShort(bArr, 0, createXorKey1);
        xOREncryptionVerifier.setEncryptedKey(bArr);
        LittleEndian.putUShort(bArr, 0, createXorVerifier1);
        xOREncryptionVerifier.setEncryptedVerifier(bArr);
        setSecretKey(new SecretKeySpec(createXorArray1, "XOR"));
    }

    public int getKeySizeInBytes() {
        return -1;
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void setChunkSize(int i) {
    }

    /* loaded from: classes12.dex */
    public class XORCipherOutputStream extends ChunkedCipherOutputStream {
        private int recordEnd;
        private int recordStart;

        public XORCipherOutputStream(OutputStream outputStream, int i) throws IOException, GeneralSecurityException {
            super(outputStream, -1);
        }

        private byte rotateLeft(byte b, int i) {
            int i2 = b & 255;
            return (byte) ((i2 >>> (8 - i)) | (i2 << i));
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
            setNextRecordSize(0, true);
            super.flush();
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public Cipher initCipherForBlock(Cipher cipher, int i, boolean z) throws GeneralSecurityException {
            return XORDecryptor.initCipherForBlock(cipher, i, XOREncryptor.this.getEncryptionInfo(), XOREncryptor.this.getSecretKey(), 1);
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public int invokeCipher(int i, boolean z) {
            if (i == 0) {
                return 0;
            }
            int max = Math.max(i - (this.recordEnd - this.recordStart), 0);
            SparseBitSet plainByteFlags = getPlainByteFlags();
            byte[] encoded = XOREncryptor.this.getEncryptionInfo().getEncryptor().getSecretKey().getEncoded();
            byte[] chunk = getChunk();
            byte[] bArr = plainByteFlags.isEmpty() ? null : (byte[]) chunk.clone();
            int i2 = this.recordEnd + (max - this.recordStart);
            int i3 = max;
            while (i3 < i) {
                chunk[i3] = rotateLeft((byte) (encoded[i2 & 15] ^ chunk[i3]), 5);
                i3++;
                i2++;
            }
            if (bArr != null) {
                for (int nextSetBit = plainByteFlags.nextSetBit(max); nextSetBit >= 0 && nextSetBit < i; nextSetBit = plainByteFlags.nextSetBit(nextSetBit + 1)) {
                    chunk[nextSetBit] = bArr[nextSetBit];
                }
            }
            return i;
        }

        @Override // org.apache.poi.poifs.crypt.ChunkedCipherOutputStream
        public void setNextRecordSize(int i, boolean z) {
            if (this.recordEnd > 0 && !z) {
                invokeCipher((int) getPos(), true);
            }
            int totalPos = ((int) getTotalPos()) + 4;
            this.recordStart = totalPos;
            this.recordEnd = totalPos + i;
        }

        public XORCipherOutputStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException {
            super(directoryNode, -1);
        }
    }

    public XOREncryptor(XOREncryptor xOREncryptor) {
        super(xOREncryptor);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public XOREncryptor copy() {
        return new XOREncryptor(this);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public OutputStream getDataStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException {
        return new XORCipherOutputStream(directoryNode);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public XORCipherOutputStream getDataStream(OutputStream outputStream, int i) throws IOException, GeneralSecurityException {
        return new XORCipherOutputStream(outputStream, i);
    }

    @Override // org.apache.poi.poifs.crypt.Encryptor
    public void confirmPassword(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        confirmPassword(str);
    }
}
