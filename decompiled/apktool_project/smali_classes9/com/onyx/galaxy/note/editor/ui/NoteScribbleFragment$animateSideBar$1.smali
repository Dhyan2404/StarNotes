.class public final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->C0(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1",
        "Landroidx/transition/TransitionListenerAdapter;",
        "onTransitionCancel",
        "",
        "transition",
        "Landroidx/transition/Transition;",
        "onTransitionEnd",
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
.field public final synthetic e:Z

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

.field public final synthetic h:Lcom/onyx/galaxy/note/editor/data/SlideBarType;


# direct methods
.method public constructor <init>(ZLcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->e:Z

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->g:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->h:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->b(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$onContainerRectChanged(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->setSideLayoutAnim(Z)V

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 3
    .param p1    # Landroidx/transition/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->e:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->g:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->h:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-static {p1, v0, v1, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$toggleSideLayoutFragment(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->g:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->setSideLayoutAnim(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$handleDragToolOffset(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$refreshScrollerParams(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->g:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateSidebarAreaRect(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/SidebarDisplayStateChangedEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$hasSideBarShow(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$createEditorSideBarInfo(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/event/SidebarDisplayStateChangedEvent;-><init>(ZLcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postEvent(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$animateSideBar$1;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    new-instance v0, Lcom/sunia/HTREnginev2/n1k;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/n1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
