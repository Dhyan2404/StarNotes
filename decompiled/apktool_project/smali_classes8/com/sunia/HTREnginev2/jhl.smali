.class public final synthetic Lcom/sunia/HTREnginev2/jhl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jhl;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jhl;->f:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jhl;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jhl;->f:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;->n(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;Ljava/lang/Object;)V

    return-void
.end method
