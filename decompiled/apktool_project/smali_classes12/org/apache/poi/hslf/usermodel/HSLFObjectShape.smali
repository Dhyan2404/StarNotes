.class public final Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;
.super Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ObjectShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;",
        "Lorg/apache/poi/sl/usermodel/ObjectShape<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private _exEmbed:Lorg/apache/poi/hslf/record/ExEmbed;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hslf/usermodel/HSLFPictureData;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;Lorg/apache/poi/sl/usermodel/ObjectMetaData;Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->addUpdatedData(Lorg/apache/poi/sl/usermodel/ObjectMetaData;Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;)V

    return-void
.end method

.method private addUpdatedData(Lorg/apache/poi/sl/usermodel/ObjectMetaData;Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v1, v2, :cond_0

    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v3, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_0
    if-eq v1, v2, :cond_1

    :try_start_1
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getOleEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->reset()V

    invoke-static {v3}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createOleMarkerEntry(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getObjectID()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addEmbed(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->setObjectID(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getObjectData()Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;->setData([B)V

    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getProgId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->setProgId(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getObjectName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->setFullName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1
.end method

.method private getExEmbed(Z)Lorg/apache/poi/hslf/record/ExEmbed;
    .locals 7

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->_exEmbed:Lorg/apache/poi/hslf/record/ExEmbed;

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/Document;->getExObjList(Z)Lorg/apache/poi/hslf/record/ExObjList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "ExObjList not found"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getObjectID()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 8
    instance-of v6, v5, Lorg/apache/poi/hslf/record/ExEmbed;

    if-eqz v6, :cond_1

    .line 9
    check-cast v5, Lorg/apache/poi/hslf/record/ExEmbed;

    .line 10
    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/ExEmbed;->getExOleObjAtom()Lorg/apache/poi/hslf/record/ExOleObjAtom;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->getObjID()I

    move-result v6

    if-ne v6, v1, :cond_1

    .line 11
    iput-object v5, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->_exEmbed:Lorg/apache/poi/hslf/record/ExEmbed;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->_exEmbed:Lorg/apache/poi/hslf/record/ExEmbed;

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Lorg/apache/poi/hslf/record/ExEmbed;

    invoke-direct {p1}, Lorg/apache/poi/hslf/record/ExEmbed;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->_exEmbed:Lorg/apache/poi/hslf/record/ExEmbed;

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/ExEmbed;->getExOleObjAtom()Lorg/apache/poi/hslf/record/ExOleObjAtom;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->setObjID(I)V

    .line 15
    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->_exEmbed:Lorg/apache/poi/hslf/record/ExEmbed;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    .line 16
    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->_exEmbed:Lorg/apache/poi/hslf/record/ExEmbed;

    return-object p0
.end method


# virtual methods
.method public getExEmbed()Lorg/apache/poi/hslf/record/ExEmbed;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getExEmbed(Z)Lorg/apache/poi/hslf/record/ExEmbed;

    move-result-object p0

    return-object p0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getExEmbed()Lorg/apache/poi/hslf/record/ExEmbed;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExEmbed;->getClipboardName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getExEmbed()Lorg/apache/poi/hslf/record/ExEmbed;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExEmbed;->getMenuName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getObjectData()Lorg/apache/poi/hslf/usermodel/HSLFObjectData;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getEmbeddedObjects()[Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getExEmbed()Lorg/apache/poi/hslf/record/ExEmbed;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExEmbed;->getExOleObjAtom()Lorg/apache/poi/hslf/record/ExOleObjAtom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->getObjStgDataRef()I

    move-result p0

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 7
    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;->getExOleObjStg()Lorg/apache/poi/hslf/record/ExOleObjStg;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/ExOleObjStg;->getPersistId()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 8
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "OLE data not found"

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public bridge synthetic getObjectData()Lorg/apache/poi/sl/usermodel/ObjectData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getObjectData()Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    move-result-object p0

    return-object p0
.end method

.method public getObjectID()I
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__PICTUREID:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)I

    move-result p0

    return p0
.end method

.method public getProgId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getExEmbed()Lorg/apache/poi/hslf/record/ExEmbed;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExEmbed;->getProgId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getExEmbed(Z)Lorg/apache/poi/hslf/record/ExEmbed;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ExEmbed;->setClipboardName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setObjectID(I)V
    .locals 6

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__PICTUREID:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    sget-short v1, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Ole shape record not found."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientData(Z)Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->getHSLFChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v2

    sget-object v4, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjRefAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v4, v4, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    check-cast v1, Lorg/apache/poi/hslf/record/ExObjRefAtom;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    new-instance v1, Lorg/apache/poi/hslf/record/ExObjRefAtom;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/ExObjRefAtom;-><init>()V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->addChild(Lorg/apache/poi/hslf/record/Record;)V

    :cond_3
    invoke-virtual {v1, p1}, Lorg/apache/poi/hslf/record/ExObjRefAtom;->setExObjIdRef(I)V

    return-void
.end method

.method public setProgId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->getExEmbed(Z)Lorg/apache/poi/hslf/record/ExEmbed;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ExEmbed;->setProgId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateObjectData(Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;Lorg/apache/poi/sl/usermodel/ObjectMetaData;)Ljava/io/OutputStream;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->getMetaData()Lorg/apache/poi/sl/usermodel/ObjectMetaData;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape$1;

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape$1;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;Lorg/apache/poi/sl/usermodel/ObjectMetaData;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "either application or metaData needs to be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
