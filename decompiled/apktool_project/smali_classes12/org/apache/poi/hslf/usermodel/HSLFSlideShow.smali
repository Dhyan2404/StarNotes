.class public final Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;
.super Lorg/apache/poi/POIDocument;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SlideShow;
.implements Ljava/io/Closeable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/POIDocument;",
        "Lorg/apache/poi/sl/usermodel/SlideShow<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;",
        "Ljava/io/Closeable;",
        "Lorg/apache/poi/common/usermodel/GenericRecord;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x989680

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static MAX_RECORD_LENGTH:I = 0x0

.field public static final POWERPOINT_DOCUMENT:Ljava/lang/String; = "PowerPoint Document"

.field public static final PP95_DOCUMENT:Ljava/lang/String; = "PP40"

.field public static final PP97_DOCUMENT:Ljava/lang/String; = "PP97_DUALSTORAGE"

.field private static final loadSavePhase:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _documentRecord:Lorg/apache/poi/hslf/record/Document;

.field private _fonts:Lorg/apache/poi/hslf/record/FontCollection;

.field private final _hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

.field private final _masters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;",
            ">;"
        }
    .end annotation
.end field

.field private _mostRecentCoreRecords:[Lorg/apache/poi/hslf/record/Record;

.field private final _notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFNotes;",
            ">;"
        }
    .end annotation
.end field

.field private _sheetIdToCoreRecordsLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _slides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFSlide;",
            ">;"
        }
    .end annotation
.end field

.field private final _titleMasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->LOG:Lorg/apache/logging/log4j/Logger;

    const v0, 0x989680

    sput v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->MAX_RECORD_LENGTH:I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->loadSavePhase:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->create()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_masters:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_titleMasters:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_notes:Ljava/util/List;

    .line 6
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->loadSavePhase:Ljava/lang/ThreadLocal;

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;->INIT:Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 9
    instance-of v3, v2, Lorg/apache/poi/hslf/record/RecordContainer;

    if-eqz v3, :cond_0

    .line 10
    check-cast v2, Lorg/apache/poi/hslf/record/RecordContainer;

    invoke-static {v2}, Lorg/apache/poi/hslf/record/RecordContainer;->handleParentAwareRecords(Lorg/apache/poi/hslf/record/RecordContainer;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->findMostRecentCoreRecords()V

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->buildSlidesAndNotes()V

    .line 13
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->loadSavePhase:Ljava/lang/ThreadLocal;

    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;->LOADED:Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;)V

    return-void
.end method

