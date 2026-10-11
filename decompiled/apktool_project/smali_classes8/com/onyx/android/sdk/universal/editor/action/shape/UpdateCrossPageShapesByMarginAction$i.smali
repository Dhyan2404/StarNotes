.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->p(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;->f:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;->f:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;->g:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V

    return-void
.end method
