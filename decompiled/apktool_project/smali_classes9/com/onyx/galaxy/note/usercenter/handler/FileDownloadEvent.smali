.class public final Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0006\u0010\u0002\u001a\u00020\u0001R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u000e\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0005\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;",
        "",
        "getDownloadArgsForJavascript",
        "",
        "a",
        "I",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "status",
        "b",
        "getProgress",
        "setProgress",
        "progress",
        "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;",
        "c",
        "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;",
        "getDownloadArgs",
        "()Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;",
        "setDownloadArgs",
        "(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;)V",
        "downloadArgs",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->c:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    return-void
.end method


# virtual methods
.method public final getDownloadArgs()Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->c:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    return-object p0
.end method

.method public final getDownloadArgsForJavascript()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->a:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "onDownloadProgress"

    goto :goto_0

    :cond_0
    const-string v0, "onFileSaveFailed"

    goto :goto_0

    :cond_1
    const-string v0, "onFileSaved"

    goto :goto_0

    :cond_2
    const-string v0, "noFilePermission"

    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->c:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "taskId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "progress"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final getProgress()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->b:I

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->a:I

    return p0
.end method

.method public final setDownloadArgs(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->c:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->b:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->a:I

    return-void
.end method
