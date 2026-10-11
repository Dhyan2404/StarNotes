.class public final Lorg/apache/poi/hslf/record/SlideAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field public static final USES_MASTER_SLIDE_ID:I = -0x80000000

.field private static _type:J = 0x3efL


# instance fields
.field private _header:[B

.field private followMasterBackground:Z

.field private followMasterObjects:Z

.field private followMasterScheme:Z

.field private layoutAtom:Lorg/apache/poi/hslf/record/SlideAtomLayout;

.field private masterID:I

.field private notesID:I

.field private reserved:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 13
    iput-object v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->_header:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 14
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 15
    iget-object v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->_header:[B

    sget-wide v3, Lorg/apache/poi/hslf/record/SlideAtom;->_type:J

    long-to-int v3, v3

    invoke-static {v0, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 16
    iget-object v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->_header:[B

    const/4 v3, 0x4

    const/16 v4, 0x18

    invoke-static {v0, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 17
    new-instance v3, Lorg/apache/poi/hslf/record/SlideAtomLayout;

    invoke-direct {v3, v0}, Lorg/apache/poi/hslf/record/SlideAtomLayout;-><init>([B)V

    iput-object v3, p0, Lorg/apache/poi/hslf/record/SlideAtom;->layoutAtom:Lorg/apache/poi/hslf/record/SlideAtomLayout;

    .line 18
    sget-object v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->BLANK_SLIDE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    invoke-virtual {v3, v0}, Lorg/apache/poi/hslf/record/SlideAtomLayout;->setGeometryType(Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterObjects:Z

    .line 20
    iput-boolean v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterScheme:Z

    .line 21
    iput-boolean v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterBackground:Z

    const/high16 v0, -0x80000000

    .line 22
    iput v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->masterID:I

    .line 23
    iput v1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->notesID:I

    new-array v0, v2, [B

    .line 24
    iput-object v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->reserved:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x1e

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    add-int/lit8 v1, p2, 0x8

    .line 2
    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hslf/record/SlideAtom;->_header:[B

    add-int/lit8 v2, p2, 0xc

    add-int/lit8 v2, v2, 0x8

    .line 3
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 4
    new-instance v3, Lorg/apache/poi/hslf/record/SlideAtomLayout;

    invoke-direct {v3, v1}, Lorg/apache/poi/hslf/record/SlideAtomLayout;-><init>([B)V

    iput-object v3, p0, Lorg/apache/poi/hslf/record/SlideAtom;->layoutAtom:Lorg/apache/poi/hslf/record/SlideAtomLayout;

    .line 5
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->masterID:I

    add-int/lit8 v1, p2, 0x10

    add-int/lit8 v1, v1, 0x8

    .line 6
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->notesID:I

    add-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x8

    .line 7
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    .line 8
    :goto_0
    iput-boolean v2, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterBackground:Z

    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    .line 9
    :goto_1
    iput-boolean v2, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterScheme:Z

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_3

    move v4, v5

    .line 10
    :cond_3
    iput-boolean v4, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterObjects:Z

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 11
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->reserved:[B

    return-void
.end method


# virtual methods
.method public getFollowMasterBackground()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterBackground:Z

    return p0
.end method

.method public getFollowMasterObjects()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterObjects:Z

    return p0
.end method

.method public getFollowMasterScheme()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterScheme:Z

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "masterID"

    new-instance v1, Lcom/sunia/HTREnginev2/ktm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ktm;-><init>(Lorg/apache/poi/hslf/record/SlideAtom;)V

    const-string v2, "notesID"

    new-instance v3, Lcom/sunia/HTREnginev2/ltm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/ltm;-><init>(Lorg/apache/poi/hslf/record/SlideAtom;)V

    const-string v4, "followMasterObjects"

    new-instance v5, Lcom/sunia/HTREnginev2/mtm;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/mtm;-><init>(Lorg/apache/poi/hslf/record/SlideAtom;)V

    const-string v6, "followMasterScheme"

    new-instance v7, Lcom/sunia/HTREnginev2/ntm;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/ntm;-><init>(Lorg/apache/poi/hslf/record/SlideAtom;)V

    const-string v8, "followMasterBackground"

    new-instance v9, Lcom/sunia/HTREnginev2/otm;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/otm;-><init>(Lorg/apache/poi/hslf/record/SlideAtom;)V

    const-string v10, "layoutAtom"

    new-instance v11, Lcom/sunia/HTREnginev2/ptm;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/ptm;-><init>(Lorg/apache/poi/hslf/record/SlideAtom;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMasterID()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->masterID:I

    return p0
.end method

.method public getNotesID()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->notesID:I

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/SlideAtom;->_type:J

    return-wide v0
.end method

.method public getSSlideLayoutAtom()Lorg/apache/poi/hslf/record/SlideAtomLayout;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->layoutAtom:Lorg/apache/poi/hslf/record/SlideAtomLayout;

    return-object p0
.end method

.method public setFollowMasterBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterBackground:Z

    return-void
.end method

.method public setFollowMasterObjects(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterObjects:Z

    return-void
.end method

.method public setFollowMasterScheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterScheme:Z

    return-void
.end method

.method public setMasterID(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->masterID:I

    return-void
.end method

.method public setNotesID(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->notesID:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->layoutAtom:Lorg/apache/poi/hslf/record/SlideAtomLayout;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/SlideAtomLayout;->writeOut(Ljava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->masterID:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->notesID:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-boolean v0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterObjects:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterScheme:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    :cond_1
    iget-boolean v1, p0, Lorg/apache/poi/hslf/record/SlideAtom;->followMasterBackground:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :cond_2
    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(SLjava/io/OutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideAtom;->reserved:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
