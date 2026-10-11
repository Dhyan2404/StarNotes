.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeRequest;)Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeRequest;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;->access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    :cond_0
    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;->access$setTargetShape$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction$e;->a(Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeRequest;)Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;

    move-result-object p0

    return-object p0
.end method
