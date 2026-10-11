.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->m()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;->f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;->f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->setHitTestShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->access$getExcerptCollectionList$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;->f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->getExcerptCollectionList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->access$getNoteModelList$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;->f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->getNoteModelList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$e;->a(Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
