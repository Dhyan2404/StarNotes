package org.apache.poi.hwpf;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.security.GeneralSecurityException;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.POIDocument;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.hwpf.model.CHPBinTable;
import org.apache.poi.hwpf.model.FibBase;
import org.apache.poi.hwpf.model.FileInformationBlock;
import org.apache.poi.hwpf.model.FontTable;
import org.apache.poi.hwpf.model.ListTables;
import org.apache.poi.hwpf.model.PAPBinTable;
import org.apache.poi.hwpf.model.SectionTable;
import org.apache.poi.hwpf.model.StyleSheet;
import org.apache.poi.hwpf.model.TextPieceTable;
import org.apache.poi.hwpf.usermodel.ObjectPoolImpl;
import org.apache.poi.hwpf.usermodel.ObjectsPool;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.poifs.crypt.ChunkedCipherInputStream;
import org.apache.poi.poifs.crypt.Decryptor;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.EncryptionMode;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentEntry;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianByteArrayInputStream;

/* loaded from: classes12.dex */
public abstract class HWPFDocumentCore extends POIDocument {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 500000000;
    protected static final int FIB_BASE_LEN = 68;
    private static int MAX_RECORD_LENGTH = 500000000;
    protected static final int RC4_REKEYING_INTERVAL = 512;
    protected static final String STREAM_OBJECT_POOL = "ObjectPool";
    protected static final String STREAM_TABLE_0 = "0Table";
    protected static final String STREAM_TABLE_1 = "1Table";
    protected static final String STREAM_WORD_DOCUMENT = "WordDocument";
    protected CHPBinTable _cbt;
    private EncryptionInfo _encryptionInfo;
    protected FileInformationBlock _fib;
    protected FontTable _ft;
    protected ListTables _lt;
    protected byte[] _mainStream;
    protected ObjectPoolImpl _objectPool;
    protected PAPBinTable _pbt;
    protected StyleSheet _ss;
    protected SectionTable _st;

    public HWPFDocumentCore() {
        super((DirectoryNode) null);
    }

