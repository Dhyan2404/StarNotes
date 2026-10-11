.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0008\u0005*\u0002\u0000\u0014\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0008R\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1",
        "Landroid/view/View$OnDragListener;",
        "Landroid/view/View;",
        "v",
        "Landroid/view/DragEvent;",
        "e",
        "",
        "onDrag",
        "Z",
        "scrollUp",
        "",
        "f",
        "Lkotlin/Lazy;",
        "a",
        "()I",
        "flingVelocity",
        "",
        "g",
        "J",
        "scrollDuration",
        "com/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1",
        "h",
        "Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1;",
        "scrollRunnable",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Z

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:J

.field public final h:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic i:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V
    .locals 2

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->i:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$flingVelocity$2;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$flingVelocity$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->f:Lkotlin/Lazy;

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->g:J

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->h:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1;

    return-void
.end method

.method public static final synthetic access$getFlingVelocity(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->a()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getScrollDuration$p(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;)J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->g:J

    return-wide v0
.end method

.method public static final synthetic access$getScrollUp$p(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->e:Z

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/onyx/galaxy/note/R$id;->v_scroll_up:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->e:Z

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->i:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->rvFilter:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->h:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v2

    :pswitch_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->i:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->rvFilter:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;->h:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1$scrollRunnable$1;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :pswitch_2
    return v2

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const-string p1, "NoteListAdapter"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "NoteFolderTreeDragListener"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "NoteTagTreeDragListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
