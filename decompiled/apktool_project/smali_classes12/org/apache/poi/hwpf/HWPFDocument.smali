.class public final Lorg/apache/poi/hwpf/HWPFDocument;
.super Lorg/apache/poi/hwpf/HWPFDocumentCore;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static MAX_RECORD_LENGTH:I = 0x186a0

.field static final PROPERTY_PRESERVE_BIN_TABLES:Ljava/lang/String; = "org.apache.poi.hwpf.preserveBinTables"

.field private static final PROPERTY_PRESERVE_TEXT_TABLE:Ljava/lang/String; = "org.apache.poi.hwpf.preserveTextTable"

.field private static final STREAM_DATA:Ljava/lang/String; = "Data"


# instance fields
.field private _bookmarks:Lorg/apache/poi/hwpf/usermodel/Bookmarks;

.field private _bookmarksTables:Lorg/apache/poi/hwpf/model/BookmarksTables;

.field private _cft:Lorg/apache/poi/hwpf/model/ComplexFileTable;

.field private _dataStream:[B

.field private _dop:Lorg/apache/poi/hwpf/model/DocumentProperties;

.field private _endnotes:Lorg/apache/poi/hwpf/usermodel/Notes;

.field private _endnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

.field private _fields:Lorg/apache/poi/hwpf/usermodel/Fields;

.field private _fieldsTables:Lorg/apache/poi/hwpf/model/FieldsTables;

.field private _footnotes:Lorg/apache/poi/hwpf/usermodel/Notes;

.field private _footnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

.field private _fspaHeaders:Lorg/apache/poi/hwpf/model/FSPATable;

.field private _fspaMain:Lorg/apache/poi/hwpf/model/FSPATable;

.field private _officeDrawingsHeaders:Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;

.field private _officeDrawingsMain:Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;

.field private _pictures:Lorg/apache/poi/hwpf/model/PicturesTable;

.field private _rmat:Lorg/apache/poi/hwpf/model/RevisionMarkAuthorTable;

.field private _sbt:Lorg/apache/poi/hwpf/model/SavedByTable;

.field private _tableStream:[B

.field private _text:Ljava/lang/StringBuilder;

.field private final officeArtContent:Lorg/apache/poi/hwpf/model/OfficeArtContent;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->verifyAndBuildPOIFS(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/HWPFDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 4
    new-instance v0, Lorg/apache/poi/hwpf/model/NotesTables;

    sget-object v1, Lorg/apache/poi/hwpf/model/NoteType;->ENDNOTE:Lorg/apache/poi/hwpf/model/NoteType;

    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/model/NotesTables;-><init>(Lorg/apache/poi/hwpf/model/NoteType;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_endnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

    .line 5
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/NotesImpl;

    invoke-direct {v1, v0}, Lorg/apache/poi/hwpf/usermodel/NotesImpl;-><init>(Lorg/apache/poi/hwpf/model/NotesTables;)V

    iput-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_endnotes:Lorg/apache/poi/hwpf/usermodel/Notes;

    .line 6
    new-instance v0, Lorg/apache/poi/hwpf/model/NotesTables;

    sget-object v1, Lorg/apache/poi/hwpf/model/NoteType;->FOOTNOTE:Lorg/apache/poi/hwpf/model/NoteType;

    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/model/NotesTables;-><init>(Lorg/apache/poi/hwpf/model/NoteType;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_footnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

    .line 7
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/NotesImpl;

    invoke-direct {v1, v0}, Lorg/apache/poi/hwpf/usermodel/NotesImpl;-><init>(Lorg/apache/poi/hwpf/model/NotesTables;)V

    iput-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_footnotes:Lorg/apache/poi/hwpf/usermodel/Notes;

    .line 8
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getNFib()I

    move-result v0

    const/16 v1, 0x6a

    if-lt v0, v1, :cond_8

    .line 9
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->isFWhichTblStm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1Table"

    goto :goto_0

    :cond_0
    const-string v0, "0Table"

    .line 10
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 11
    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getLKey()I

    move-result v1

    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getDocumentEntryBytes(Ljava/lang/String;II)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    .line 12
    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    invoke-virtual {v1, v3, v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->fillVariableFields([B[B)V

    const-string v0, "Data"

    .line 13
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getDocumentEntryBytes(Ljava/lang/String;II)[B

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array p1, v1, [B

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_dataStream:[B

    .line 14
    new-instance p1, Lorg/apache/poi/hwpf/model/DocumentProperties;

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcDop()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbDop()I

    move-result v3

    invoke-direct {p1, v0, v2, v3}, Lorg/apache/poi/hwpf/model/DocumentProperties;-><init>([BII)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_dop:Lorg/apache/poi/hwpf/model/DocumentProperties;

    .line 15
    new-instance p1, Lorg/apache/poi/hwpf/model/ComplexFileTable;

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcClx()I

    move-result v3

    invoke-direct {p1, v0, v2, v3, v1}, Lorg/apache/poi/hwpf/model/ComplexFileTable;-><init>([B[BII)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_cft:Lorg/apache/poi/hwpf/model/ComplexFileTable;

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->getTextPieceTable()Lorg/apache/poi/hwpf/model/TextPieceTable;

    move-result-object p1

    .line 17
    new-instance v0, Lorg/apache/poi/hwpf/model/CHPBinTable;

    iget-object v5, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v6, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcPlcfbteChpx()I

    move-result v7

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbPlcfbteChpx()I

    move-result v8

    move-object v4, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/hwpf/model/CHPBinTable;-><init>([B[BIILorg/apache/poi/hwpf/model/CharIndexTranslator;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_cbt:Lorg/apache/poi/hwpf/model/CHPBinTable;

    .line 18
    new-instance v0, Lorg/apache/poi/hwpf/model/PAPBinTable;

    iget-object v5, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v6, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_dataStream:[B

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcPlcfbtePapx()I

    move-result v8

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbPlcfbtePapx()I

    move-result v9

    move-object v4, v0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lorg/apache/poi/hwpf/model/PAPBinTable;-><init>([B[B[BIILorg/apache/poi/hwpf/model/CharIndexTranslator;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_pbt:Lorg/apache/poi/hwpf/model/PAPBinTable;

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/TextPieceTable;->getText()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_text:Ljava/lang/StringBuilder;

    :try_start_0
    const-string v0, "org.apache.poi.hwpf.preserveBinTables"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    .line 21
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_cbt:Lorg/apache/poi/hwpf/model/CHPBinTable;

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_cft:Lorg/apache/poi/hwpf/model/ComplexFileTable;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwpf/model/CHPBinTable;->rebuild(Lorg/apache/poi/hwpf/model/ComplexFileTable;)V

    .line 22
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_pbt:Lorg/apache/poi/hwpf/model/PAPBinTable;

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_text:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_cft:Lorg/apache/poi/hwpf/model/ComplexFileTable;

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hwpf/model/PAPBinTable;->rebuild(Ljava/lang/StringBuilder;Lorg/apache/poi/hwpf/model/ComplexFileTable;)V

    :cond_2
    :try_start_1
    const-string v0, "org.apache.poi.hwpf.preserveTextTable"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez v1, :cond_3

    .line 24
    new-instance p1, Lorg/apache/poi/hwpf/model/ComplexFileTable;

    invoke-direct {p1}, Lorg/apache/poi/hwpf/model/ComplexFileTable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_cft:Lorg/apache/poi/hwpf/model/ComplexFileTable;

    .line 25
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->getTextPieceTable()Lorg/apache/poi/hwpf/model/TextPieceTable;

    move-result-object p1

    .line 26
    new-instance v0, Lorg/apache/poi/hwpf/model/SinglentonTextPiece;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_text:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/model/SinglentonTextPiece;-><init>(Ljava/lang/StringBuilder;)V

    .line 27
    invoke-virtual {p1, v0}, Lorg/apache/poi/hwpf/model/TextPieceTable;->add(Lorg/apache/poi/hwpf/model/TextPiece;)V

    .line 28
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/TextPiece;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_text:Ljava/lang/StringBuilder;

    :cond_3
    move-object v7, p1

    .line 29
    new-instance p1, Lorg/apache/poi/hwpf/model/FSPATable;

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    sget-object v2, Lorg/apache/poi/hwpf/model/FSPADocumentPart;->HEADER:Lorg/apache/poi/hwpf/model/FSPADocumentPart;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/hwpf/model/FSPATable;-><init>([BLorg/apache/poi/hwpf/model/FileInformationBlock;Lorg/apache/poi/hwpf/model/FSPADocumentPart;)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_fspaHeaders:Lorg/apache/poi/hwpf/model/FSPATable;

    .line 30
    new-instance p1, Lorg/apache/poi/hwpf/model/FSPATable;

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    sget-object v2, Lorg/apache/poi/hwpf/model/FSPADocumentPart;->MAIN:Lorg/apache/poi/hwpf/model/FSPADocumentPart;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/hwpf/model/FSPATable;-><init>([BLorg/apache/poi/hwpf/model/FileInformationBlock;Lorg/apache/poi/hwpf/model/FSPADocumentPart;)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_fspaMain:Lorg/apache/poi/hwpf/model/FSPATable;

    .line 31
    new-instance p1, Lorg/apache/poi/hwpf/model/OfficeArtContent;

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcDggInfo()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbDggInfo()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/hwpf/model/OfficeArtContent;-><init>([BII)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->officeArtContent:Lorg/apache/poi/hwpf/model/OfficeArtContent;

    .line 32
    new-instance v0, Lorg/apache/poi/hwpf/model/PicturesTable;

    iget-object v10, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_dataStream:[B

    iget-object v11, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v12, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_fspaMain:Lorg/apache/poi/hwpf/model/FSPATable;

    move-object v8, v0

    move-object v9, p0

    move-object v13, p1

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/hwpf/model/PicturesTable;-><init>(Lorg/apache/poi/hwpf/HWPFDocument;[B[BLorg/apache/poi/hwpf/model/FSPATable;Lorg/apache/poi/hwpf/model/OfficeArtContent;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_pictures:Lorg/apache/poi/hwpf/model/PicturesTable;

    .line 33
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_fspaHeaders:Lorg/apache/poi/hwpf/model/FSPATable;

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;-><init>(Lorg/apache/poi/hwpf/model/FSPATable;Lorg/apache/poi/hwpf/model/OfficeArtContent;[B)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_officeDrawingsHeaders:Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;

    .line 34
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_fspaMain:Lorg/apache/poi/hwpf/model/FSPATable;

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;-><init>(Lorg/apache/poi/hwpf/model/FSPATable;Lorg/apache/poi/hwpf/model/OfficeArtContent;[B)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_officeDrawingsMain:Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;

    .line 35
    new-instance p1, Lorg/apache/poi/hwpf/model/SectionTable;

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_mainStream:[B

    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcPlcfsed()I

    move-result v4

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbPlcfsed()I

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    sget-object v1, Lorg/apache/poi/hwpf/model/SubdocumentType;->MAIN:Lorg/apache/poi/hwpf/model/SubdocumentType;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getSubdocumentTextStreamLength(Lorg/apache/poi/hwpf/model/SubdocumentType;)I

    move-result v8

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/hwpf/model/SectionTable;-><init>([B[BIIILorg/apache/poi/hwpf/model/TextPieceTable;I)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_st:Lorg/apache/poi/hwpf/model/SectionTable;

    .line 36
    new-instance p1, Lorg/apache/poi/hwpf/model/StyleSheet;

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcStshf()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hwpf/model/StyleSheet;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_ss:Lorg/apache/poi/hwpf/model/StyleSheet;

    .line 37
    new-instance p1, Lorg/apache/poi/hwpf/model/FontTable;

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcSttbfffn()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbSttbfffn()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/hwpf/model/FontTable;-><init>([BII)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_ft:Lorg/apache/poi/hwpf/model/FontTable;

    .line 38
    iget-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcPlfLst()I

    move-result p1

    if-ltz p1, :cond_4

    .line 39
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbPlfLst()I

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    new-instance v0, Lorg/apache/poi/hwpf/model/ListTables;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcPlfLfo()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    .line 41
    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbPlfLfo()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/poi/hwpf/model/ListTables;-><init>([BIII)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_lt:Lorg/apache/poi/hwpf/model/ListTables;

    .line 42
    :cond_4
    iget-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcSttbSavedBy()I

    move-result p1

    .line 43
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbSttbSavedBy()I

    move-result v0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 44
    new-instance v1, Lorg/apache/poi/hwpf/model/SavedByTable;

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    invoke-direct {v1, v2, p1, v0}, Lorg/apache/poi/hwpf/model/SavedByTable;-><init>([BII)V

    iput-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_sbt:Lorg/apache/poi/hwpf/model/SavedByTable;

    .line 45
    :cond_5
    iget-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFcSttbfRMark()I

    move-result p1

    .line 46
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getLcbSttbfRMark()I

    move-result v0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 47
    new-instance v1, Lorg/apache/poi/hwpf/model/RevisionMarkAuthorTable;

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    invoke-direct {v1, v2, p1, v0}, Lorg/apache/poi/hwpf/model/RevisionMarkAuthorTable;-><init>([BII)V

    iput-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_rmat:Lorg/apache/poi/hwpf/model/RevisionMarkAuthorTable;

    .line 48
    :cond_6
    new-instance p1, Lorg/apache/poi/hwpf/model/BookmarksTables;

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hwpf/model/BookmarksTables;-><init>([BLorg/apache/poi/hwpf/model/FileInformationBlock;)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_bookmarksTables:Lorg/apache/poi/hwpf/model/BookmarksTables;

    .line 49
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BookmarksImpl;

    invoke-direct {v0, p1}, Lorg/apache/poi/hwpf/usermodel/BookmarksImpl;-><init>(Lorg/apache/poi/hwpf/model/BookmarksTables;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_bookmarks:Lorg/apache/poi/hwpf/usermodel/Bookmarks;

    .line 50
    new-instance p1, Lorg/apache/poi/hwpf/model/NotesTables;

    sget-object v0, Lorg/apache/poi/hwpf/model/NoteType;->ENDNOTE:Lorg/apache/poi/hwpf/model/NoteType;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/hwpf/model/NotesTables;-><init>(Lorg/apache/poi/hwpf/model/NoteType;[BLorg/apache/poi/hwpf/model/FileInformationBlock;)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_endnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

    .line 51
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/NotesImpl;

    invoke-direct {v0, p1}, Lorg/apache/poi/hwpf/usermodel/NotesImpl;-><init>(Lorg/apache/poi/hwpf/model/NotesTables;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_endnotes:Lorg/apache/poi/hwpf/usermodel/Notes;

    .line 52
    new-instance p1, Lorg/apache/poi/hwpf/model/NotesTables;

    sget-object v0, Lorg/apache/poi/hwpf/model/NoteType;->FOOTNOTE:Lorg/apache/poi/hwpf/model/NoteType;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v2, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/hwpf/model/NotesTables;-><init>(Lorg/apache/poi/hwpf/model/NoteType;[BLorg/apache/poi/hwpf/model/FileInformationBlock;)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_footnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

    .line 53
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/NotesImpl;

    invoke-direct {v0, p1}, Lorg/apache/poi/hwpf/usermodel/NotesImpl;-><init>(Lorg/apache/poi/hwpf/model/NotesTables;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_footnotes:Lorg/apache/poi/hwpf/usermodel/Notes;

    .line 54
    new-instance p1, Lorg/apache/poi/hwpf/model/FieldsTables;

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hwpf/model/FieldsTables;-><init>([BLorg/apache/poi/hwpf/model/FileInformationBlock;)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_fieldsTables:Lorg/apache/poi/hwpf/model/FieldsTables;

    .line 55
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/FieldsImpl;

    invoke-direct {v0, p1}, Lorg/apache/poi/hwpf/usermodel/FieldsImpl;-><init>(Lorg/apache/poi/hwpf/model/FieldsTables;)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_fields:Lorg/apache/poi/hwpf/usermodel/Fields;

    return-void

    .line 56
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Table Stream \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' wasn\'t found - Either the document is corrupt, or is Word95 (or earlier)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_8
    new-instance p0, Lorg/apache/poi/hwpf/OldWordFileFormatException;

    const-string p1, "The document is too old - Word 95 or older. Try HWPFOldDocument instead?"

    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/OldWordFileFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/HWPFDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private encryptBytes([BILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p0

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->setChunkSize(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    move-result-object p0

    if-lez p2, :cond_0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    :cond_0
    array-length p3, p1

    sub-int/2addr p3, p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static fillUp4096(Ljava/io/ByteArrayOutputStream;)[B
    .locals 3

    .line 5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rsub-int v0, v0, 0x1000

    if-lez v0, :cond_0

    .line 6
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static fillUp4096([B)[B
    .locals 3

    const/16 v0, 0x1000

    if-nez p0, :cond_0

    new-array p0, v0, [B

    return-object p0

    .line 1
    :cond_0
    array-length v1, p0

    if-ge v1, v0, :cond_1

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v0, 0x0

    .line 3
    array-length v2, p0

    invoke-virtual {v1, p0, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 4
    invoke-static {v1}, Lorg/apache/poi/hwpf/HWPFDocument;->fillUp4096(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hwpf/HWPFDocument;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private getRange(Lorg/apache/poi/hwpf/model/SubdocumentType;)Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 4

    .line 2
    sget-object v0, Lorg/apache/poi/hwpf/model/SubdocumentType;->ORDERED:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hwpf/model/SubdocumentType;

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getFileInformationBlock()Lorg/apache/poi/hwpf/model/FileInformationBlock;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v2}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getSubdocumentTextStreamLength(Lorg/apache/poi/hwpf/model/SubdocumentType;)I

    move-result v3

    if-ne p1, v2, :cond_0

    .line 5
    new-instance p1, Lorg/apache/poi/hwpf/usermodel/Range;

    add-int/2addr v3, v1

    invoke-direct {p1, v1, v3, p0}, Lorg/apache/poi/hwpf/usermodel/Range;-><init>(IILorg/apache/poi/hwpf/HWPFDocumentCore;)V

    return-object p1

    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subdocument type not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hwpf/HWPFDocument;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method private write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->clearOffsetsSizes()V

    .line 11
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getSize()I

    move-result v0

    .line 12
    rem-int/lit16 v1, v0, 0x200

    rsub-int v1, v1, 0x200

    add-int/2addr v0, v1

    .line 13
    new-instance v1, Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;

    invoke-direct {v1}, Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;-><init>()V

    const-string v2, "WordDocument"

    .line 14
    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;->getStream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    const-string v4, "1Table"

    .line 15
    invoke-virtual {v1, v4}, Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;->getStream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    int-to-long v5, v0

    .line 16
    sget v0, Lorg/apache/poi/hwpf/HWPFDocument;->MAX_RECORD_LENGTH:I

    invoke-static {v5, v6, v0}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    .line 17
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 18
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->updateEncryptionInfo()V

    .line 20
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/16 v7, 0x3e8

    new-array v7, v7, [B

    .line 21
    new-instance v8, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v8, v7, v6}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    .line 22
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 23
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 24
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-ne v9, v10, :cond_0

    .line 25
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 26
    :cond_0
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;

    invoke-interface {v9, v8}, Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 27
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;

    invoke-interface {v9, v8}, Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 28
    invoke-virtual {v8}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v9

    invoke-virtual {v1, v7, v6, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 29
    invoke-virtual {v8}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v7

    add-int/2addr v7, v6

    .line 30
    iget-object v8, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v8}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->setLKey(I)V

    goto :goto_0

    :cond_1
    move v7, v6

    .line 31
    :goto_0
    iget-object v8, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v8, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcStshf(I)V

    .line 32
    iget-object v8, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_ss:Lorg/apache/poi/hwpf/model/StyleSheet;

    invoke-virtual {v8, v1}, Lorg/apache/poi/hwpf/model/StyleSheet;->writeTo(Ljava/io/OutputStream;)V

    .line 33
    iget-object v8, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbStshf(I)V

    .line 34
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 35
    iget-object v8, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v8, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcClx(I)V

    .line 36
    iget-object v8, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_cft:Lorg/apache/poi/hwpf/model/ComplexFileTable;

    invoke-virtual {v8, v3, v1}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->writeTo(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 37
    iget-object v8, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbClx(I)V

    .line 38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 39
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    .line 40
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcDop(I)V

    .line 41
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_dop:Lorg/apache/poi/hwpf/model/DocumentProperties;

    invoke-virtual {v9, v1}, Lorg/apache/poi/hwpf/model/DocumentProperties;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 42
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbDop(I)V

    .line 43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 44
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_bookmarksTables:Lorg/apache/poi/hwpf/model/BookmarksTables;

    if-eqz v9, :cond_2

    .line 45
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7, v1}, Lorg/apache/poi/hwpf/model/BookmarksTables;->writePlcfBkmkf(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 47
    :cond_2
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_bookmarksTables:Lorg/apache/poi/hwpf/model/BookmarksTables;

    if-eqz v9, :cond_3

    .line 48
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7, v1}, Lorg/apache/poi/hwpf/model/BookmarksTables;->writePlcfBkmkl(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 50
    :cond_3
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcPlcfbteChpx(I)V

    .line 51
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_cbt:Lorg/apache/poi/hwpf/model/CHPBinTable;

    iget-object v10, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_cft:Lorg/apache/poi/hwpf/model/ComplexFileTable;

    invoke-virtual {v10}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->getTextPieceTable()Lorg/apache/poi/hwpf/model/TextPieceTable;

    move-result-object v10

    invoke-virtual {v9, v3, v1, v0, v10}, Lorg/apache/poi/hwpf/model/CHPBinTable;->writeTo(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;ILorg/apache/poi/hwpf/model/CharIndexTranslator;)V

    .line 52
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbPlcfbteChpx(I)V

    .line 53
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 54
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcPlcfbtePapx(I)V

    .line 55
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_pbt:Lorg/apache/poi/hwpf/model/PAPBinTable;

    iget-object v10, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_cft:Lorg/apache/poi/hwpf/model/ComplexFileTable;

    invoke-virtual {v10}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->getTextPieceTable()Lorg/apache/poi/hwpf/model/TextPieceTable;

    move-result-object v10

    invoke-virtual {v9, v3, v1, v10}, Lorg/apache/poi/hwpf/model/PAPBinTable;->writeTo(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;Lorg/apache/poi/hwpf/model/CharIndexTranslator;)V

    .line 56
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbPlcfbtePapx(I)V

    .line 57
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 58
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_endnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v7, v9, v1}, Lorg/apache/poi/hwpf/model/NotesTables;->writeRef(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 59
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_endnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v7, v9, v1}, Lorg/apache/poi/hwpf/model/NotesTables;->writeTxt(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 60
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 61
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_fieldsTables:Lorg/apache/poi/hwpf/model/FieldsTables;

    if-eqz v7, :cond_4

    .line 62
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v7, v9, v1}, Lorg/apache/poi/hwpf/model/FieldsTables;->write(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 64
    :cond_4
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_footnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v7, v9, v1}, Lorg/apache/poi/hwpf/model/NotesTables;->writeRef(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 65
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_footnotesTables:Lorg/apache/poi/hwpf/model/NotesTables;

    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v7, v9, v1}, Lorg/apache/poi/hwpf/model/NotesTables;->writeTxt(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 66
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 67
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcPlcfsed(I)V

    .line 68
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_st:Lorg/apache/poi/hwpf/model/SectionTable;

    invoke-virtual {v9, v3, v1}, Lorg/apache/poi/hwpf/model/SectionTable;->writeTo(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 69
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbPlcfsed(I)V

    .line 70
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 71
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_lt:Lorg/apache/poi/hwpf/model/ListTables;

    if-eqz v9, :cond_5

    .line 72
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7, v1}, Lorg/apache/poi/hwpf/model/ListTables;->writeListDataTo(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 74
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_lt:Lorg/apache/poi/hwpf/model/ListTables;

    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v7, v9, v1}, Lorg/apache/poi/hwpf/model/ListTables;->writeListOverridesTo(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 76
    :cond_5
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_bookmarksTables:Lorg/apache/poi/hwpf/model/BookmarksTables;

    if-eqz v9, :cond_6

    .line 77
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7, v1}, Lorg/apache/poi/hwpf/model/BookmarksTables;->writeSttbfBkmk(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 79
    :cond_6
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_sbt:Lorg/apache/poi/hwpf/model/SavedByTable;

    if-eqz v9, :cond_7

    .line 80
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcSttbSavedBy(I)V

    .line 81
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_sbt:Lorg/apache/poi/hwpf/model/SavedByTable;

    invoke-virtual {v9, v1}, Lorg/apache/poi/hwpf/model/SavedByTable;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 82
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbSttbSavedBy(I)V

    .line 83
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 84
    :cond_7
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_rmat:Lorg/apache/poi/hwpf/model/RevisionMarkAuthorTable;

    if-eqz v9, :cond_8

    .line 85
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcSttbfRMark(I)V

    .line 86
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_rmat:Lorg/apache/poi/hwpf/model/RevisionMarkAuthorTable;

    invoke-virtual {v9, v1}, Lorg/apache/poi/hwpf/model/RevisionMarkAuthorTable;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 87
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbSttbfRMark(I)V

    .line 88
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 89
    :cond_8
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v9, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcSttbfffn(I)V

    .line 90
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_ft:Lorg/apache/poi/hwpf/model/FontTable;

    invoke-virtual {v9, v1}, Lorg/apache/poi/hwpf/model/FontTable;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 91
    iget-object v9, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbSttbfffn(I)V

    .line 92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 93
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->setFcMin(I)V

    .line 94
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->setFcMac(I)V

    .line 95
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setCbMac(I)V

    .line 96
    invoke-static {v3}, Lorg/apache/poi/hwpf/HWPFDocument;->fillUp4096(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 97
    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->setFWhichTblStm(Z)V

    .line 98
    iget-object v3, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v3, v0, v1}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->writeTo([BLjava/io/ByteArrayOutputStream;)V

    .line 99
    invoke-static {v1}, Lorg/apache/poi/hwpf/HWPFDocument;->fillUp4096(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v3

    .line 100
    iget-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_dataStream:[B

    invoke-static {v7}, Lorg/apache/poi/hwpf/HWPFDocument;->fillUp4096([B)[B

    move-result-object v7

    const-string v8, "Data"

    if-nez v5, :cond_9

    .line 101
    invoke-static {p1, v0, v2}, Lorg/apache/poi/hwpf/HWPFDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;[BLjava/lang/String;)V

    .line 102
    invoke-static {p1, v3, v4}, Lorg/apache/poi/hwpf/HWPFDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;[BLjava/lang/String;)V

    .line 103
    invoke-static {p1, v7, v8}, Lorg/apache/poi/hwpf/HWPFDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;[BLjava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_9
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const v10, 0x186a0

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v10, 0x44

    .line 105
    invoke-direct {p0, v0, v10, v9}, Lorg/apache/poi/hwpf/HWPFDocument;->encryptBytes([BILjava/io/OutputStream;)V

    .line 106
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1, v0, v2}, Lorg/apache/poi/hwpf/HWPFDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;[BLjava/lang/String;)V

    .line 107
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_fib:Lorg/apache/poi/hwpf/model/FileInformationBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->getFibBase()Lorg/apache/poi/hwpf/model/FibBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/FibBaseAbstractType;->getLKey()I

    move-result v0

    invoke-direct {p0, v3, v0, v9}, Lorg/apache/poi/hwpf/HWPFDocument;->encryptBytes([BILjava/io/OutputStream;)V

    .line 109
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1, v0, v4}, Lorg/apache/poi/hwpf/HWPFDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;[BLjava/lang/String;)V

    .line 110
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 111
    invoke-direct {p0, v7, v6, v9}, Lorg/apache/poi/hwpf/HWPFDocument;->encryptBytes([BILjava/io/OutputStream;)V

    .line 112
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1, v0, v8}, Lorg/apache/poi/hwpf/HWPFDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;[BLjava/lang/String;)V

    .line 113
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 114
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    if-eqz p2, :cond_b

    if-nez v5, :cond_b

    .line 115
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p2

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_objectPool:Lorg/apache/poi/hwpf/usermodel/ObjectPoolImpl;

    invoke-virtual {v0, p2}, Lorg/apache/poi/hwpf/usermodel/ObjectPoolImpl;->writeTo(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 117
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 118
    invoke-interface {v3}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "0Table"

    .line 120
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 122
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "ObjectPool"

    .line 123
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "\u0005SummaryInformation"

    .line 124
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "\u0005DocumentSummaryInformation"

    .line 125
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 126
    invoke-static {v3, p2}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    goto :goto_2

    .line 127
    :cond_b
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIDocument;->replaceDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    .line 129
    iput-object v7, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_dataStream:[B

    return-void
.end method

.method private static write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method


# virtual methods
.method public characterLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_text:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    return p0
.end method

.method public delete(II)V
    .locals 1

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/Range;

    add-int/2addr p2, p1

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/hwpf/usermodel/Range;-><init>(IILorg/apache/poi/hwpf/HWPFDocumentCore;)V

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/Range;->delete()V

    return-void
.end method

.method public getBookmarks()Lorg/apache/poi/hwpf/usermodel/Bookmarks;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_bookmarks:Lorg/apache/poi/hwpf/usermodel/Bookmarks;

    return-object p0
.end method

.method public getCommentsRange()Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwpf/model/SubdocumentType;->ANNOTATION:Lorg/apache/poi/hwpf/model/SubdocumentType;

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/HWPFDocument;->getRange(Lorg/apache/poi/hwpf/model/SubdocumentType;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    return-object p0
.end method

.method public getDataStream()[B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_dataStream:[B

    return-object p0
.end method

.method public getDocProperties()Lorg/apache/poi/hwpf/model/DocumentProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_dop:Lorg/apache/poi/hwpf/model/DocumentProperties;

    return-object p0
.end method

.method public getEndnoteRange()Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwpf/model/SubdocumentType;->ENDNOTE:Lorg/apache/poi/hwpf/model/SubdocumentType;

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/HWPFDocument;->getRange(Lorg/apache/poi/hwpf/model/SubdocumentType;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    return-object p0
.end method

.method public getEndnotes()Lorg/apache/poi/hwpf/usermodel/Notes;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_endnotes:Lorg/apache/poi/hwpf/usermodel/Notes;

    return-object p0
.end method

.method public getFields()Lorg/apache/poi/hwpf/usermodel/Fields;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_fields:Lorg/apache/poi/hwpf/usermodel/Fields;

    return-object p0
.end method

.method public getFootnoteRange()Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwpf/model/SubdocumentType;->FOOTNOTE:Lorg/apache/poi/hwpf/model/SubdocumentType;

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/HWPFDocument;->getRange(Lorg/apache/poi/hwpf/model/SubdocumentType;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    return-object p0
.end method

.method public getFootnotes()Lorg/apache/poi/hwpf/usermodel/Notes;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_footnotes:Lorg/apache/poi/hwpf/usermodel/Notes;

    return-object p0
.end method

.method public getHeaderStoryRange()Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwpf/model/SubdocumentType;->HEADER:Lorg/apache/poi/hwpf/model/SubdocumentType;

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/HWPFDocument;->getRange(Lorg/apache/poi/hwpf/model/SubdocumentType;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    return-object p0
.end method

.method public getMainTextboxRange()Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwpf/model/SubdocumentType;->TEXTBOX:Lorg/apache/poi/hwpf/model/SubdocumentType;

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/HWPFDocument;->getRange(Lorg/apache/poi/hwpf/model/SubdocumentType;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    return-object p0
.end method

.method public getOfficeArtContent()Lorg/apache/poi/hwpf/model/OfficeArtContent;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->officeArtContent:Lorg/apache/poi/hwpf/model/OfficeArtContent;

    return-object p0
.end method

.method public getOfficeDrawingsHeaders()Lorg/apache/poi/hwpf/usermodel/OfficeDrawings;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_officeDrawingsHeaders:Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;

    return-object p0
.end method

.method public getOfficeDrawingsMain()Lorg/apache/poi/hwpf/usermodel/OfficeDrawings;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_officeDrawingsMain:Lorg/apache/poi/hwpf/usermodel/OfficeDrawingsImpl;

    return-object p0
.end method

.method public getOverallRange()Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 3

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/Range;

    iget-object v1, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lorg/apache/poi/hwpf/usermodel/Range;-><init>(IILorg/apache/poi/hwpf/HWPFDocumentCore;)V

    return-object v0
.end method

.method public getPicturesTable()Lorg/apache/poi/hwpf/model/PicturesTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_pictures:Lorg/apache/poi/hwpf/model/PicturesTable;

    return-object p0
.end method

.method public getRange()Lorg/apache/poi/hwpf/usermodel/Range;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/hwpf/model/SubdocumentType;->MAIN:Lorg/apache/poi/hwpf/model/SubdocumentType;

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/HWPFDocument;->getRange(Lorg/apache/poi/hwpf/model/SubdocumentType;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p0

    return-object p0
.end method

.method public getRevisionMarkAuthorTable()Lorg/apache/poi/hwpf/model/RevisionMarkAuthorTable;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_rmat:Lorg/apache/poi/hwpf/model/RevisionMarkAuthorTable;

    return-object p0
.end method

.method public getSavedByTable()Lorg/apache/poi/hwpf/model/SavedByTable;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_sbt:Lorg/apache/poi/hwpf/model/SavedByTable;

    return-object p0
.end method

.method public getTableStream()[B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_tableStream:[B

    return-object p0
.end method

.method public getText()Ljava/lang/StringBuilder;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_text:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public getTextTable()Lorg/apache/poi/hwpf/model/TextPieceTable;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocument;->_cft:Lorg/apache/poi/hwpf/model/ComplexFileTable;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->getTextPieceTable()Lorg/apache/poi/hwpf/model/TextPieceTable;

    move-result-object p0

    return-object p0
.end method

.method public registerList(Lorg/apache/poi/hwpf/usermodel/HWPFList;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_lt:Lorg/apache/poi/hwpf/model/ListTables;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hwpf/model/ListTables;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/model/ListTables;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_lt:Lorg/apache/poi/hwpf/model/ListTables;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hwpf/HWPFDocumentCore;->_lt:Lorg/apache/poi/hwpf/model/ListTables;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/HWPFList;->getListData()Lorg/apache/poi/hwpf/model/ListData;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/HWPFList;->getLFO()Lorg/apache/poi/hwpf/model/LFO;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/HWPFList;->getLFOData()Lorg/apache/poi/hwpf/model/LFOData;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hwpf/model/ListTables;->addList(Lorg/apache/poi/hwpf/model/ListData;Lorg/apache/poi/hwpf/model/LFO;Lorg/apache/poi/hwpf/model/LFOData;)I

    move-result p0

    return p0
.end method

.method public write()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hwpf/HWPFDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem()V

    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->create(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hwpf/HWPFDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem()V

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hwpf/HWPFDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 9
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    return-void
.end method
