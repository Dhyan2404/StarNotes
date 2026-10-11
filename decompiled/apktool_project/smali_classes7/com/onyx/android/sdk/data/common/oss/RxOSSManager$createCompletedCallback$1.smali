.class public final Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createCompletedCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createCompletedCallback(Lio/reactivex/rxjava3/subjects/Subject;)Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "TR;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001J)\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ\u001d\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/onyx/android/sdk/data/common/oss/RxOSSManager$createCompletedCallback$1",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;",
        "onFailure",
        "",
        "request",
        "clientException",
        "Lcom/alibaba/sdk/android/oss/ClientException;",
        "serviceException",
        "Lcom/alibaba/sdk/android/oss/ServiceException;",
        "(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V",
        "onSuccess",
        "result",
        "(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V",
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
.field final synthetic $subject:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/subjects/Subject;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "TT;>;",
            "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createCompletedCallback$1;->$subject:Lio/reactivex/rxjava3/subjects/Subject;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createCompletedCallback$1;->this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 1
    .param p1    # Lcom/alibaba/sdk/android/oss/model/OSSRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/alibaba/sdk/android/oss/ClientException;",
            "Lcom/alibaba/sdk/android/oss/ServiceException;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createCompletedCallback$1;->this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createCompletedCallback$1;->$subject:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->access$onFailure(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lio/reactivex/rxjava3/subjects/Subject;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 1
    .param p1    # Lcom/alibaba/sdk/android/oss/model/OSSRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/sdk/android/oss/model/OSSResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createCompletedCallback$1;->$subject:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method
