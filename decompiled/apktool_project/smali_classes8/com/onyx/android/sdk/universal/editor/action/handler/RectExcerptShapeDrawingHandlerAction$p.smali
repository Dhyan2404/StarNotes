.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;->s(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$p;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$p;->f:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$p;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$p;->f:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;->access$setEditingContext$p(Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;)V

    return-void
.end method
