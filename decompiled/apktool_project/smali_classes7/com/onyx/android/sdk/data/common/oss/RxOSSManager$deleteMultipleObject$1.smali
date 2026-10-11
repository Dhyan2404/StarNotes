.class final Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->deleteMultipleObject(Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/ObservableSource;",
        "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
        "oss",
        "Lcom/alibaba/sdk/android/oss/OSS;",
        "apply"
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
.field final synthetic $isQuiet:Z

.field final synthetic $objectKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;->this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;->$objectKeys:Ljava/util/List;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;->$isQuiet:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/alibaba/sdk/android/oss/OSS;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/alibaba/sdk/android/oss/OSS;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/OSS;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "oss"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;->this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;->$objectKeys:Ljava/util/List;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;->$isQuiet:Z

    invoke-static {v0, p1, v1, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->access$createDeleteMultipleObjectObservable(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/OSS;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/oss/OSS;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$deleteMultipleObject$1;->apply(Lcom/alibaba/sdk/android/oss/OSS;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
