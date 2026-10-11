.class public final Lcom/onyx/galaxy/note/editor/handler/RulerHandler$showRuler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/handler/RulerHandler$showRuler$1",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;",
        "onTransform",
        "",
        "view",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/handler/RulerHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/RulerHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler$showRuler$1;->a:Lcom/onyx/galaxy/note/editor/handler/RulerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransform(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "matrix"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler$showRuler$1;->a:Lcom/onyx/galaxy/note/editor/handler/RulerHandler;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->getFragment()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler$showRuler$1;->a:Lcom/onyx/galaxy/note/editor/handler/RulerHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->access$getLastDocId$p(Lcom/onyx/galaxy/note/editor/handler/RulerHandler;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->updateRulerMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V

    return-void
.end method
