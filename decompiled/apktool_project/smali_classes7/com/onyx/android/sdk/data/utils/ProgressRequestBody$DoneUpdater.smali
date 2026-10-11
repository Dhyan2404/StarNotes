.class final Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DoneUpdater"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;",
        "Ljava/lang/Runnable;",
        "isFinish",
        "",
        "(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;Z)V",
        "run",
        "",
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
.field private final isFinish:Z

.field final synthetic this$0:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;->this$0:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;->isFinish:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;->isFinish:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;->this$0:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->access$getListener$p(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;)Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;->onFinish()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$DoneUpdater;->this$0:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->access$getListener$p(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;)Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;->onError()V

    :goto_0
    return-void
.end method