    private InputStream getDecryptedStream(DocumentInputStream documentInputStream, int i, int i2) throws IOException, GeneralSecurityException {
        ChunkedCipherInputStream chunkedCipherInputStream = (ChunkedCipherInputStream) getEncryptionInfo().getDecryptor().getDataStream(documentInputStream, i, 0);
        byte[] bArr = new byte[0];
        if (i2 > 0) {
            bArr = IOUtils.safelyAllocate(i2, MAX_RECORD_LENGTH);
            chunkedCipherInputStream.readPlain(bArr, 0, i2);
        }
        return new SequenceInputStream(new ByteArrayInputStream(bArr), chunkedCipherInputStream);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public static POIFSFileSystem verifyAndBuildPOIFS(InputStream inputStream) throws IOException {
        InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(inputStream);
        FileMagic valueOf = FileMagic.valueOf(prepareToCheckMagic);
        if (valueOf == FileMagic.OLE2) {
            return new POIFSFileSystem(prepareToCheckMagic);
        }
        throw new IllegalArgumentException("The document is really a " + valueOf + " file");
    }

    public CHPBinTable getCharacterTable() {
        return this._cbt;
    }

    public byte[] getDocumentEntryBytes(String str, int i, int i2) throws IOException {
        InputStream decryptedStream;
        DirectoryNode directory = getDirectory();
        DocumentEntry documentEntry = (DocumentEntry) directory.getEntry(str);
        int size = documentEntry.getSize();
        boolean z = i > -1 && getEncryptionInfo() != null;
        try {
            DocumentInputStream createDocumentInputStream = directory.createDocumentInputStream(documentEntry);
            if (z) {
                try {
                    decryptedStream = getDecryptedStream(createDocumentInputStream, size, i);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                decryptedStream = createDocumentInputStream;
            }
            try {
                byte[] byteArray = IOUtils.toByteArray(decryptedStream, Math.min(size, i2), MAX_RECORD_LENGTH);
                if (decryptedStream != null) {
                    decryptedStream.close();
                }
                if (createDocumentInputStream != null) {
                    createDocumentInputStream.close();
                }
                return byteArray;
            } finally {
            }
        } catch (GeneralSecurityException e) {
            throw new IOException("Unable to decrypt data for entry: " + str, e);
        }
    }

    public String getDocumentText() {
        return getText().toString();
    }

    @Override // org.apache.poi.POIDocument
    public EncryptionInfo getEncryptionInfo() throws IOException {
        FibBase fibBase;
        EncryptionInfo encryptionInfo = this._encryptionInfo;
        if (encryptionInfo != null) {
            return encryptionInfo;
        }
        FileInformationBlock fileInformationBlock = this._fib;
        if (fileInformationBlock == null || fileInformationBlock.getFibBase() == null) {
            byte[] bArr = this._mainStream;
            if (bArr == null) {
                bArr = getDocumentEntryBytes(STREAM_WORD_DOCUMENT, -1, 68);
            }
            fibBase = new FibBase(bArr, 0);
        } else {
            fibBase = this._fib.getFibBase();
        }
        if (!fibBase.isFEncrypted()) {
            return null;
        }
        EncryptionInfo encryptionInfo2 = new EncryptionInfo(new LittleEndianByteArrayInputStream(getDocumentEntryBytes(fibBase.isFWhichTblStm() ? STREAM_TABLE_1 : STREAM_TABLE_0, -1, fibBase.getLKey())), fibBase.isFObfuscated() ? EncryptionMode.xor : null);
        Decryptor decryptor = encryptionInfo2.getDecryptor();
        decryptor.setChunkSize(512);
        try {
            String currentUserPassword = Biff8EncryptionKey.getCurrentUserPassword();
            if (currentUserPassword == null) {
                currentUserPassword = Decryptor.DEFAULT_PASSWORD;
            }
            if (!decryptor.verifyPassword(currentUserPassword)) {
                throw new EncryptedDocumentException("document is encrypted, password is invalid - use Biff8EncryptionKey.setCurrentUserPasswort() to set password before opening");
            }
            this._encryptionInfo = encryptionInfo2;
            return encryptionInfo2;
        } catch (GeneralSecurityException e) {
            throw new IOException(e.getMessage(), e);
        }
    }

    public FileInformationBlock getFileInformationBlock() {
        return this._fib;
    }

    public FontTable getFontTable() {
        return this._ft;
    }

    public ListTables getListTables() {
        return this._lt;
    }

    @Internal
    public byte[] getMainStream() {
        return this._mainStream;
    }

    public ObjectsPool getObjectsPool() {
        return this._objectPool;
    }

    public abstract Range getOverallRange();

    public PAPBinTable getParagraphTable() {
        return this._pbt;
    }

    public abstract Range getRange();

    public SectionTable getSectionTable() {
        return this._st;
    }

    public StyleSheet getStyleSheet() {
        return this._ss;
    }

    @Internal
    public abstract StringBuilder getText();

    public abstract TextPieceTable getTextTable();

    public void updateEncryptionInfo() {
        readProperties();
        String currentUserPassword = Biff8EncryptionKey.getCurrentUserPassword();
        FibBase fibBase = this._fib.getFibBase();
        if (currentUserPassword == null) {
            fibBase.setLKey(0);
            fibBase.setFEncrypted(false);
            fibBase.setFObfuscated(false);
            this._encryptionInfo = null;
            return;
        }
        if (this._encryptionInfo == null) {
            this._encryptionInfo = new EncryptionInfo(EncryptionMode.cryptoAPI);
            fibBase.setFEncrypted(true);
            fibBase.setFObfuscated(false);
        }
        Encryptor encryptor = this._encryptionInfo.getEncryptor();
        byte[] salt = this._encryptionInfo.getVerifier().getSalt();
        if (salt == null) {
            encryptor.confirmPassword(currentUserPassword);
        } else {
            encryptor.confirmPassword(currentUserPassword, null, null, this._encryptionInfo.getDecryptor().getVerifier(), salt, null);
        }
    }

    public HWPFDocumentCore(InputStream inputStream) throws IOException {
        this(verifyAndBuildPOIFS(inputStream));
    }

    public HWPFDocumentCore(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    public HWPFDocumentCore(DirectoryNode directoryNode) throws IOException {
        super(directoryNode);
        this._mainStream = getDocumentEntryBytes(STREAM_WORD_DOCUMENT, 68, Integer.MAX_VALUE);
        this._fib = new FileInformationBlock(this._mainStream);
        this._objectPool = new ObjectPoolImpl(directoryNode.hasEntry(STREAM_OBJECT_POOL) ? (DirectoryEntry) directoryNode.getEntry(STREAM_OBJECT_POOL) : null);
    }
}
