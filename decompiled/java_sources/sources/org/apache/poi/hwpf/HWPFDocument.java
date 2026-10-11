package org.apache.poi.hwpf;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import org.apache.poi.hpsf.DocumentSummaryInformation;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hwpf.model.BookmarksTables;
import org.apache.poi.hwpf.model.CHPBinTable;
import org.apache.poi.hwpf.model.ComplexFileTable;
import org.apache.poi.hwpf.model.DocumentProperties;
import org.apache.poi.hwpf.model.FSPADocumentPart;
import org.apache.poi.hwpf.model.FSPATable;
import org.apache.poi.hwpf.model.FieldsTables;
import org.apache.poi.hwpf.model.FontTable;
import org.apache.poi.hwpf.model.ListTables;
import org.apache.poi.hwpf.model.NoteType;
import org.apache.poi.hwpf.model.NotesTables;
import org.apache.poi.hwpf.model.OfficeArtContent;
import org.apache.poi.hwpf.model.PAPBinTable;
import org.apache.poi.hwpf.model.PicturesTable;
import org.apache.poi.hwpf.model.RevisionMarkAuthorTable;
import org.apache.poi.hwpf.model.SavedByTable;
import org.apache.poi.hwpf.model.SectionTable;
import org.apache.poi.hwpf.model.SinglentonTextPiece;
import org.apache.poi.hwpf.model.StyleSheet;
import org.apache.poi.hwpf.model.SubdocumentType;
import org.apache.poi.hwpf.model.TextPieceTable;
import org.apache.poi.hwpf.model.io.HWPFFileSystem;
import org.apache.poi.hwpf.usermodel.Bookmarks;
import org.apache.poi.hwpf.usermodel.BookmarksImpl;
import org.apache.poi.hwpf.usermodel.Fields;
import org.apache.poi.hwpf.usermodel.FieldsImpl;
import org.apache.poi.hwpf.usermodel.HWPFList;
import org.apache.poi.hwpf.usermodel.Notes;
import org.apache.poi.hwpf.usermodel.NotesImpl;
import org.apache.poi.hwpf.usermodel.OfficeDrawings;
import org.apache.poi.hwpf.usermodel.OfficeDrawingsImpl;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.poifs.crypt.ChunkedCipherOutputStream;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.EncryptionMode;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.crypt.standard.EncryptionRecord;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.EntryUtils;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;

/* loaded from: classes12.dex */
public final class HWPFDocument extends HWPFDocumentCore {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static int MAX_RECORD_LENGTH = 100000;
    static final String PROPERTY_PRESERVE_BIN_TABLES = "org.apache.poi.hwpf.preserveBinTables";
    private static final String PROPERTY_PRESERVE_TEXT_TABLE = "org.apache.poi.hwpf.preserveTextTable";
    private static final String STREAM_DATA = "Data";
    private Bookmarks _bookmarks;
    private BookmarksTables _bookmarksTables;
    private ComplexFileTable _cft;
    private byte[] _dataStream;
    private DocumentProperties _dop;
    private Notes _endnotes;
    private NotesTables _endnotesTables;
    private Fields _fields;
    private FieldsTables _fieldsTables;
    private Notes _footnotes;
    private NotesTables _footnotesTables;
    private FSPATable _fspaHeaders;
    private FSPATable _fspaMain;
    private OfficeDrawingsImpl _officeDrawingsHeaders;
    private OfficeDrawingsImpl _officeDrawingsMain;
    private PicturesTable _pictures;
    private RevisionMarkAuthorTable _rmat;
    private SavedByTable _sbt;
    private byte[] _tableStream;
    private StringBuilder _text;
    private final OfficeArtContent officeArtContent;

    public HWPFDocument(InputStream inputStream) throws IOException {
        this(HWPFDocumentCore.verifyAndBuildPOIFS(inputStream));
    }

    private void encryptBytes(byte[] bArr, int i, OutputStream outputStream) throws IOException {
        try {
            Encryptor encryptor = getEncryptionInfo().getEncryptor();
            encryptor.setChunkSize(512);
            ChunkedCipherOutputStream dataStream = encryptor.getDataStream(outputStream, 0);
            if (i > 0) {
                dataStream.writePlain(bArr, 0, i);
            }
            dataStream.write(bArr, i, bArr.length - i);
            dataStream.close();
        } catch (GeneralSecurityException e) {
            throw new IOException(e);
        }
    }

