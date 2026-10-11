.class public final Lcom/couchbase/lite/LogFileConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final directory:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private maxRotateCount:I

.field private maxSize:J

.field private final readonly:Z

.field private usePlaintext:Z


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/LogFileConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogFileConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/LogFileConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/LogFileConfiguration;-><init>(Ljava/lang/String;Lcom/couchbase/lite/LogFileConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/LogFileConfiguration;-><init>(Ljava/lang/String;Lcom/couchbase/lite/LogFileConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/LogFileConfiguration;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogFileConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/couchbase/lite/LogFileConfiguration;-><init>(Ljava/lang/String;Lcom/couchbase/lite/LogFileConfiguration;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/LogFileConfiguration;Z)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogFileConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v4, v0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v1, p2, Lcom/couchbase/lite/LogFileConfiguration;->maxSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v4, v1

    :goto_0
    if-nez p2, :cond_1

    move-object v5, v0

    goto :goto_1

    .line 5
    :cond_1
    iget v1, p2, Lcom/couchbase/lite/LogFileConfiguration;->maxRotateCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v5, v1

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-boolean p2, p2, Lcom/couchbase/lite/LogFileConfiguration;->usePlaintext:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    move-object v6, v0

    move-object v2, p0

    move-object v3, p1

    move v7, p3

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/couchbase/lite/LogFileConfiguration;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "directory"

    .line 9
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/couchbase/lite/LogFileConfiguration;->directory:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x80000

    :goto_0
    iput-wide p1, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxSize:J

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxRotateCount:I

    if-eqz p4, :cond_2

    .line 12
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/couchbase/lite/LogFileConfiguration;->usePlaintext:Z

    .line 13
    iput-boolean p5, p0, Lcom/couchbase/lite/LogFileConfiguration;->readonly:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/LogFileConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/LogFileConfiguration;

    iget-wide v3, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxSize:J

    iget-wide v5, p1, Lcom/couchbase/lite/LogFileConfiguration;->maxSize:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxRotateCount:I

    iget v3, p1, Lcom/couchbase/lite/LogFileConfiguration;->maxRotateCount:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/couchbase/lite/LogFileConfiguration;->usePlaintext:Z

    iget-boolean v3, p1, Lcom/couchbase/lite/LogFileConfiguration;->usePlaintext:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/couchbase/lite/LogFileConfiguration;->directory:Ljava/lang/String;

    iget-object p1, p1, Lcom/couchbase/lite/LogFileConfiguration;->directory:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/LogFileConfiguration;->directory:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxRotateCount()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxRotateCount:I

    return p0
.end method

.method public getMaxSize()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxSize:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/LogFileConfiguration;->directory:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setMaxRotateCount(I)Lcom/couchbase/lite/LogFileConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/couchbase/lite/LogFileConfiguration;->readonly:Z

    if-nez v0, :cond_0

    const-string v0, "max rotation count"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxRotateCount:I

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "LogFileConfiguration is readonly mode."

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxSize(J)Lcom/couchbase/lite/LogFileConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/couchbase/lite/LogFileConfiguration;->readonly:Z

    if-nez v0, :cond_0

    const-string v0, "max size"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxSize:J

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "LogFileConfiguration is readonly mode."

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUsePlaintext(Z)Lcom/couchbase/lite/LogFileConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/couchbase/lite/LogFileConfiguration;->readonly:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/couchbase/lite/LogFileConfiguration;->usePlaintext:Z

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "LogFileConfiguration is readonly mode."

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogFileConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/couchbase/lite/LogFileConfiguration;->readonly:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "!"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/couchbase/lite/LogFileConfiguration;->usePlaintext:Z

    if-eqz v1, :cond_1

    const-string v2, "+"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/LogFileConfiguration;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/couchbase/lite/LogFileConfiguration;->maxRotateCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public usesPlaintext()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/LogFileConfiguration;->usePlaintext:Z

    return p0
.end method
