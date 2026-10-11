.class public final Lorg/apache/poi/hslf/record/NotesAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static _type:J = 0x3f1L


# instance fields
.field private _header:[B

.field private followMasterBackground:Z

.field private followMasterObjects:Z

.field private followMasterScheme:Z

.field private reserved:[B

.field private slideID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->_header:[B

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/NotesAtom;->slideID:I

    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterBackground:Z

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterScheme:Z

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterObjects:Z

    add-int/lit8 p2, p2, 0xe

    add-int/lit8 p3, p3, -0xe

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->reserved:[B

    return-void
.end method


# virtual methods
.method public getFollowMasterBackground()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterBackground:Z

    return p0
.end method

.method public getFollowMasterObjects()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterObjects:Z

    return p0
.end method

.method public getFollowMasterScheme()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterScheme:Z

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "slideId"

    new-instance v1, Lcom/sunia/HTREnginev2/d5k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d5k;-><init>(Lorg/apache/poi/hslf/record/NotesAtom;)V

    const-string v2, "followMasterObjects"

    new-instance v3, Lcom/sunia/HTREnginev2/e5k;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/e5k;-><init>(Lorg/apache/poi/hslf/record/NotesAtom;)V

    const-string v4, "followMasterScheme"

    new-instance v5, Lcom/sunia/HTREnginev2/f5k;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/f5k;-><init>(Lorg/apache/poi/hslf/record/NotesAtom;)V

    const-string v6, "followMasterBackground"

    new-instance v7, Lcom/sunia/HTREnginev2/g5k;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/g5k;-><init>(Lorg/apache/poi/hslf/record/NotesAtom;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/NotesAtom;->_type:J

    return-wide v0
.end method

.method public getSlideID()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/NotesAtom;->slideID:I

    return p0
.end method

.method public setFollowMasterBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterBackground:Z

    return-void
.end method

.method public setFollowMasterObjects(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterObjects:Z

    return-void
.end method

.method public setFollowMasterScheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterScheme:Z

    return-void
.end method

.method public setSlideID(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->slideID:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/NotesAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/poi/hslf/record/NotesAtom;->slideID:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-boolean v0, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterObjects:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterScheme:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    :cond_1
    iget-boolean v1, p0, Lorg/apache/poi/hslf/record/NotesAtom;->followMasterBackground:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :cond_2
    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(SLjava/io/OutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/NotesAtom;->reserved:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
