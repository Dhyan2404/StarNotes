.class public final Lorg/apache/poi/hwpf/sprm/SprmBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field _buf:[B

.field _istd:Z

.field _offset:I

.field private final _sprmsStartOffset:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 13
    sget v2, Lorg/apache/poi/hwpf/sprm/SprmUtils;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    .line 14
    iput p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    .line 15
    iput p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_sprmsStartOffset:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/sprm/SprmBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    .line 3
    iget-boolean v0, p1, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_istd:Z

    iput-boolean v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_istd:Z

    .line 4
    iget v0, p1, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    iput v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    .line 5
    iget p1, p1, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_sprmsStartOffset:I

    iput p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_sprmsStartOffset:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;-><init>([BZI)V

    return-void
.end method

.method public constructor <init>([BZI)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    array-length v0, p1

    iput v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    .line 8
    iput-object p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    .line 9
    iput-boolean p2, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_istd:Z

    .line 10
    iput p3, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_sprmsStartOffset:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    iget v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    add-int v1, v0, p1

    iget-object v2, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    sget v2, Lorg/apache/poi/hwpf/sprm/SprmUtils;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocateCheck(JI)V

    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    iget v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    :cond_0
    return-void
.end method

.method private findSprmOffset(S)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->findSprm(S)Lorg/apache/poi/hwpf/sprm/SprmOperation;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/sprm/SprmOperation;->getGrpprlOffset()I

    move-result p0

    return p0
.end method


# virtual methods
.method public addSprm(SB)V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->ensureCapacity(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    iget v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 3
    iget p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    add-int/lit8 p1, p1, 0x2

    .line 4
    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    aput-byte p2, v0, p1

    return-void
.end method

.method public addSprm(SI)V
    .locals 2

    const/4 v0, 0x6

    .line 11
    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->ensureCapacity(I)V

    .line 12
    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    iget v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 13
    iget p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    .line 14
    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    invoke-static {v0, p1, p2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 15
    iget p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    return-void
.end method

.method public addSprm(SS)V
    .locals 2

    const/4 v0, 0x4

    .line 16
    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->ensureCapacity(I)V

    .line 17
    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    iget v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 18
    iget p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    .line 19
    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    invoke-static {v0, p1, p2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 20
    iget p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    return-void
.end method

.method public addSprm(S[B)V
    .locals 2

    .line 5
    array-length v0, p2

    add-int/lit8 v0, v0, 0x3

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->ensureCapacity(I)V

    .line 7
    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    iget v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 8
    iget p1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    add-int/lit8 p1, p1, 0x2

    .line 9
    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    array-length p0, p2

    int-to-byte p0, p0

    aput-byte p0, v0, p1

    const/4 p0, 0x0

    .line 10
    array-length p1, p2

    invoke-static {p2, p0, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public append([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->append([BI)V

    return-void
.end method

.method public append([BI)V
    .locals 3

    .line 2
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->ensureCapacity(I)V

    .line 3
    iget-object v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    iget v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    array-length p1, p1

    sub-int/2addr p1, p2

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_offset:I

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->copy()Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/sprm/SprmBuffer;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;-><init>(Lorg/apache/poi/hwpf/sprm/SprmBuffer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    iget-object p0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    iget-object p1, p1, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public findSprm(S)Lorg/apache/poi/hwpf/sprm/SprmOperation;
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/hwpf/sprm/SprmOperation;->getOperationFromOpcode(S)I

    move-result v0

    invoke-static {p1}, Lorg/apache/poi/hwpf/sprm/SprmOperation;->getTypeFromOpcode(S)I

    move-result p1

    new-instance v1, Lorg/apache/poi/hwpf/sprm/SprmIterator;

    iget-object p0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hwpf/sprm/SprmIterator;-><init>([BI)V

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/sprm/SprmIterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/sprm/SprmIterator;->next()Lorg/apache/poi/hwpf/sprm/SprmOperation;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/sprm/SprmOperation;->getOperation()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/sprm/SprmOperation;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public iterator()Lorg/apache/poi/hwpf/sprm/SprmIterator;
    .locals 2

    new-instance v0, Lorg/apache/poi/hwpf/sprm/SprmIterator;

    iget-object v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    iget p0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_sprmsStartOffset:I

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hwpf/sprm/SprmIterator;-><init>([BI)V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sprms ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " byte(s)): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->iterator()Lorg/apache/poi/hwpf/sprm/SprmIterator;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/sprm/SprmIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/sprm/SprmIterator;->next()Lorg/apache/poi/hwpf/sprm/SprmOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSprm(SB)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->findSprmOffset(S)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    aput-byte p2, p0, v0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->addSprm(SB)V

    return-void
.end method

.method public updateSprm(SI)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->findSprmOffset(S)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8
    iget-object p0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    invoke-static {p0, v0, p2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->addSprm(SI)V

    return-void
.end method

.method public updateSprm(SS)V
    .locals 2

    .line 10
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->findSprmOffset(S)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11
    iget-object p0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    invoke-static {p0, v0, p2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->addSprm(SS)V

    return-void
.end method

.method public updateSprm(SZ)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->findSprmOffset(S)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->_buf:[B

    int-to-byte p1, p2

    aput-byte p1, p0, v0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->addSprm(SI)V

    return-void
.end method
