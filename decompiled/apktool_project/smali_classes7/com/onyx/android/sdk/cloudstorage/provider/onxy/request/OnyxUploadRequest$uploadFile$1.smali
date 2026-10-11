.class final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest$uploadFile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->d()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "currentSize",
        "",
        "<anonymous parameter 1>",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest$uploadFile$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest$uploadFile$1;->invoke(JJ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(JJ)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest$uploadFile$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->access$getProgressInfo(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;)Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->access$onProgress(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    return-void
.end method
