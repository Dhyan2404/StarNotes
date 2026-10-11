.class public Lcom/couchbase/lite/logging/FileLogSink;
.super Lcom/couchbase/lite/internal/logging/AbstractLogSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/logging/FileLogSink$Builder;
    }
.end annotation


# instance fields
.field private final directory:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final maxFileSize:J

.field private final maxKeptFiles:I

.field private final plainText:Z


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/logging/FileLogSink$Builder;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/logging/FileLogSink$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->access$400(Lcom/couchbase/lite/logging/FileLogSink$Builder;)Lcom/couchbase/lite/LogLevel;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/LogDomain;->ALL:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;-><init>(Lcom/couchbase/lite/LogLevel;Ljava/util/Set;)V

    invoke-static {p1}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->access$500(Lcom/couchbase/lite/logging/FileLogSink$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/couchbase/lite/logging/FileLogSink;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->access$600(Lcom/couchbase/lite/logging/FileLogSink$Builder;)I

    move-result v0

    iput v0, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxKeptFiles:I

    invoke-static {p1}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->access$700(Lcom/couchbase/lite/logging/FileLogSink$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxFileSize:J

    invoke-static {p1}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->access$800(Lcom/couchbase/lite/logging/FileLogSink$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/couchbase/lite/logging/FileLogSink;->plainText:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A file logger must specify a log file directory path"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/couchbase/lite/logging/FileLogSink;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/logging/FileLogSink;->directory:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/couchbase/lite/logging/FileLogSink;)I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxKeptFiles:I

    return p0
.end method

.method public static synthetic access$200(Lcom/couchbase/lite/logging/FileLogSink;)J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxFileSize:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/couchbase/lite/logging/FileLogSink;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/logging/FileLogSink;->plainText:Z

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/logging/FileLogSink;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/logging/FileLogSink;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/logging/FileLogSink;->similar(Lcom/couchbase/lite/logging/FileLogSink;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->similarLevels(Lcom/couchbase/lite/internal/logging/AbstractLogSink;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->similarDomains(Lcom/couchbase/lite/internal/logging/AbstractLogSink;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getDirectory()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/logging/FileLogSink;->directory:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxFileSize:J

    return-wide v0
.end method

.method public final getMaxKeptFiles()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxKeptFiles:I

    return p0
.end method

.method public final hashCode()I
    .locals 5

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/logging/FileLogSink;->directory:Ljava/lang/String;

    iget v2, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxKeptFiles:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isPlainText()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/logging/FileLogSink;->plainText:Z

    return p0
.end method

.method public final similar(Lcom/couchbase/lite/logging/FileLogSink;)Z
    .locals 4
    .param p1    # Lcom/couchbase/lite/logging/FileLogSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/couchbase/lite/logging/FileLogSink;->directory:Ljava/lang/String;

    iget-object v1, p1, Lcom/couchbase/lite/logging/FileLogSink;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxKeptFiles:I

    iget v1, p1, Lcom/couchbase/lite/logging/FileLogSink;->maxKeptFiles:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxFileSize:J

    iget-wide v2, p1, Lcom/couchbase/lite/logging/FileLogSink;->maxFileSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/couchbase/lite/logging/FileLogSink;->plainText:Z

    iget-boolean p1, p1, Lcom/couchbase/lite/logging/FileLogSink;->plainText:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileLogSink{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->isLegacy()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "!"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/couchbase/lite/logging/FileLogSink;->plainText:Z

    if-eqz v1, :cond_1

    const-string v2, "+"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getDomains()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->listDomains(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/logging/FileLogSink;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/couchbase/lite/logging/FileLogSink;->maxKeptFiles:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logToCore(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method
