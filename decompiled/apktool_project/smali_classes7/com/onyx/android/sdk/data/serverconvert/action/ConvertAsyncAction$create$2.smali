.class final Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/ObservableSource;",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "it",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$2;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$2;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$2;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->access$getLocalConvertList$p(Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;)Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$2;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->access$getNetworkConvertList$p(Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;-><init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$2;->apply(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