    private static byte[] fillUp4096(byte[] bArr) {
        if (bArr == null) {
            return new byte[4096];
        }
        if (bArr.length >= 4096) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
        return fillUp4096(byteArrayOutputStream);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public int characterLength() {
        return this._text.length();
    }

    public void delete(int i, int i2) {
        new Range(i, i2 + i, this).delete();
    }

    public Bookmarks getBookmarks() {
        return this._bookmarks;
    }

    public Range getCommentsRange() {
        return getRange(SubdocumentType.ANNOTATION);
    }

    @Internal
    public byte[] getDataStream() {
        return this._dataStream;
    }

    public DocumentProperties getDocProperties() {
        return this._dop;
    }

    public Range getEndnoteRange() {
        return getRange(SubdocumentType.ENDNOTE);
    }

    public Notes getEndnotes() {
        return this._endnotes;
    }

    public Fields getFields() {
        return this._fields;
    }

    public Range getFootnoteRange() {
        return getRange(SubdocumentType.FOOTNOTE);
    }

    public Notes getFootnotes() {
        return this._footnotes;
    }

    public Range getHeaderStoryRange() {
        return getRange(SubdocumentType.HEADER);
    }

    public Range getMainTextboxRange() {
        return getRange(SubdocumentType.TEXTBOX);
    }

    @Internal
    public OfficeArtContent getOfficeArtContent() {
        return this.officeArtContent;
    }

    public OfficeDrawings getOfficeDrawingsHeaders() {
        return this._officeDrawingsHeaders;
    }

    public OfficeDrawings getOfficeDrawingsMain() {
        return this._officeDrawingsMain;
    }

    @Override // org.apache.poi.hwpf.HWPFDocumentCore
    public Range getOverallRange() {
        return new Range(0, this._text.length(), this);
    }

    public PicturesTable getPicturesTable() {
        return this._pictures;
    }

    @Override // org.apache.poi.hwpf.HWPFDocumentCore
    public Range getRange() {
        return getRange(SubdocumentType.MAIN);
    }

    @Internal
    public RevisionMarkAuthorTable getRevisionMarkAuthorTable() {
        return this._rmat;
    }

    @Internal
    public SavedByTable getSavedByTable() {
        return this._sbt;
    }

    @Internal
    public byte[] getTableStream() {
        return this._tableStream;
    }

    @Override // org.apache.poi.hwpf.HWPFDocumentCore
    @Internal
    public StringBuilder getText() {
        return this._text;
    }

    @Override // org.apache.poi.hwpf.HWPFDocumentCore
    @Internal
    public TextPieceTable getTextTable() {
        return this._cft.getTextPieceTable();
    }

    public int registerList(HWPFList hWPFList) {
        if (this._lt == null) {
            this._lt = new ListTables();
        }
        return this._lt.addList(hWPFList.getListData(), hWPFList.getLFO(), hWPFList.getLFOData());
    }

    @Override // org.apache.poi.POIDocument
    public void write() throws IOException {
        validateInPlaceWritePossible();
        write(getDirectory().getFileSystem(), false);
        getDirectory().getFileSystem().writeFilesystem();
    }

    public HWPFDocument(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    private Range getRange(SubdocumentType subdocumentType) {
        int i = 0;
        for (SubdocumentType subdocumentType2 : SubdocumentType.ORDERED) {
            int subdocumentTextStreamLength = getFileInformationBlock().getSubdocumentTextStreamLength(subdocumentType2);
            if (subdocumentType == subdocumentType2) {
                return new Range(i, subdocumentTextStreamLength + i, this);
            }
            i += subdocumentTextStreamLength;
        }
        throw new UnsupportedOperationException("Subdocument type not supported: " + subdocumentType);
    }

    public HWPFDocument(DirectoryNode directoryNode) throws IOException {
        super(directoryNode);
        boolean z;
        NotesTables notesTables = new NotesTables(NoteType.ENDNOTE);
        this._endnotesTables = notesTables;
        this._endnotes = new NotesImpl(notesTables);
        NotesTables notesTables2 = new NotesTables(NoteType.FOOTNOTE);
        this._footnotesTables = notesTables2;
        this._footnotes = new NotesImpl(notesTables2);
        if (this._fib.getFibBase().getNFib() >= 106) {
            String str = this._fib.getFibBase().isFWhichTblStm() ? "1Table" : "0Table";
            if (directoryNode.hasEntry(str)) {
                byte[] documentEntryBytes = getDocumentEntryBytes(str, this._fib.getFibBase().getLKey(), Integer.MAX_VALUE);
                this._tableStream = documentEntryBytes;
                this._fib.fillVariableFields(this._mainStream, documentEntryBytes);
                boolean z2 = false;
                this._dataStream = directoryNode.hasEntry(STREAM_DATA) ? getDocumentEntryBytes(STREAM_DATA, 0, Integer.MAX_VALUE) : new byte[0];
                this._dop = new DocumentProperties(this._tableStream, this._fib.getFcDop(), this._fib.getLcbDop());
                ComplexFileTable complexFileTable = new ComplexFileTable(this._mainStream, this._tableStream, this._fib.getFcClx(), 0);
                this._cft = complexFileTable;
                TextPieceTable textPieceTable = complexFileTable.getTextPieceTable();
                this._cbt = new CHPBinTable(this._mainStream, this._tableStream, this._fib.getFcPlcfbteChpx(), this._fib.getLcbPlcfbteChpx(), textPieceTable);
                this._pbt = new PAPBinTable(this._mainStream, this._tableStream, this._dataStream, this._fib.getFcPlcfbtePapx(), this._fib.getLcbPlcfbtePapx(), textPieceTable);
                this._text = textPieceTable.getText();
                try {
                    z = Boolean.parseBoolean(System.getProperty(PROPERTY_PRESERVE_BIN_TABLES));
                } catch (Exception unused) {
                    z = false;
                }
                if (!z) {
                    this._cbt.rebuild(this._cft);
                    this._pbt.rebuild(this._text, this._cft);
                }
                try {
                    z2 = Boolean.parseBoolean(System.getProperty(PROPERTY_PRESERVE_TEXT_TABLE));
                } catch (Exception unused2) {
                }
                if (!z2) {
                    ComplexFileTable complexFileTable2 = new ComplexFileTable();
                    this._cft = complexFileTable2;
                    textPieceTable = complexFileTable2.getTextPieceTable();
                    SinglentonTextPiece singlentonTextPiece = new SinglentonTextPiece(this._text);
                    textPieceTable.add(singlentonTextPiece);
                    this._text = singlentonTextPiece.getStringBuilder();
                }
                TextPieceTable textPieceTable2 = textPieceTable;
                this._fspaHeaders = new FSPATable(this._tableStream, this._fib, FSPADocumentPart.HEADER);
                this._fspaMain = new FSPATable(this._tableStream, this._fib, FSPADocumentPart.MAIN);
                OfficeArtContent officeArtContent = new OfficeArtContent(this._tableStream, this._fib.getFcDggInfo(), this._fib.getLcbDggInfo());
                this.officeArtContent = officeArtContent;
                this._pictures = new PicturesTable(this, this._dataStream, this._mainStream, this._fspaMain, officeArtContent);
                this._officeDrawingsHeaders = new OfficeDrawingsImpl(this._fspaHeaders, officeArtContent, this._mainStream);
                this._officeDrawingsMain = new OfficeDrawingsImpl(this._fspaMain, officeArtContent, this._mainStream);
                this._st = new SectionTable(this._mainStream, this._tableStream, this._fib.getFcPlcfsed(), this._fib.getLcbPlcfsed(), 0, textPieceTable2, this._fib.getSubdocumentTextStreamLength(SubdocumentType.MAIN));
                this._ss = new StyleSheet(this._tableStream, this._fib.getFcStshf());
                this._ft = new FontTable(this._tableStream, this._fib.getFcSttbfffn(), this._fib.getLcbSttbfffn());
                int fcPlfLst = this._fib.getFcPlfLst();
                if (fcPlfLst >= 0 && this._fib.getLcbPlfLst() != 0) {
                    this._lt = new ListTables(this._tableStream, fcPlfLst, this._fib.getFcPlfLfo(), this._fib.getLcbPlfLfo());
                }
                int fcSttbSavedBy = this._fib.getFcSttbSavedBy();
                int lcbSttbSavedBy = this._fib.getLcbSttbSavedBy();
                if (fcSttbSavedBy != 0 && lcbSttbSavedBy != 0) {
                    this._sbt = new SavedByTable(this._tableStream, fcSttbSavedBy, lcbSttbSavedBy);
                }
                int fcSttbfRMark = this._fib.getFcSttbfRMark();
                int lcbSttbfRMark = this._fib.getLcbSttbfRMark();
                if (fcSttbfRMark != 0 && lcbSttbfRMark != 0) {
                    this._rmat = new RevisionMarkAuthorTable(this._tableStream, fcSttbfRMark, lcbSttbfRMark);
                }
                BookmarksTables bookmarksTables = new BookmarksTables(this._tableStream, this._fib);
                this._bookmarksTables = bookmarksTables;
                this._bookmarks = new BookmarksImpl(bookmarksTables);
                NotesTables notesTables3 = new NotesTables(NoteType.ENDNOTE, this._tableStream, this._fib);
                this._endnotesTables = notesTables3;
                this._endnotes = new NotesImpl(notesTables3);
                NotesTables notesTables4 = new NotesTables(NoteType.FOOTNOTE, this._tableStream, this._fib);
                this._footnotesTables = notesTables4;
                this._footnotes = new NotesImpl(notesTables4);
                FieldsTables fieldsTables = new FieldsTables(this._tableStream, this._fib);
                this._fieldsTables = fieldsTables;
                this._fields = new FieldsImpl(fieldsTables);
                return;
            }
            throw new IllegalStateException("Table Stream '" + str + "' wasn't found - Either the document is corrupt, or is Word95 (or earlier)");
        }
        throw new OldWordFileFormatException("The document is too old - Word 95 or older. Try HWPFOldDocument instead?");
    }

    @Override // org.apache.poi.POIDocument
    public void write(File file) throws IOException {
        POIFSFileSystem create = POIFSFileSystem.create(file);
        write(create, true);
        create.writeFilesystem();
    }

    private static byte[] fillUp4096(ByteArrayOutputStream byteArrayOutputStream) {
        int size = 4096 - byteArrayOutputStream.size();
        if (size > 0) {
            byteArrayOutputStream.write(new byte[size], 0, size);
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.apache.poi.POIDocument
    public void write(OutputStream outputStream) throws IOException {
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem();
        write(pOIFSFileSystem, true);
        pOIFSFileSystem.writeFilesystem(outputStream);
    }

    private void write(POIFSFileSystem pOIFSFileSystem, boolean z) throws IOException {
        int i;
        this._fib.clearOffsetsSizes();
        int size = this._fib.getSize();
        HWPFFileSystem hWPFFileSystem = new HWPFFileSystem();
        ByteArrayOutputStream stream = hWPFFileSystem.getStream("WordDocument");
        ByteArrayOutputStream stream2 = hWPFFileSystem.getStream("1Table");
        stream.write(IOUtils.safelyAllocate(size + (512 - (size % 512)), MAX_RECORD_LENGTH));
        int size2 = stream.size();
        updateEncryptionInfo();
        EncryptionInfo encryptionInfo = getEncryptionInfo();
        if (encryptionInfo != null) {
            byte[] bArr = new byte[1000];
            LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream = new LittleEndianByteArrayOutputStream(bArr, 0);
            littleEndianByteArrayOutputStream.writeShort(encryptionInfo.getVersionMajor());
            littleEndianByteArrayOutputStream.writeShort(encryptionInfo.getVersionMinor());
            if (encryptionInfo.getEncryptionMode() == EncryptionMode.cryptoAPI) {
                littleEndianByteArrayOutputStream.writeInt(encryptionInfo.getEncryptionFlags());
            }
            ((EncryptionRecord) encryptionInfo.getHeader()).write(littleEndianByteArrayOutputStream);
            ((EncryptionRecord) encryptionInfo.getVerifier()).write(littleEndianByteArrayOutputStream);
            stream2.write(bArr, 0, littleEndianByteArrayOutputStream.getWriteIndex());
            i = littleEndianByteArrayOutputStream.getWriteIndex() + 0;
            this._fib.getFibBase().setLKey(i);
        } else {
            i = 0;
        }
        this._fib.setFcStshf(i);
        this._ss.writeTo(stream2);
        this._fib.setLcbStshf(stream2.size() - i);
        int size3 = stream2.size();
        this._fib.setFcClx(size3);
        this._cft.writeTo(stream, stream2);
        this._fib.setLcbClx(stream2.size() - size3);
        int size4 = stream2.size();
        int size5 = stream.size();
        this._fib.setFcDop(size4);
        this._dop.writeTo(stream2);
        this._fib.setLcbDop(stream2.size() - size4);
        int size6 = stream2.size();
        BookmarksTables bookmarksTables = this._bookmarksTables;
        if (bookmarksTables != null) {
            bookmarksTables.writePlcfBkmkf(this._fib, stream2);
            size6 = stream2.size();
        }
        BookmarksTables bookmarksTables2 = this._bookmarksTables;
        if (bookmarksTables2 != null) {
            bookmarksTables2.writePlcfBkmkl(this._fib, stream2);
            size6 = stream2.size();
        }
        this._fib.setFcPlcfbteChpx(size6);
        this._cbt.writeTo(stream, stream2, size2, this._cft.getTextPieceTable());
        this._fib.setLcbPlcfbteChpx(stream2.size() - size6);
        int size7 = stream2.size();
        this._fib.setFcPlcfbtePapx(size7);
        this._pbt.writeTo(stream, stream2, this._cft.getTextPieceTable());
        this._fib.setLcbPlcfbtePapx(stream2.size() - size7);
        stream2.size();
        this._endnotesTables.writeRef(this._fib, stream2);
        this._endnotesTables.writeTxt(this._fib, stream2);
        stream2.size();
        FieldsTables fieldsTables = this._fieldsTables;
        if (fieldsTables != null) {
            fieldsTables.write(this._fib, stream2);
            stream2.size();
        }
        this._footnotesTables.writeRef(this._fib, stream2);
        this._footnotesTables.writeTxt(this._fib, stream2);
        int size8 = stream2.size();
        this._fib.setFcPlcfsed(size8);
        this._st.writeTo(stream, stream2);
        this._fib.setLcbPlcfsed(stream2.size() - size8);
        int size9 = stream2.size();
        ListTables listTables = this._lt;
        if (listTables != null) {
            listTables.writeListDataTo(this._fib, stream2);
            stream2.size();
            this._lt.writeListOverridesTo(this._fib, stream2);
            size9 = stream2.size();
        }
        BookmarksTables bookmarksTables3 = this._bookmarksTables;
        if (bookmarksTables3 != null) {
            bookmarksTables3.writeSttbfBkmk(this._fib, stream2);
            size9 = stream2.size();
        }
        if (this._sbt != null) {
            this._fib.setFcSttbSavedBy(size9);
            this._sbt.writeTo(stream2);
            this._fib.setLcbSttbSavedBy(stream2.size() - size9);
            size9 = stream2.size();
        }
        if (this._rmat != null) {
            this._fib.setFcSttbfRMark(size9);
            this._rmat.writeTo(stream2);
            this._fib.setLcbSttbfRMark(stream2.size() - size9);
            size9 = stream2.size();
        }
        this._fib.setFcSttbfffn(size9);
        this._ft.writeTo(stream2);
        this._fib.setLcbSttbfffn(stream2.size() - size9);
        stream2.size();
        this._fib.getFibBase().setFcMin(size2);
        this._fib.getFibBase().setFcMac(size5);
        this._fib.setCbMac(stream.size());
        byte[] fillUp4096 = fillUp4096(stream);
        this._fib.getFibBase().setFWhichTblStm(true);
        this._fib.writeTo(fillUp4096, stream2);
        byte[] fillUp40962 = fillUp4096(stream2);
        byte[] fillUp40963 = fillUp4096(this._dataStream);
        if (encryptionInfo == null) {
            write(pOIFSFileSystem, fillUp4096, "WordDocument");
            write(pOIFSFileSystem, fillUp40962, "1Table");
            write(pOIFSFileSystem, fillUp40963, STREAM_DATA);
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(100000);
            encryptBytes(fillUp4096, 68, byteArrayOutputStream);
            write(pOIFSFileSystem, byteArrayOutputStream.toByteArray(), "WordDocument");
            byteArrayOutputStream.reset();
            encryptBytes(fillUp40962, this._fib.getFibBase().getLKey(), byteArrayOutputStream);
            write(pOIFSFileSystem, byteArrayOutputStream.toByteArray(), "1Table");
            byteArrayOutputStream.reset();
            encryptBytes(fillUp40963, 0, byteArrayOutputStream);
            write(pOIFSFileSystem, byteArrayOutputStream.toByteArray(), STREAM_DATA);
            byteArrayOutputStream.reset();
        }
        writeProperties(pOIFSFileSystem);
        if (z && encryptionInfo == null) {
            DirectoryNode root = pOIFSFileSystem.getRoot();
            this._objectPool.writeTo(root);
            Iterator<Entry> it2 = getDirectory().iterator();
            while (it2.hasNext()) {
                Entry next = it2.next();
                String name = next.getName();
                if (!"WordDocument".equals(name) && !"0Table".equals(name) && !"1Table".equals(name) && !STREAM_DATA.equals(name) && !"ObjectPool".equals(name) && !SummaryInformation.DEFAULT_STREAM_NAME.equals(name) && !DocumentSummaryInformation.DEFAULT_STREAM_NAME.equals(name)) {
                    EntryUtils.copyNodeRecursively(next, root);
                }
            }
        }
        replaceDirectory(pOIFSFileSystem.getRoot());
        this._tableStream = stream2.toByteArray();
        this._dataStream = fillUp40963;
    }

    private static void write(POIFSFileSystem pOIFSFileSystem, byte[] bArr, String str) throws IOException {
        pOIFSFileSystem.createOrUpdateDocument(new ByteArrayInputStream(bArr), str);
    }
}
