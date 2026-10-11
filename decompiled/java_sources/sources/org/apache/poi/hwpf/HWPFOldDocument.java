package org.apache.poi.hwpf;

import com.onyx.galaxy.note.DataBinderMapperImpl;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.hwpf.model.FontTable;
import org.apache.poi.hwpf.model.OldCHPBinTable;
import org.apache.poi.hwpf.model.OldComplexFileTable;
import org.apache.poi.hwpf.model.OldFfn;
import org.apache.poi.hwpf.model.OldFontTable;
import org.apache.poi.hwpf.model.OldPAPBinTable;
import org.apache.poi.hwpf.model.OldSectionTable;
import org.apache.poi.hwpf.model.OldTextPieceTable;
import org.apache.poi.hwpf.model.PieceDescriptor;
import org.apache.poi.hwpf.model.TextPiece;
import org.apache.poi.hwpf.model.TextPieceTable;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.hwpf.util.DoubleByteUtil;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.NotImplemented;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class HWPFOldDocument extends HWPFDocumentCore {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 10000000;
    private StringBuilder _text;
    private final OldFontTable fontTable;
    private final Charset guessedCharset;
    private OldTextPieceTable tpt;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HWPFOldDocument.class);
    private static int MAX_RECORD_LENGTH = 10000000;
    private static final Charset DEFAULT_CHARSET = StringUtil.WIN_1252;

    public HWPFOldDocument(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    private TextPiece buildTextPiece(Charset charset) throws IllegalStateException {
        PieceDescriptor pieceDescriptor = new PieceDescriptor(new byte[]{0, 0, 0, 0, 0, Byte.MAX_VALUE, 0, 0}, 0, charset);
        pieceDescriptor.setFilePosition(this._fib.getFibBase().getFcMin());
        this.tpt = new OldTextPieceTable();
        byte[] safelyClone = IOUtils.safelyClone(this._mainStream, this._fib.getFibBase().getFcMin(), this._fib.getFibBase().getFcMac() - this._fib.getFibBase().getFcMin(), MAX_RECORD_LENGTH);
        int length = safelyClone.length;
        if (DoubleByteUtil.DOUBLE_BYTE_CHARSETS.contains(charset)) {
            length /= 2;
        }
        return new TextPiece(0, length, safelyClone, pieceDescriptor);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    private Charset guessCodePage(OldFontTable oldFontTable) {
        for (OldFfn oldFfn : oldFontTable.getFontNames()) {
            FontCharset valueOf = FontCharset.valueOf(oldFfn.getChs() & 255);
            if (valueOf != null && valueOf != FontCharset.ANSI && valueOf != FontCharset.DEFAULT && valueOf != FontCharset.SYMBOL) {
                return valueOf.getCharset();
            }
        }
        LOG.atWarn().log("Couldn't find a defined charset; backing off to cp1252");
        return DEFAULT_CHARSET;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.hwpf.HWPFDocumentCore
    @NotImplemented
    public FontTable getFontTable() {
        throw new UnsupportedOperationException("Use getOldFontTable instead.");
    }

    public Charset getGuessedCharset() {
        return this.guessedCharset;
    }

    public OldFontTable getOldFontTable() {
        return this.fontTable;
    }

    @Override // org.apache.poi.hwpf.HWPFDocumentCore
    public Range getOverallRange() {
        return new Range(0, this._fib.getFibBase().getFcMac() - this._fib.getFibBase().getFcMin(), this);
    }

    @Override // org.apache.poi.hwpf.HWPFDocumentCore
    public Range getRange() {
        return getOverallRange();
    }

    @Override // org.apache.poi.hwpf.HWPFDocumentCore
    public StringBuilder getText() {
        return this._text;
    }

    @Override // org.apache.poi.hwpf.HWPFDocumentCore
    public TextPieceTable getTextTable() {
        return this.tpt;
    }

    @Override // org.apache.poi.POIDocument
    public void write() throws IOException {
        throw new IllegalStateException("Writing is not available for the older file formats");
    }

    public HWPFOldDocument(DirectoryNode directoryNode) throws IOException {
        super(directoryNode);
        TextPiece buildTextPiece;
        OldComplexFileTable oldComplexFileTable;
        boolean z;
        int i = LittleEndian.getInt(this._mainStream, 136);
        int i2 = LittleEndian.getInt(this._mainStream, 140);
        int i3 = LittleEndian.getInt(this._mainStream, 184);
        int i4 = LittleEndian.getInt(this._mainStream, 188);
        int i5 = LittleEndian.getInt(this._mainStream, 192);
        int i6 = LittleEndian.getInt(this._mainStream, 196);
        OldFontTable oldFontTable = new OldFontTable(this._mainStream, LittleEndian.getInt(this._mainStream, 208), LittleEndian.getInt(this._mainStream, 212));
        this.fontTable = oldFontTable;
        Charset guessCodePage = guessCodePage(oldFontTable);
        this.guessedCharset = guessCodePage;
        int i7 = LittleEndian.getInt(this._mainStream, DataBinderMapperImpl.f53082N5);
        if (this._fib.getFibBase().isFComplex()) {
            byte[] bArr = this._mainStream;
            oldComplexFileTable = new OldComplexFileTable(bArr, bArr, i7, this._fib.getFibBase().getFcMin(), guessCodePage);
            this.tpt = (OldTextPieceTable) oldComplexFileTable.getTextPieceTable();
        } else {
            try {
                buildTextPiece = buildTextPiece(guessCodePage);
            } catch (IllegalStateException unused) {
                buildTextPiece = buildTextPiece(StringUtil.WIN_1252);
                LOG.atWarn().log("Error with {}. Backing off to Windows-1252", this.guessedCharset);
            }
            this.tpt.add(buildTextPiece);
            oldComplexFileTable = null;
        }
        this._text = this.tpt.getText();
        this._cbt = new OldCHPBinTable(this._mainStream, i3, i4, this._fib.getFibBase().getFcMin(), this.tpt);
        this._pbt = new OldPAPBinTable(this._mainStream, i5, i6, this._fib.getFibBase().getFcMin(), this.tpt);
        this._st = new OldSectionTable(this._mainStream, i, i2, this._fib.getFibBase().getFcMin(), this.tpt);
        try {
            z = Boolean.parseBoolean(System.getProperty("org.apache.poi.hwpf.preserveBinTables"));
        } catch (Exception unused2) {
            z = false;
        }
        if (z) {
            return;
        }
        this._cbt.rebuild(oldComplexFileTable);
        this._pbt.rebuild(this._text, oldComplexFileTable);
    }

    @Override // org.apache.poi.POIDocument
    public void write(File file) throws IOException {
        throw new IllegalStateException("Writing is not available for the older file formats");
    }

    @Override // org.apache.poi.POIDocument
    public void write(OutputStream outputStream) throws IOException {
        throw new IllegalStateException("Writing is not available for the older file formats");
    }
}