.method public static addNewEscherBseRecord(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;[BI)Lorg/apache/poi/ddf/EscherBSERecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    sget-short v1, Lorg/apache/poi/ddf/EscherBSERecord;->RECORD_ID:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    iget v1, p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    shl-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    array-length v1, p2

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setSize(I)V

    const/16 v1, 0x10

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/ddf/EscherBSERecord;->setUid([B)V

    iget p2, p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    int-to-byte p2, p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeMacOS(B)V

    iget p2, p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    int-to-byte p2, p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeWin32(B)V

    sget-object p2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    if-ne p1, p2, :cond_0

    sget-object p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeMacOS(B)V

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    if-ne p1, p2, :cond_1

    sget-object p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeMacOS(B)V

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    if-ne p1, v1, :cond_2

    iget p1, p2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeWin32(B)V

    :cond_2
    :goto_0
    invoke-virtual {v0, p3}, Lorg/apache/poi/ddf/EscherBSERecord;->setOffset(I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildCount()I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    or-int/lit8 p1, p1, 0xf

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    return-object v0
.end method

.method private addPersistentObject(Lorg/apache/poi/hslf/record/PositionDependentRecord;)I
    .locals 3

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->setLastOnDiskOffset(I)V

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->appendRootLevelRecord(Lorg/apache/poi/hslf/record/Record;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->updateAndWriteDependantRecords(Ljava/io/OutputStream;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->PersistPtrIncrementalBlock:Lorg/apache/poi/hslf/record/RecordTypes;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    sget-object v1, Lorg/apache/poi/hslf/record/RecordTypes;->UserEditAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/UserEditAtom;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/UserEditAtom;->getMaxPersistWritten()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/record/UserEditAtom;->setLastViewType(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/UserEditAtom;->setMaxPersistWritten(I)V

    invoke-interface {p1}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->getLastOnDiskOffset()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->setLastOnDiskOffset(I)V

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->addSlideLookup(II)V

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "New slide/object ended up at {}"

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private buildSlidesAndNotes()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->findMasterSlides()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->findNotesSlides(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->findSlides(Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    const-string v0, "The PowerPoint file didn\'t contain a Document Record in its PersistPtr blocks. It is probably corrupt."

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findMasterSlides()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getMasterSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/SlideListWithText;->getSlideAtomsSets()[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getCoreRecordForSAS(Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;)Lorg/apache/poi/hslf/record/Record;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v3

    instance-of v5, v4, Lorg/apache/poi/hslf/record/Slide;

    if-eqz v5, :cond_1

    new-instance v5, Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;

    check-cast v4, Lorg/apache/poi/hslf/record/Slide;

    invoke-direct {v5, v4, v3}, Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;-><init>(Lorg/apache/poi/hslf/record/Slide;I)V

    invoke-virtual {v5, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->setSlideShow(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V

    iget-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_titleMasters:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lorg/apache/poi/hslf/record/MainMaster;

    if-eqz v5, :cond_2

    new-instance v5, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;

    check-cast v4, Lorg/apache/poi/hslf/record/MainMaster;

    invoke-direct {v5, v4, v3}, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;-><init>(Lorg/apache/poi/hslf/record/MainMaster;I)V

    invoke-virtual {v5, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->setSlideShow(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V

    iget-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_masters:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private findMostRecentCoreRecords()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    instance-of v6, v5, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    if-eqz v6, :cond_1

    check-cast v5, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->getKnownSlideIDs()[I

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->getSlideLocationsLookup()Ljava/util/Map;

    move-result-object v5

    array-length v7, v6

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hslf/record/Record;

    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_mostRecentCoreRecords:[Lorg/apache/poi/hslf/record/Record;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_sheetIdToCoreRecordsLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v2, v3

    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_sheetIdToCoreRecordsLookup:Ljava/util/Map;

    aget-object v5, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    array-length v2, v0

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_8

    aget-object v5, v0, v4

    instance-of v6, v5, Lorg/apache/poi/hslf/record/PositionDependentRecord;

    if-nez v6, :cond_5

    goto :goto_6

    :cond_5
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/hslf/record/PositionDependentRecord;

    invoke-interface {v6}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->getLastOnDiskOffset()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_6

    goto :goto_6

    :cond_6
    iget-object v8, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_sheetIdToCoreRecordsLookup:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    instance-of v6, v6, Lorg/apache/poi/hslf/record/PositionDependentRecordContainer;

    if-eqz v6, :cond_7

    move-object v6, v5

    check-cast v6, Lorg/apache/poi/hslf/record/PositionDependentRecordContainer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/hslf/record/PositionDependentRecordContainer;->setSheetId(I)V

    :cond_7
    iget-object v6, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_mostRecentCoreRecords:[Lorg/apache/poi/hslf/record/Record;

    aput-object v5, v6, v8

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_mostRecentCoreRecords:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, v0

    :goto_7
    if-ge v3, v1, :cond_a

    aget-object v2, v0, v3

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v4

    sget-object v6, Lorg/apache/poi/hslf/record/RecordTypes;->Document:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v6, v6, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    check-cast v2, Lorg/apache/poi/hslf/record/Document;

    iput-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/Document;->getEnvironment()Lorg/apache/poi/hslf/record/Environment;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/Document;->getEnvironment()Lorg/apache/poi/hslf/record/Environment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/Environment;->getFontCollection()Lorg/apache/poi/hslf/record/FontCollection;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_fonts:Lorg/apache/poi/hslf/record/FontCollection;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    return-void
.end method

.method private findNotesSlides(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getNotesSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/SlideListWithText;->getSlideAtomsSets()[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    move-result-object v0

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getCoreRecordForSAS(Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;)Lorg/apache/poi/hslf/record/Record;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A Notes SlideAtomSet at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " said its record was at refID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getRefID()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_1

    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    const-string v5, "{}, but that record didn\'t exist - record ignored."

    invoke-interface {v4, v5, v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    instance-of v7, v5, Lorg/apache/poi/hslf/record/Notes;

    if-nez v7, :cond_2

    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    const-string v7, "{}, but that was actually a {}"

    invoke-interface {v4, v7, v6, v5}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    check-cast v5, Lorg/apache/poi/hslf/record/Notes;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/Notes;->getNotesAtom()Lorg/apache/poi/hslf/record/NotesAtom;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v4, Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    invoke-direct {v4, v5}, Lorg/apache/poi/hslf/usermodel/HSLFNotes;-><init>(Lorg/apache/poi/hslf/record/Notes;)V

    invoke-virtual {v4, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->setSlideShow(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V

    iget-object v5, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_notes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not read NotesAtom from the NotesRecord for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method private findSlides(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getSlideSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/SlideListWithText;->getSlideAtomsSets()[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    move-result-object v0

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v7, v0, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;

    move-result-object v4

    invoke-virtual {p0, v7}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getCoreRecordForSAS(Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;)Lorg/apache/poi/hslf/record/Record;

    move-result-object v5

    instance-of v6, v5, Lorg/apache/poi/hslf/record/Slide;

    if-nez v6, :cond_1

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v6}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v6

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getRefID()I

    move-result v4

    invoke-static {v4}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "A Slide SlideAtomSet at {} said its record was at refID {}, but that was actually a {}"

    invoke-interface {v6, v8, v7, v4, v5}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    check-cast v5, Lorg/apache/poi/hslf/record/Slide;

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v5}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v5

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getRefID()I

    move-result v4

    invoke-static {v4}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "SlideAtomSet at {} at refID {} is null"

    invoke-interface {v5, v7, v6, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/hslf/record/SlideAtom;->getNotesID()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ltz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_notes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    iget-object v6, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_notes:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    goto :goto_1

    :cond_3
    sget-object v8, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v8}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v8

    const-string v9, "Notes not found for noteId={}"

    invoke-static {v6}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v8

    new-instance v10, Lorg/apache/poi/hslf/usermodel/HSLFSlide;

    add-int/lit8 v9, v2, 0x1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;-><init>(Lorg/apache/poi/hslf/record/Slide;Lorg/apache/poi/hslf/usermodel/HSLFNotes;Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;II)V

    invoke-virtual {v10, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->setSlideShow(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V

    iget-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static getLoadSavePhase()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->loadSavePhase:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;

    return-object v0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private static getOleMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hpsf/ClassID;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->POWERPOINT_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    const-string v2, "PowerPoint Document"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    const-string v3, "Workbook"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "WORKBOOK"

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "BOOK"

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method private writeDirtyParagraphs(Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;)V
    .locals 4

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ShapeContainer;->getShapes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    instance-of v1, v0, Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->writeDirtyParagraphs(Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v3}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->storeText()V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addControl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Lorg/apache/poi/hslf/record/ExControl;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/ExControl;-><init>()V

    invoke-virtual {v0, p2}, Lorg/apache/poi/hslf/record/ExEmbed;->setProgId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/ExEmbed;->setMenuName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/ExEmbed;->setClipboardName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExEmbed;->getExOleObjAtom()Lorg/apache/poi/hslf/record/ExOleObjAtom;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setDrawAspect(I)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setType(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setSubType(I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addToObjListAtom(Lorg/apache/poi/hslf/record/RecordContainer;)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setObjID(I)V

    return p0
.end method

.method public addEmbed(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)I
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getOleMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/ClassID;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported embedded document"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance v0, Lorg/apache/poi/hslf/record/ExEmbed;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/ExEmbed;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/record/RecordContainer;->removeChild(Lorg/apache/poi/hslf/record/Record;)Lorg/apache/poi/hslf/record/Record;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/record/RecordContainer;->removeChild(Lorg/apache/poi/hslf/record/Record;)Lorg/apache/poi/hslf/record/Record;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->removeChild(Lorg/apache/poi/hslf/record/Record;)Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExEmbed;->getExEmbedAtom()Lorg/apache/poi/hslf/record/ExEmbedAtom;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/record/ExEmbedAtom;->setCantLockServerB(Z)V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExEmbed;->getExOleObjAtom()Lorg/apache/poi/hslf/record/ExOleObjAtom;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setDrawAspect(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setType(I)V

    const v2, 0x12b600

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setOptions(I)V

    new-instance v2, Lorg/apache/poi/hslf/record/ExOleObjStg;

    invoke-direct {v2}, Lorg/apache/poi/hslf/record/ExOleObjStg;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createOleMarkerEntry(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    new-instance v3, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/poi/hslf/record/ExOleObjStg;->setData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addPersistentObject(Lorg/apache/poi/hslf/record/PositionDependentRecord;)I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/apache/poi/hslf/record/ExOleObjStg;->setPersistId(I)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setObjStgDataRef(I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addToObjListAtom(Lorg/apache/poi/hslf/record/RecordContainer;)I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setObjID(I)V

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic addFont(Ljava/io/InputStream;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addFont(Ljava/io/InputStream;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p0

    return-object p0
.end method

.method public addFont(Ljava/io/InputStream;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getDocumentAtom()Lorg/apache/poi/hslf/record/DocumentAtom;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/DocumentAtom;->setSaveWithFonts(Z)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getEnvironment()Lorg/apache/poi/hslf/record/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Environment;->getFontCollection()Lorg/apache/poi/hslf/record/FontCollection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/FontCollection;->addFont(Ljava/io/InputStream;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p0

    return-object p0
.end method

.method public addFont(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getEnvironment()Lorg/apache/poi/hslf/record/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Environment;->getFontCollection()Lorg/apache/poi/hslf/record/FontCollection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/FontCollection;->addFont(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p0

    return-object p0
.end method

.method public addMovie(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Lorg/apache/poi/hslf/record/ExAviMovie;

    invoke-direct {p2}, Lorg/apache/poi/hslf/record/ExAviMovie;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported Movie: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Lorg/apache/poi/hslf/record/ExMCIMovie;

    invoke-direct {p2}, Lorg/apache/poi/hslf/record/ExMCIMovie;-><init>()V

    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/hslf/record/ExMCIMovie;->getExVideo()Lorg/apache/poi/hslf/record/ExVideoContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExVideoContainer;->getExMediaAtom()Lorg/apache/poi/hslf/record/ExMediaAtom;

    move-result-object v1

    const/high16 v2, 0xe80000

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/record/ExMediaAtom;->setMask(I)V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExVideoContainer;->getPathAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hslf/record/CString;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addToObjListAtom(Lorg/apache/poi/hslf/record/RecordContainer;)I

    move-result p0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExVideoContainer;->getExMediaAtom()Lorg/apache/poi/hslf/record/ExMediaAtom;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/record/ExMediaAtom;->setObjectId(I)V

    return p0
.end method

.method public addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 19
    iget v0, p2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    sget v2, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    .line 21
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    :try_start_0
    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 24
    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 26
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported picture format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 16
    iget v0, p2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 17
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported picture format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 4
    iget v0, p2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->findPictureData([B)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getPPDrawingGroup()Lorg/apache/poi/hslf/record/PPDrawingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PPDrawingGroup;->getDggContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    .line 7
    sget-short v1, Lorg/apache/poi/ddf/EscherContainerRecord;->BSTORE_CONTAINER:S

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 9
    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    .line 10
    sget-short v1, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_ID:S

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildBefore(Lorg/apache/poi/ddf/EscherRecord;I)V

    :cond_1
    const/4 v0, 0x0

    .line 11
    invoke-static {v2, p2, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addNewEscherBseRecord(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;[BI)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v0

    .line 12
    invoke-static {p2, v2, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->createFromImageData(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;[B)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p1

    .line 13
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->addPicture(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)I

    move-result p0

    .line 14
    invoke-virtual {v0, p0}, Lorg/apache/poi/ddf/EscherBSERecord;->setOffset(I)V

    return-object p1

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported picture format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public addToObjListAtom(Lorg/apache/poi/hslf/record/RecordContainer;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/Document;->getExObjList(Z)Lorg/apache/poi/hslf/record/ExObjList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExObjList;->getExObjListAtom()Lorg/apache/poi/hslf/record/ExObjListAtom;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/ExObjListAtom;->getObjectIDSeed()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/record/ExObjListAtom;->setObjectIDSeed(I)V

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    return v2
.end method

.method public clearDirectory()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->clearDirectoryImpl()V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->close()V

    return-void
.end method

.method public createInformationProperties()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->createInformationProperties()V

    return-void
.end method

.method public createMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSlide()Lorg/apache/poi/hslf/usermodel/HSLFSlide;
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getSlideSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/poi/hslf/record/SlideListWithText;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/SlideListWithText;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/SlideListWithText;->setInstance(I)V

    .line 5
    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hslf/record/Document;->addSlideListWithText(Lorg/apache/poi/hslf/record/SlideListWithText;)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/SlideListWithText;->getSlideAtomsSets()[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 7
    invoke-virtual {v6}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v7

    if-ltz v7, :cond_2

    if-nez v4, :cond_1

    move-object v4, v6

    .line 9
    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v7

    invoke-virtual {v6}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v8

    if-ge v7, v8, :cond_2

    move-object v4, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_3
    new-instance v2, Lorg/apache/poi/hslf/record/SlidePersistAtom;

    invoke-direct {v2}, Lorg/apache/poi/hslf/record/SlidePersistAtom;-><init>()V

    if-nez v4, :cond_4

    const/16 v3, 0x100

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->setSlideIdentifier(I)V

    .line 12
    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/record/SlideListWithText;->addSlidePersistAtom(Lorg/apache/poi/hslf/record/SlidePersistAtom;)V

    .line 13
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getRefID()I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;-><init>(III)V

    .line 14
    invoke-virtual {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->setSlideShow(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V

    .line 15
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->onCreate()V

    .line 16
    iget-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getRefID()I

    move-result v5

    invoke-static {v5}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v6

    invoke-static {v6}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Added slide {} with ref {} and identifier {}"

    invoke-interface {v3, v7, v4, v5, v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object v3

    .line 19
    invoke-direct {p0, v3}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addPersistentObject(Lorg/apache/poi/hslf/record/PositionDependentRecord;)I

    move-result v4

    .line 20
    invoke-virtual {v2, v4}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->setRefID(I)V

    .line 21
    invoke-virtual {v3, v4}, Lorg/apache/poi/hslf/record/PositionDependentRecordContainer;->setSheetId(I)V

    .line 22
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_masters:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->setMasterSheet(Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;)V

    return-object v0
.end method

.method public bridge synthetic createSlide()Lorg/apache/poi/sl/usermodel/Slide;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->createSlide()Lorg/apache/poi/hslf/usermodel/HSLFSlide;

    move-result-object p0

    return-object p0
.end method

.method public findPictureData([B)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 2

    .line 2
    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getChecksum([B)[B

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getPictureData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUID()[B

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic findPictureData([B)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->findPictureData([B)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public getCoreRecordForRefID(I)Lorg/apache/poi/hslf/record/Record;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_sheetIdToCoreRecordsLookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_mostRecentCoreRecords:[Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "We tried to look up a reference to a core record, but there was no core ID for reference ID {}"

    invoke-static {p1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCoreRecordForSAS(Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;)Lorg/apache/poi/hslf/record/Record;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getRefID()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getCoreRecordForRefID(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    return-object p0
.end method

.method public getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentRecord()Lorg/apache/poi/hslf/record/Document;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    return-object p0
.end method

.method public getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object p0

    return-object p0
.end method

.method public getEmbeddedObjects()[Lorg/apache/poi/hslf/usermodel/HSLFObjectData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getEmbeddedObjects()[Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptedPropertyStreamName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFont(I)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getEnvironment()Lorg/apache/poi/hslf/record/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Environment;->getFontCollection()Lorg/apache/poi/hslf/record/FontCollection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/FontCollection;->getFontInfo(I)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFontCollection()Lorg/apache/poi/hslf/record/FontCollection;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_fonts:Lorg/apache/poi/hslf/record/FontCollection;

    return-object p0
.end method

.method public getFonts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getEnvironment()Lorg/apache/poi/hslf/record/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Environment;->getFontCollection()Lorg/apache/poi/hslf/record/FontCollection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontCollection;->getFonts()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenericChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/common/usermodel/GenericRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/r7h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/r7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V

    new-instance v1, Lcom/sunia/HTREnginev2/s7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V

    const-string p0, "pictures"

    const-string v2, "embeddedObjects"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getMetadataTextExtractor()Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    return-object v0
.end method

.method public getMostRecentCoreRecords()[Lorg/apache/poi/hslf/record/Record;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_mostRecentCoreRecords:[Lorg/apache/poi/hslf/record/Record;

    return-object p0
.end method

.method public getNotes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFNotes;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_notes:Ljava/util/List;

    return-object p0
.end method

.method public getNotesHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x4f

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/hslf/model/HeadersFooters;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;S)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hslf/model/HeadersFooters;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_notes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSheet;S)V

    return-object v0
.end method

.method public getNumberOfFonts()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getEnvironment()Lorg/apache/poi/hslf/record/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Environment;->getFontCollection()Lorg/apache/poi/hslf/record/FontCollection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontCollection;->getNumberOfFonts()I

    move-result p0

    return p0
.end method

.method public getPageSize()Ljava/awt/Dimension;
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getDocumentAtom()Lorg/apache/poi/hslf/record/DocumentAtom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/DocumentAtom;->getSlideSizeX()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/DocumentAtom;->getSlideSizeY()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v1

    double-to-int p0, v1

    new-instance v1, Ljava/awt/Dimension;

    invoke-direct {v1, v0, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v1
.end method

.method public getPersistDocument()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    return-object p0
.end method

.method public getPictureData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFPictureData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getPictureData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getPropertySetImpl(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p0

    return-object p0
.end method

.method public getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getPropertySetImpl(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p0

    return-object p0
.end method

.method public getSlideHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;
    .locals 2

    new-instance v0, Lorg/apache/poi/hslf/model/HeadersFooters;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;S)V

    return-object v0
.end method

.method public getSlideMasters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_masters:Ljava/util/List;

    return-object p0
.end method

.method public getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    return-object p0
.end method

.method public getSlides()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFSlide;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    return-object p0
.end method

.method public getSoundData()[Lorg/apache/poi/hslf/usermodel/HSLFSoundData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSoundData;->find(Lorg/apache/poi/hslf/record/Document;)[Lorg/apache/poi/hslf/usermodel/HSLFSoundData;

    move-result-object p0

    return-object p0
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object p0

    return-object p0
.end method

.method public getTitleMasters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_titleMasters:Ljava/util/List;

    return-object p0
.end method

.method public initDirectory()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->initDirectoryImpl()Z

    move-result p0

    return p0
.end method

.method public readProperties()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    return-void
.end method

.method public removeSlide(I)Lorg/apache/poi/hslf/usermodel/HSLFSlide;
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz p1, :cond_9

    if-gt p1, v0, :cond_9

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getSlideSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/SlideListWithText;->getSlideAtomsSets()[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFSlide;

    iget-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_notes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getNotes()Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hslf/usermodel/HSLFSlide;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->setSlideNumber(I)V

    move v5, v7

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlideRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/record/Document;->removeSlideListWithText(Lorg/apache/poi/hslf/record/SlideListWithText;)V

    goto :goto_2

    :cond_2
    new-array p1, v4, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/SlideListWithText;->setSlideAtomsSets([Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;)V

    new-array p1, v4, [Lorg/apache/poi/hslf/record/Record;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/RecordContainer;->setChildRecord([Lorg/apache/poi/hslf/record/Record;)V

    :goto_2
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/SlideAtom;->getNotesID()I

    move-result p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getNotesSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/SlideListWithText;->getSlideAtomsSets()[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    move-result-object v5

    array-length v6, v5

    move v7, v4

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->getSlideIdentifier()I

    move-result v9

    if-ne v9, p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlideRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlideRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v4, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/SlideListWithText;->setSlideAtomsSets([Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;)V

    new-array p1, v4, [Lorg/apache/poi/hslf/record/Record;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/RecordContainer;->setChildRecord([Lorg/apache/poi/hslf/record/Record;)V

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/Document;->removeSlideListWithText(Lorg/apache/poi/hslf/record/SlideListWithText;)V

    :cond_7
    return-object v1

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Slide record not defined."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slide index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of range (0.."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reorderSlide(II)V
    .locals 6

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getSlideSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/SlideListWithText;->getSlideAtomsSets()[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v1, v2

    add-int/lit8 v4, p2, -0x1

    aget-object v5, v1, v4

    aput-object v5, v1, v2

    aput-object v3, v1, v4

    iget-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hslf/usermodel/HSLFSlide;

    invoke-virtual {v3, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->setSlideNumber(I)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->setSlideNumber(I)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length p1, v1

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlideRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p1, p2, [Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hslf/record/RecordContainer;->setChildRecord([Lorg/apache/poi/hslf/record/Record;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Slide record not defined."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Old and new slide numbers must not exceed the number of slides ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_slides:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Old and new slide numbers must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->replaceDirectoryImpl(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public setPageSize(Ljava/awt/Dimension;)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_documentRecord:Lorg/apache/poi/hslf/record/Document;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getDocumentAtom()Lorg/apache/poi/hslf/record/DocumentAtom;

    move-result-object p0

    iget v0, p1, Ljava/awt/Dimension;->width:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/DocumentAtom;->setSlideSizeX(J)V

    iget p1, p1, Ljava/awt/Dimension;->height:I

    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/DocumentAtom;->setSlideSizeY(J)V

    return-void
.end method

.method public validateInPlaceWritePossible()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->validateInPlaceWritePossibleImpl()V

    return-void
.end method

.method public write()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->write()V

    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->write(Ljava/io/File;)V

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlides()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFSlide;

    .line 2
    invoke-direct {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->writeDirtyParagraphs(Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideMasters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;

    .line 4
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->getTextParagraphs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    .line 6
    invoke-virtual {v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->isDirty()Z

    move-result v6

    or-int/2addr v4, v6

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->getTxMasterStyleAtoms()[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->updateStyles()V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9
    :cond_5
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->_hslfSlideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->write(Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeProperties()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->writePropertiesImpl()V

    return-void
.end method

.method public writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideShowImpl()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->writePropertiesImpl(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    return-void
.end method
