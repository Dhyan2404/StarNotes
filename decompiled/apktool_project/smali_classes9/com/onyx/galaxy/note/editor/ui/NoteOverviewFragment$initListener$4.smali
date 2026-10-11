.class public final Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initListener$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initListener$4",
        "Landroid/view/View$OnDragListener;",
        "onDrag",
        "",
        "v",
        "Landroid/view/View;",
        "event",
        "Landroid/view/DragEvent;",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initListener$4;->e:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initListener$4;->e:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->getDragListener()Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initListener$4;->e:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$color;->note_overview_background:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initListener$4;->e:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initListener$4;->e:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "llyContent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p0

    if-eq p0, v2, :cond_3

    return v3

    :cond_3
    invoke-interface {p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;->onDragData(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
