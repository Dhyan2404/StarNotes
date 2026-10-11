.class final Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u001d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002 \u0005*\r\u0012\u0004\u0012\u00020\u00020\u0004\u00a2\u0006\u0002\u0008\u00030\u0001\u00a2\u0006\u0002\u0008\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$4;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Ljava/lang/Iterable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$4;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->access$getNetworkConvertList$p(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$4;->apply(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
