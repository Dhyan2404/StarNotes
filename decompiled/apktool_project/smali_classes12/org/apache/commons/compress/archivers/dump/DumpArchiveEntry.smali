.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;
    }
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public g:I

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;",
            ">;"
        }
    .end annotation
.end field

.field public i:J

.field public j:J

.field public k:J

.field public l:I

.field public m:I

.field public final n:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

.field public final o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:J

.field public t:I

.field public u:I

.field public v:J

.field public w:I

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->h:Ljava/util/Set;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->n:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 5
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->h:Ljava/util/Set;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->n:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 10
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    .line 12
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->h:Ljava/util/Set;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->n:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 17
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    .line 18
    invoke-virtual {p0, p4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setType(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V

    .line 19
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->p:Ljava/lang/String;

    .line 21
    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->t:I

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->s:J

    return-void
.end method

.method public static c([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
    .locals 9

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;-><init>()V

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->a(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    const/16 v3, 0xc

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->b(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I

    const/16 v3, 0x14

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->c(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I

    move-result v3

    iput v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->t:I

    const/16 v3, 0x20

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->b([BI)I

    move-result v3

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setType(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setMode(I)V

    const/16 v3, 0x22

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->b([BI)I

    move-result v3

    iput v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u:I

    const/16 v3, 0x28

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->d([BI)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setSize(J)V

    const/16 v3, 0x30

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const/16 v7, 0x34

    invoke-static {p0, v7}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v3, v7

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setAccessTime(Ljava/util/Date;)V

    const/16 v3, 0x38

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v5

    const/16 v7, 0x3c

    invoke-static {p0, v7}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v3, v7

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setLastModifiedDate(Ljava/util/Date;)V

    const/16 v3, 0x40

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v5

    const/16 v5, 0x44

    invoke-static {p0, v5}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->v:J

    const/16 v3, 0x8c

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    iput v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->w:I

    const/16 v3, 0x90

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setUserId(I)V

    const/16 v3, 0x94

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setGroupId(I)V

    const/16 v3, 0xa0

    invoke-static {p0, v3}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->e(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->f(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I

    move v3, v2

    :goto_0
    const/16 v4, 0x200

    if-ge v3, v4, :cond_1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->d(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;)I

    move-result v5

    if-ge v3, v5, :cond_1

    add-int/lit16 v4, v3, 0xa4

    aget-byte v4, p0, v4

    if-nez v4, :cond_0

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->g(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->h(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;)[B

    move-result-object v3

    const/16 v5, 0xa4

    invoke-static {p0, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->n()I

    move-result p0

    iput p0, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->r:I

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->i:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->q:Ljava/lang/String;

    return-object p0
.end method

.method public d([B)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->b(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    const/16 v1, 0xa0

    invoke-static {p1, v1}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->e(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->f(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I

    move v0, v1

    :goto_0
    const/16 v2, 0x200

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->d(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;)I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int/lit16 v2, v0, 0xa4

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->g(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->h(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;)[B

    move-result-object p0

    const/16 v0, 0xa4

    invoke-static {p1, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->t:I

    iget v3, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->t:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->n:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    if-nez p0, :cond_3

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->n:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    if-nez v2, :cond_4

    :cond_3
    if-eqz p0, :cond_5

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->n:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public getAccessTime()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->j:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->v:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getGeneration()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->w:I

    return p0
.end method

.method public getGroupId()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->m:I

    return p0
.end method

.method public getHeaderCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->j()I

    move-result p0

    return p0
.end method

.method public getHeaderHoles()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->k()I

    move-result p0

    return p0
.end method

.method public getHeaderType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->m()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object p0

    return-object p0
.end method

.method public getIno()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->l()I

    move-result p0

    return p0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->k:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->g:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getNlink()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u:I

    return p0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->s:J

    return-wide v0
.end method

.method public getPermissions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->h:Ljava/util/Set;

    return-object p0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->i:J

    :goto_0
    return-wide v0
.end method

.method public getType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->l:I

    return p0
.end method

.method public getVolume()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->r:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->t:I

    return p0
.end method

.method public isBlkDev()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->BLKDEV:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChrDev()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->CHRDEV:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->x:Z

    return p0
.end method

.method public isDirectory()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->DIRECTORY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFifo()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->FIFO:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFile()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->FILE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSocket()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->SOCKET:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSparseRecord(I)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->o:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->i(I)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAccessTime(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->j:J

    return-void
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->v:J

    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->x:Z

    return-void
.end method

.method public setGeneration(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->w:I

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->m:I

    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->k:J

    return-void
.end method

.method public setMode(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xfff

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->g:I

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->find(I)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->h:Ljava/util/Set;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->q:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "./"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->e:Ljava/lang/String;

    return-void
.end method

.method public setNlink(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u:I

    return-void
.end method

.method public setOffset(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->s:J

    return-void
.end method

.method public setSimpleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->p:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->i:J

    return-void
.end method

.method public setType(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->l:I

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->r:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
