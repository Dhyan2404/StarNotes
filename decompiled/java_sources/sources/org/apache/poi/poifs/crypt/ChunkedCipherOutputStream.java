package org.apache.poi.poifs.crypt;

import com.zaxxer.sparsebits.SparseBitSet;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChunkedCipherOutputStream;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentOutputStream;
import org.apache.poi.poifs.filesystem.POIFSWriterEvent;
import org.apache.poi.poifs.filesystem.POIFSWriterListener;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.TempFile;

@Internal
/* loaded from: classes12.dex */
public abstract class ChunkedCipherOutputStream extends FilterOutputStream {
    private static final Logger LOG = LogManager.getLogger((Class<?>) ChunkedCipherOutputStream.class);
    private static final int STREAMING = -1;
    private final byte[] chunk;
    private final int chunkBits;
    private final int chunkSize;
    private Cipher cipher;
    private final DirectoryNode dir;
    private final File fileOut;
    private boolean isClosed;
    private final SparseBitSet plainByteFlags;
    private long pos;
    private long totalPos;
    private long written;

    public ChunkedCipherOutputStream(DirectoryNode directoryNode, int i) throws IOException, GeneralSecurityException {
        super(null);
        this.chunkSize = i;
        i = i == -1 ? 4096 : i;
        this.chunk = IOUtils.safelyAllocate(i, CryptoFunctions.MAX_RECORD_LENGTH);
        this.plainByteFlags = new SparseBitSet(i);
        this.chunkBits = Integer.bitCount(i - 1);
        File createTempFile = TempFile.createTempFile("encrypted_package", "crypt");
        this.fileOut = createTempFile;
        ((FilterOutputStream) this).out = new FileOutputStream(createTempFile);
        this.dir = directoryNode;
        this.cipher = initCipherForBlock(null, 0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processPOIFSWriterEvent(POIFSWriterEvent pOIFSWriterEvent) {
        try {
            DocumentOutputStream stream = pOIFSWriterEvent.getStream();
            try {
                FileInputStream fileInputStream = new FileInputStream(this.fileOut);
                try {
                    byte[] bArr = new byte[8];
                    LittleEndian.putLong(bArr, 0, this.pos);
                    stream.write(bArr);
                    IOUtils.copy(fileInputStream, stream);
                    fileInputStream.close();
                    stream.close();
                    if (this.fileOut.delete()) {
                        return;
                    }
                    LOG.atError().log("Can't delete temporary encryption file: {}", this.fileOut);
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            throw new EncryptedDocumentException(e);
        }
    }

    public abstract void calculateChecksum(File file, int i) throws GeneralSecurityException, IOException;

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.isClosed) {
            LOG.atDebug().log("ChunkedCipherOutputStream was already closed - ignoring");
            return;
        }
        this.isClosed = true;
        try {
            try {
                writeChunk(false);
                super.close();
                File file = this.fileOut;
                if (file != null) {
                    int length = (int) (file.length() + 8);
                    calculateChecksum(this.fileOut, (int) this.pos);
                    this.dir.createDocument(Decryptor.DEFAULT_POIFS_ENTRY, length, new POIFSWriterListener() { // from class: com.sunia.HTREnginev2.mtd
                        @Override // org.apache.poi.poifs.filesystem.POIFSWriterListener
                        public final void processPOIFSWriterEvent(POIFSWriterEvent pOIFSWriterEvent) {
                            ChunkedCipherOutputStream.this.processPOIFSWriterEvent(pOIFSWriterEvent);
                        }
                    });
                    createEncryptionInfoEntry(this.dir, this.fileOut);
                }
            } catch (GeneralSecurityException e) {
                throw new IOException(e);
            }
        } finally {
            File file2 = this.fileOut;
            if (file2 != null) {
                file2.delete();
            }
        }
    }

    public abstract void createEncryptionInfoEntry(DirectoryNode directoryNode, File file) throws IOException, GeneralSecurityException;

    public byte[] getChunk() {
        return this.chunk;
    }

    public int getChunkMask() {
        return this.chunk.length - 1;
    }

    public SparseBitSet getPlainByteFlags() {
        return this.plainByteFlags;
    }

    public long getPos() {
        return this.pos;
    }

    public long getTotalPos() {
        return this.totalPos;
    }

    public final Cipher initCipherForBlock(int i, boolean z) throws IOException, GeneralSecurityException {
        return initCipherForBlock(this.cipher, i, z);
    }

    public abstract Cipher initCipherForBlock(Cipher cipher, int i, boolean z) throws IOException, GeneralSecurityException;

    @Internal
    public Cipher initCipherForBlockNoFlush(Cipher cipher, int i, boolean z) throws IOException, GeneralSecurityException {
        return initCipherForBlock(this.cipher, i, z);
    }

    public int invokeCipher(int i, boolean z) throws GeneralSecurityException, IOException {
        int update;
        boolean z2;
        byte[] bArr = this.plainByteFlags.isEmpty() ? null : (byte[]) this.chunk.clone();
        if (z) {
            Cipher cipher = this.cipher;
            byte[] bArr2 = this.chunk;
            update = cipher.doFinal(bArr2, 0, i, bArr2);
        } else {
            Cipher cipher2 = this.cipher;
            byte[] bArr3 = this.chunk;
            update = cipher2.update(bArr3, 0, i, bArr3);
        }
        if (z && "IBMJCE".equals(this.cipher.getProvider().getName()) && "RC4".equals(this.cipher.getAlgorithm())) {
            int i2 = (int) (this.pos >> this.chunkBits);
            if (i == 0) {
                i2--;
                i = this.chunk.length;
                z2 = false;
            } else {
                z2 = true;
            }
            this.cipher = initCipherForBlockNoFlush(this.cipher, i2, z2);
        }
        if (bArr != null) {
            int nextSetBit = this.plainByteFlags.nextSetBit(0);
            while (nextSetBit >= 0 && nextSetBit < i) {
                this.chunk[nextSetBit] = bArr[nextSetBit];
                nextSetBit = this.plainByteFlags.nextSetBit(nextSetBit + 1);
            }
        }
        return update;
    }

    public void setNextRecordSize(int i, boolean z) {
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    public void writeChunk(boolean z) throws IOException {
        boolean z2;
        long j = this.pos;
        if (j == 0 || this.totalPos == this.written) {
            return;
        }
        int chunkMask = (int) (j & getChunkMask());
        long j2 = this.pos;
        int i = (int) (j2 >> this.chunkBits);
        boolean z3 = true;
        if (chunkMask == 0) {
            i--;
            chunkMask = this.chunk.length;
            z2 = false;
        } else {
            z2 = true;
        }
        try {
            this.pos = 0L;
            if (this.chunkSize != -1) {
                this.cipher = initCipherForBlock(this.cipher, i, z2);
                this.pos = j2;
            } else if (z) {
                z3 = false;
            }
            int invokeCipher = invokeCipher(chunkMask, z3);
            ((FilterOutputStream) this).out.write(this.chunk, 0, invokeCipher);
            this.plainByteFlags.clear();
            this.written += invokeCipher;
        } catch (GeneralSecurityException e) {
            throw new IOException("can't re-/initialize cipher", e);
        }
    }

    public void writePlain(byte[] bArr, int i, int i2) throws IOException {
        write(bArr, i, i2, true);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        write(bArr, i, i2, false);
    }

    public void write(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (i2 == 0) {
            return;
        }
        if (i2 >= 0 && bArr.length >= i + i2) {
            int chunkMask = getChunkMask();
            while (i2 > 0) {
                long j = chunkMask;
                int i3 = (int) (this.pos & j);
                int min = Math.min(this.chunk.length - i3, i2);
                System.arraycopy(bArr, i, this.chunk, i3, min);
                if (z) {
                    this.plainByteFlags.set(i3, i3 + min);
                }
                long j2 = min;
                long j3 = this.pos + j2;
                this.pos = j3;
                this.totalPos += j2;
                i += min;
                i2 -= min;
                if ((j3 & j) == 0) {
                    writeChunk(i2 > 0);
                }
            }
            return;
        }
        throw new IOException("not enough bytes in your input buffer");
    }

    public ChunkedCipherOutputStream(OutputStream outputStream, int i) throws IOException, GeneralSecurityException {
        super(outputStream);
        this.chunkSize = i;
        i = i == -1 ? 4096 : i;
        this.chunk = IOUtils.safelyAllocate(i, CryptoFunctions.MAX_RECORD_LENGTH);
        this.plainByteFlags = new SparseBitSet(i);
        this.chunkBits = Integer.bitCount(i - 1);
        this.fileOut = null;
        this.dir = null;
        this.cipher = initCipherForBlock(null, 0, false);
    }
}
