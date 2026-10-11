.class final Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;
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
    name = "ProgressUpdater"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;",
        "Ljava/lang/Runnable;",
        "uploaded",
        "",
        "total",
        "(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;JJ)V",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;

.field private final total:J

.field private final uploaded:J


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;->this$0:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;->uploaded:J

    iput-wide p4, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;->total:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;->this$0:Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;

    invoke-static {v0}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;->access$getListener$p(Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;)Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x64

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;->uploaded:J

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$ProgressUpdater;->total:J

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;->onProgressUpdate(I)V

    return-void
.end method
