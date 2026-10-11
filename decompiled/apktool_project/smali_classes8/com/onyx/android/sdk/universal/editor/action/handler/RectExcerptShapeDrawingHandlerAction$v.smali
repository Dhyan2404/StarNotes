.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;->quitEdit(ZLkotlin/jvm/functions/Function1;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$v;->f:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$v;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$v;->f:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$v;->g:Z

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;->access$saveOrRestore(Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$v;->a(Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
