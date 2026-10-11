.class public Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$Companion;,
        Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;,
        Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;,
        Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressRequestBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressRequestBody.kt\ncom/onyx/android/sdk/data/utils/ProgressRequestBody\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u00142\u00020\u0001:\u0004\u0014\u0015\u0016\u0017B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;",
        "Lokhttp3/RequestBody;",
        "file",
        "Ljava/io/File;",
        "mediaType",
        "",
        "listener",
        "Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;",
        "(Ljava/io/File;Ljava/lang/String;Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;)V",
        "handler",
        "Landroid/os/Handler;",
        "contentType",
        "Lokhttp3/MediaType;",
        "onProgressUpdate",
        "",
        "runnable",
        "Ljava/lang/Runnable;",
        "writeTo",
        "sink",
        "Lokio/BufferedSink;",
        "Companion",
        "DoneUpdater",
        "ProgressUpdater",
        "UploadCallbacks",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProgressRequestBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressRequestBody.kt\ncom/onyx/android/sdk/data/utils/ProgressRequestBody\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field private final file:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final listener:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mediaType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->Companion:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->file:Ljava/io/File;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->mediaType:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->listener:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;)Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->listener:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;

    return-object p0
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->mediaType:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onProgressUpdate(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->handler:Landroid/os/Handler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 17
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "sink"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    const/16 v1, 0x800

    new-array v10, v1, [B

    new-instance v11, Ljava/io/FileInputStream;

    iget-object v1, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->file:Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->handler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v11, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v1, -0x1

    if-eq v3, v1, :cond_1

    iget-object v1, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->listener:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;

    if-eqz v1, :cond_0

    new-instance v4, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v4

    move-object/from16 v2, p0

    move v12, v3

    move-object v13, v4

    move-wide v3, v14

    move-object/from16 v16, v11

    move v11, v6

    move-wide v5, v8

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;-><init>(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;JJ)V

    invoke-virtual {v7, v13}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->onProgressUpdate(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    move v12, v3

    move-object/from16 v16, v11

    move v11, v6

    :goto_1
    int-to-long v1, v12

    add-long/2addr v14, v1

    invoke-interface {v0, v10, v11, v12}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v11, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    move-object/from16 v16, v11

    move v11, v6

    iget-object v0, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->listener:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v0, v14, v1

    if-eqz v0, :cond_3

    cmp-long v0, v14, v8

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;

    const/4 v2, 0x1

    invoke-direct {v1, v7, v2}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;-><init>(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;

    invoke-direct {v1, v7, v11}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;-><init>(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v16, v11

    move v11, v6

    :goto_4
    iget-object v1, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->listener:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;

    if-eqz v1, :cond_7

    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-eqz v1, :cond_6

    cmp-long v1, v14, v8

    if-gez v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;

    const/4 v3, 0x1

    invoke-direct {v2, v7, v3}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;-><init>(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_6
    :goto_5
    iget-object v1, v7, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;

    invoke-direct {v2, v7, v11}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;-><init>(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method
