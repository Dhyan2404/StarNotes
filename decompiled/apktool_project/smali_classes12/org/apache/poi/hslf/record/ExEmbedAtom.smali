.class public Lorg/apache/poi/hslf/record/ExEmbedAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field public static final DOES_NOT_FOLLOW_COLOR_SCHEME:I = 0x0

.field public static final FOLLOWS_ENTIRE_COLOR_SCHEME:I = 0x1

.field public static final FOLLOWS_TEXT_AND_BACKGROUND_SCHEME:I = 0x2


# instance fields
.field private _data:[B

.field private _header:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_header:[B

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExEmbedAtom;->getRecordType()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-short v0, v0

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    array-length p0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 7
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_header:[B

    const/16 p2, 0x8

    sub-int/2addr p3, p2

    .line 8
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v1

    invoke-static {p1, v0, p3, v1}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    .line 9
    array-length p1, p1

    if-lt p1, p2, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The length of the data for a ExEmbedAtom must be at least 4 bytes, but was only "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/record/ExEmbedAtom;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/ExEmbedAtom;->getFollowColorSchemeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFollowColorSchemeString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExEmbedAtom;->getFollowColorScheme()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "DOES_NOT_FOLLOW_COLOR_SCHEME"

    return-object p0

    :cond_0
    const-string p0, "FOLLOWS_TEXT_AND_BACKGROUND_SCHEME"

    return-object p0

    :cond_1
    const-string p0, "FOLLOWS_ENTIRE_COLOR_SCHEME"

    return-object p0
.end method


# virtual methods
.method public getCantLockServerB()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    const/4 v0, 0x4

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFollowColorScheme()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

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

    const-string v0, "followColorScheme"

    new-instance v1, Lcom/sunia/HTREnginev2/lxf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lxf;-><init>(Lorg/apache/poi/hslf/record/ExEmbedAtom;)V

    const-string v2, "cantLockServer"

    new-instance v3, Lcom/sunia/HTREnginev2/mxf;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/mxf;-><init>(Lorg/apache/poi/hslf/record/ExEmbedAtom;)V

    const-string v4, "noSizeToServer"

    new-instance v5, Lcom/sunia/HTREnginev2/nxf;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/nxf;-><init>(Lorg/apache/poi/hslf/record/ExEmbedAtom;)V

    const-string v6, "isTable"

    new-instance v7, Lcom/sunia/HTREnginev2/oxf;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/oxf;-><init>(Lorg/apache/poi/hslf/record/ExEmbedAtom;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIsTable()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    const/4 v0, 0x6

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNoSizeToServerB()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    const/4 v0, 0x5

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->ExEmbedAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public setCantLockServerB(Z)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    int-to-byte p1, p1

    const/4 v0, 0x4

    aput-byte p1, p0, v0

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExEmbedAtom;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
