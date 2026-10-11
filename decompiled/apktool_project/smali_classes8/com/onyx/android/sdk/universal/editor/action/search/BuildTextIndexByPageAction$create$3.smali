.class final Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$create$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "",
        "",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$create$3;->this$0:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$create$3;->this$0:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;

    check-cast p1, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;->access$createReaderTextIndex(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$create$3;->this$0:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;->access$createScribbleTextIndex(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$create$3;->this$0:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;->access$createHwrFontTextIndex(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 5
    invoke-static {v0, v1, p0}, Lio/reactivex/rxjava3/core/Observable;->merge(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "merge(...)"

    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$create$3;->invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
