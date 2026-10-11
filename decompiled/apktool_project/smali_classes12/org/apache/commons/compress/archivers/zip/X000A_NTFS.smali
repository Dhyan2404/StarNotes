.class public Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field public static final h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field public static final i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field public static final j:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field public static final k:J = -0x19db1ded53e8000L


# instance fields
.field public e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field public f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field public g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->j:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public static a(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    mul-long/2addr v1, v3

    const-wide v3, -0x19db1ded53e8000L

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    return-object v0
.end method

.method public static d(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;
    .locals 4

    if-eqz p0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    const-wide v2, -0x19db1ded53e8000L

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b([BII)V
    .locals 1

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_0

    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->j:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, 0x2

    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAccessJavaTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->d(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getAccessTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object p0
.end method

.method public getCentralDirectoryData()[B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataData()[B

    move-result-object p0

    return-object p0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object p0

    return-object p0
.end method

.method public getCreateJavaTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->d(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getCreateTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object p0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getLocalFileDataData()[B
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    new-array v0, v0, [B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->j:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object p0

    const/16 v1, 0x18

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object p0
.end method

.method public getModifyJavaTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->d(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getModifyTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    const/16 v1, -0x7b

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v0

    const/16 v2, 0xb

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v1, v0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result p0

    const/16 v0, 0x16

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr v1, p0

    :cond_2
    return v1
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->c()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->parseFromLocalFileData([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    add-int/2addr p3, p2

    add-int/lit8 p2, p2, 0x4

    :goto_0
    add-int/lit8 v0, p2, 0x4

    if-gt v0, p3, :cond_1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    add-int/lit8 p2, p2, 0x2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->i:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int/2addr p3, p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->b([BII)V

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setAccessJavaTime(Ljava/util/Date;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->a(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setCreateJavaTime(Ljava/util/Date;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->a(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setModifyJavaTime(Ljava/util/Date;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->a(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->e:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x000A Zip Extra Field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Modify:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getModifyJavaTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Access:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getAccessJavaTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Create:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getCreateJavaTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
