.class public final Lcom/couchbase/lite/logging/FileLogSink$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/logging/FileLogSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private directory:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private level:Lcom/couchbase/lite/LogLevel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private maxFileSize:J

.field private maxKeptFiles:I

.field private plainText:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    iput-object v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->level:Lcom/couchbase/lite/LogLevel;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    const-wide/32 v0, 0x80000

    .line 4
    iput-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->plainText:Z

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/logging/FileLogSink$Builder;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/logging/FileLogSink$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    iput-object v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->level:Lcom/couchbase/lite/LogLevel;

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    const-wide/32 v0, 0x80000

    .line 9
    iput-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->plainText:Z

    .line 11
    iget-object v0, p1, Lcom/couchbase/lite/logging/FileLogSink$Builder;->directory:Ljava/lang/String;

    iput-object v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->directory:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->level:Lcom/couchbase/lite/LogLevel;

    .line 13
    iget v0, p1, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    iput v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    .line 14
    iget-wide v0, p1, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    iput-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    .line 15
    iget-boolean p1, p1, Lcom/couchbase/lite/logging/FileLogSink$Builder;->plainText:Z

    iput-boolean p1, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->plainText:Z

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/logging/FileLogSink;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/logging/FileLogSink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    iput-object v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->level:Lcom/couchbase/lite/LogLevel;

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    const-wide/32 v0, 0x80000

    .line 19
    iput-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->plainText:Z

    .line 21
    invoke-static {p1}, Lcom/couchbase/lite/logging/FileLogSink;->access$000(Lcom/couchbase/lite/logging/FileLogSink;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->directory:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->level:Lcom/couchbase/lite/LogLevel;

    .line 23
    invoke-static {p1}, Lcom/couchbase/lite/logging/FileLogSink;->access$100(Lcom/couchbase/lite/logging/FileLogSink;)I

    move-result v0

    iput v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    .line 24
    invoke-static {p1}, Lcom/couchbase/lite/logging/FileLogSink;->access$200(Lcom/couchbase/lite/logging/FileLogSink;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    .line 25
    invoke-static {p1}, Lcom/couchbase/lite/logging/FileLogSink;->access$300(Lcom/couchbase/lite/logging/FileLogSink;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->plainText:Z

    return-void
.end method

.method public static synthetic access$400(Lcom/couchbase/lite/logging/FileLogSink$Builder;)Lcom/couchbase/lite/LogLevel;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->level:Lcom/couchbase/lite/LogLevel;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/couchbase/lite/logging/FileLogSink$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->directory:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/couchbase/lite/logging/FileLogSink$Builder;)I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    return p0
.end method

.method public static synthetic access$700(Lcom/couchbase/lite/logging/FileLogSink$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    return-wide v0
.end method

.method public static synthetic access$800(Lcom/couchbase/lite/logging/FileLogSink$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->plainText:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/couchbase/lite/logging/FileLogSink;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/logging/FileLogSink;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/logging/FileLogSink;-><init>(Lcom/couchbase/lite/logging/FileLogSink$Builder;)V

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->directory:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel()Lcom/couchbase/lite/LogLevel;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->level:Lcom/couchbase/lite/LogLevel;

    return-object p0
.end method

.method public getMaxFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    return-wide v0
.end method

.method public getMaxKeptFiles()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    return p0
.end method

.method public isPlainText()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->plainText:Z

    return p0
.end method

.method public setDirectory(Ljava/lang/String;)Lcom/couchbase/lite/logging/FileLogSink$Builder;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "directory"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create log directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not writable"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->directory:Ljava/lang/String;

    return-object p0
.end method

.method public setLevel(Lcom/couchbase/lite/LogLevel;)Lcom/couchbase/lite/logging/FileLogSink$Builder;
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "log level"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/LogLevel;

    iput-object p1, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->level:Lcom/couchbase/lite/LogLevel;

    return-object p0
.end method

.method public setMaxFileSize(J)Lcom/couchbase/lite/logging/FileLogSink$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "max file size"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    return-object p0
.end method

.method public setMaxKeptFiles(I)Lcom/couchbase/lite/logging/FileLogSink$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "max kept files"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    return-object p0
.end method

.method public setPlainText(Z)Lcom/couchbase/lite/logging/FileLogSink$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->plainText:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileLogger.Builder{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->level:Lcom/couchbase/lite/LogLevel;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/couchbase/lite/logging/FileLogSink$Builder;->maxKeptFiles:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
