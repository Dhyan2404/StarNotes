package org.apache.poi.hslf.record;

import com.alibaba.fastjson2.JSONB;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.codec.net.QCodec;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hslf.exceptions.CorruptPowerPointFileException;
import org.apache.poi.hslf.exceptions.OldPowerPointFormatException;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentEntry;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class CurrentUserAtom {
    private byte[] _contents;
    private long currentEditOffset;
    private int docFinalVersion;
    private byte docMajorNo;
    private byte docMinorNo;
    private boolean isEncrypted;
    private String lastEditUser;
    private long releaseVersion;
    private static final Logger LOG = LogManager.getLogger((Class<?>) CurrentUserAtom.class);
    private static final byte[] atomHeader = {0, 0, -10, 15};
    private static final byte[] headerToken = {QCodec.f104875e, -64, JSONB.Constants.BC_BINARY, -29};
    private static final byte[] encHeaderToken = {-33, JSONB.Constants.BC_INT64_SHORT_ZERO, -47, -13};

    public CurrentUserAtom() {
        this._contents = new byte[0];
        this.docFinalVersion = 1012;
        this.docMajorNo = (byte) 3;
        this.docMinorNo = (byte) 0;
        this.releaseVersion = 8L;
        this.currentEditOffset = 0L;
        this.lastEditUser = POIXMLDocument.DOCUMENT_CREATOR;
        this.isEncrypted = false;
    }

    private void init() {
        this.isEncrypted = LittleEndian.getInt(encHeaderToken) == LittleEndian.getInt(this._contents, 12);
        this.currentEditOffset = LittleEndian.getUInt(this._contents, 16);
        this.docFinalVersion = LittleEndian.getUShort(this._contents, 22);
        byte[] bArr = this._contents;
        this.docMajorNo = bArr[24];
        this.docMinorNo = bArr[25];
        long uShort = LittleEndian.getUShort(bArr, 20);
        if (uShort > 512) {
            LOG.atWarn().log("Invalid username length {} found, treating as if there was no username set", Unbox.box(uShort));
            uShort = 0;
        }
        byte[] bArr2 = this._contents;
        int i = (int) uShort;
        int i2 = i + 28;
        int i3 = i2 + 4;
        if (bArr2.length >= i3) {
            this.releaseVersion = LittleEndian.getUInt(bArr2, i2);
        } else {
            this.releaseVersion = 0L;
        }
        byte[] bArr3 = this._contents;
        if (bArr3.length >= i3 + (uShort * 2)) {
            this.lastEditUser = StringUtil.getFromUnicodeLE(bArr3, i3, i);
        } else {
            this.lastEditUser = StringUtil.getFromCompressedUnicode(bArr3, 28, i);
        }
    }

    public long getCurrentEditOffset() {
        return this.currentEditOffset;
    }

    public int getDocFinalVersion() {
        return this.docFinalVersion;
    }

    public byte getDocMajorNo() {
        return this.docMajorNo;
    }

    public byte getDocMinorNo() {
        return this.docMinorNo;
    }

    public String getLastEditUsername() {
        return this.lastEditUser;
    }

    public long getReleaseVersion() {
        return this.releaseVersion;
    }

    public boolean isEncrypted() {
        return this.isEncrypted;
    }

    public void setCurrentEditOffset(long j) {
        this.currentEditOffset = j;
    }

    public void setEncrypted(boolean z) {
        this.isEncrypted = z;
    }

    public void setLastEditUsername(String str) {
        this.lastEditUser = str;
    }

    public void setReleaseVersion(long j) {
        this.releaseVersion = j;
    }

    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] safelyAllocate = IOUtils.safelyAllocate((this.lastEditUser.length() * 3) + 32, RecordAtom.getMaxRecordLength());
        this._contents = safelyAllocate;
        System.arraycopy(atomHeader, 0, safelyAllocate, 0, 4);
        LittleEndian.putInt(this._contents, 4, this.lastEditUser.length() + 24);
        LittleEndian.putInt(this._contents, 8, 20);
        System.arraycopy(this.isEncrypted ? encHeaderToken : headerToken, 0, this._contents, 12, 4);
        LittleEndian.putInt(this._contents, 16, (int) this.currentEditOffset);
        byte[] safelyAllocate2 = IOUtils.safelyAllocate(this.lastEditUser.length(), RecordAtom.getMaxRecordLength());
        StringUtil.putCompressedUnicode(this.lastEditUser, safelyAllocate2, 0);
        LittleEndian.putShort(this._contents, 20, (short) safelyAllocate2.length);
        LittleEndian.putShort(this._contents, 22, (short) this.docFinalVersion);
        byte[] bArr = this._contents;
        bArr[24] = this.docMajorNo;
        bArr[25] = this.docMinorNo;
        bArr[26] = 0;
        bArr[27] = 0;
        System.arraycopy(safelyAllocate2, 0, bArr, 28, safelyAllocate2.length);
        LittleEndian.putInt(this._contents, safelyAllocate2.length + 28, (int) this.releaseVersion);
        byte[] safelyAllocate3 = IOUtils.safelyAllocate(this.lastEditUser.length() * 2, RecordAtom.getMaxRecordLength());
        StringUtil.putUnicodeLE(this.lastEditUser, safelyAllocate3, 0);
        System.arraycopy(safelyAllocate3, 0, this._contents, safelyAllocate2.length + 28 + 4, safelyAllocate3.length);
        outputStream.write(this._contents);
    }

    public void writeToFS(POIFSFileSystem pOIFSFileSystem) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            writeOut(unsynchronizedByteArrayOutputStream);
            InputStream inputStream = unsynchronizedByteArrayOutputStream.toInputStream();
            try {
                pOIFSFileSystem.createOrUpdateDocument(inputStream, "Current User");
                if (inputStream != null) {
                    inputStream.close();
                }
                unsynchronizedByteArrayOutputStream.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public CurrentUserAtom(DirectoryNode directoryNode) throws IOException {
        DocumentEntry documentEntry = (DocumentEntry) directoryNode.getEntry("Current User");
        if (documentEntry.getSize() <= 131072) {
            DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream("Current User");
            try {
                this._contents = IOUtils.toByteArray(createDocumentInputStream, documentEntry.getSize(), RecordAtom.getMaxRecordLength());
                if (createDocumentInputStream != null) {
                    createDocumentInputStream.close();
                }
                if (this._contents.length < 28) {
                    boolean hasEntry = directoryNode.hasEntry(HSLFSlideShow.PP95_DOCUMENT);
                    if (!hasEntry) {
                        byte[] bArr = this._contents;
                        if (bArr.length >= 4) {
                            hasEntry = LittleEndian.getInt(bArr) + 4 == this._contents.length;
                        }
                    }
                    if (hasEntry) {
                        throw new OldPowerPointFormatException("Based on the Current User stream, you seem to have supplied a PowerPoint95 file, which isn't supported");
                    }
                    throw new CorruptPowerPointFileException("The Current User stream must be at least 28 bytes long, but was only " + this._contents.length);
                }
                init();
                return;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (createDocumentInputStream != null) {
                        try {
                            createDocumentInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        throw new CorruptPowerPointFileException("The Current User stream is implausably long. It's normally 28-200 bytes long, but was " + documentEntry.getSize() + " bytes");
    }
}
