.class public Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010%\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010=\u001a\u00020>H\u0016J\u0008\u0010?\u001a\u00020\u0007H\u0016J\u0008\u0010@\u001a\u00020>H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\t\"\u0004\u0008 \u0010\u000bR&\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\'\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0014\"\u0004\u0008)\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0014R\u001c\u0010+\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001c\u00100\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0014\"\u0004\u00082\u0010\u0016R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u0014R\u001c\u0010:\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0014\"\u0004\u0008<\u0010\u0016\u00a8\u0006A"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;",
        "",
        "url",
        "",
        "path",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "autoCallbackToUIThread",
        "",
        "getAutoCallbackToUIThread",
        "()Z",
        "setAutoCallbackToUIThread",
        "(Z)V",
        "eventBusHolder",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "getEventBusHolder",
        "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "setEventBusHolder",
        "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V",
        "fileMd5",
        "getFileMd5",
        "()Ljava/lang/String;",
        "setFileMd5",
        "(Ljava/lang/String;)V",
        "fileSize",
        "",
        "getFileSize",
        "()Ljava/lang/Long;",
        "setFileSize",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "forceReDownload",
        "getForceReDownload",
        "setForceReDownload",
        "headerParams",
        "",
        "getHeaderParams",
        "()Ljava/util/Map;",
        "setHeaderParams",
        "(Ljava/util/Map;)V",
        "password",
        "getPassword",
        "setPassword",
        "getPath",
        "tag",
        "getTag",
        "()Ljava/lang/Object;",
        "setTag",
        "(Ljava/lang/Object;)V",
        "targetPath",
        "getTargetPath",
        "setTargetPath",
        "task",
        "Lcom/liulishuo/okdownload/DownloadTask;",
        "getTask",
        "()Lcom/liulishuo/okdownload/DownloadTask;",
        "setTask",
        "(Lcom/liulishuo/okdownload/DownloadTask;)V",
        "getUrl",
        "username",
        "getUsername",
        "setUsername",
        "checkFileMd5AndDelete",
        "",
        "checkFileSize",
        "moveToTarget",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private autoCallbackToUIThread:Z

.field private eventBusHolder:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fileMd5:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fileSize:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private forceReDownload:Z

.field private headerParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tag:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private task:Lcom/liulishuo/okdownload/DownloadTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->tag:Ljava/lang/Object;

    const-string p1, "user-agent"

    const-string p2, "okhttp/4.12.0"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->headerParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public checkFileMd5AndDelete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileMd5:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->checkMD5WithDelete(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " check file md5 fail, expect,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileMd5:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkFileSize()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileSize:Ljava/lang/Long;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileSize:Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " check file size fail, expect,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileSize:Ljava/lang/Long;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",actual:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " file not exist"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAutoCallbackToUIThread()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->autoCallbackToUIThread:Z

    return p0
.end method

.method public final getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->eventBusHolder:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public final getFileMd5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileMd5:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileSize()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileSize:Ljava/lang/Long;

    return-object p0
.end method

.method public final getForceReDownload()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->forceReDownload:Z

    return p0
.end method

.method public final getHeaderParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->headerParams:Ljava/util/Map;

    return-object p0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTargetPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->targetPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getTask()Lcom/liulishuo/okdownload/DownloadTask;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->task:Lcom/liulishuo/okdownload/DownloadTask;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->username:Ljava/lang/String;

    return-object p0
.end method

.method public moveToTarget()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->targetPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->targetPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lonyx/org/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    return-void

    :cond_4
    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " file not exist"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setAutoCallbackToUIThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->autoCallbackToUIThread:Z

    return-void
.end method

.method public final setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->eventBusHolder:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method

.method public final setFileMd5(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileMd5:Ljava/lang/String;

    return-void
.end method

.method public final setFileSize(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->fileSize:Ljava/lang/Long;

    return-void
.end method

.method public final setForceReDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->forceReDownload:Z

    return-void
.end method

.method public final setHeaderParams(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->headerParams:Ljava/util/Map;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->password:Ljava/lang/String;

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->tag:Ljava/lang/Object;

    return-void
.end method

.method public final setTargetPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->targetPath:Ljava/lang/String;

    return-void
.end method

.method public final setTask(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->task:Lcom/liulishuo/okdownload/DownloadTask;

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->username:Ljava/lang/String;

    return-void
.end method
