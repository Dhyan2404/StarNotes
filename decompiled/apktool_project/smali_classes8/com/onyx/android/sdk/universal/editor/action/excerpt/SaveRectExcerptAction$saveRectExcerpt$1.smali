.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;->l()Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1;->f:Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1;->f:Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1;->a(Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
