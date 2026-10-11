.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->g(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$a;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$a;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/template/LoadDocDefaultPageMarginAction;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/action/template/LoadDocDefaultPageMarginAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadDocDefaultPageMarginAction;->getPageMarginConfig()Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$a;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->getMargin()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->getStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->setPageMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$a;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->clearPageMargin()V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/template/LoadDocDefaultPageMarginAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$a;->a(Lcom/onyx/galaxy/note/editor/action/template/LoadDocDefaultPageMarginAction;)V

    return-void
.end method
