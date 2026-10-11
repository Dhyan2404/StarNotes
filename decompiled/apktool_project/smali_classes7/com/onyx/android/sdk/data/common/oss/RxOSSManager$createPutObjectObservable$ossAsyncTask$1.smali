.class public final Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createPutObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J&\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001c\u0010\u000b\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
        "onFailure",
        "",
        "request",
        "clientException",
        "Lcom/alibaba/sdk/android/oss/ClientException;",
        "serviceException",
        "Lcom/alibaba/sdk/android/oss/ServiceException;",
        "onSuccess",
        "result",
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
.field final synthetic $subject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;->$subject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;->this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;->onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 1
    .param p1    # Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/sdk/android/oss/ClientException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/sdk/android/oss/ServiceException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;->this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;->$subject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->access$onFailure(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lio/reactivex/rxjava3/subjects/Subject;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;->onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V
    .locals 0
    .param p1    # Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/sdk/android/oss/model/PutObjectResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createPutObjectObservable$ossAsyncTask$1;->$subject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onComplete()V

    return-void
.end method
