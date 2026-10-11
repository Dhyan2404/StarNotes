.class public final Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter$onBindViewHolder$gesture$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/QuickViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter$onBindViewHolder$gesture$1",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "onDoubleTap",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "onSingleTapConfirmed",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;

.field public final synthetic f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter$onBindViewHolder$gesture$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter$onBindViewHolder$gesture$1;->f:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter$onBindViewHolder$gesture$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;->getPostProgressFilter()Lcom/onyx/android/sdk/base/rx/RxFilter;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter$onBindViewHolder$gesture$1;->f:Landroid/widget/ImageView;

    const-string v0, "$ivNoteCreate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter$onBindViewHolder$gesture$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;->access$getClickCallback$p(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddGridAdapter$onBindViewHolder$gesture$1;->f:Landroid/widget/ImageView;

    const-string v3, "$ivNoteCreate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
