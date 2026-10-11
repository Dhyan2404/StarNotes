.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;->invoke(Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5$a;->e:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5$a;->e:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;->mergeShapeList(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5$a;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;)V

    return-void
.end method
