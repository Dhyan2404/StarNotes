.class final Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00012\u000e\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;",
        "kotlin.jvm.PlatformType",
        "it",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;->access$contentViewSizeChanged(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$create$1;->invoke(Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
