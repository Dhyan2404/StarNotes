.class public final Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/QuickViewHolder;ILjava/lang/String;)V
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
        "com/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1",
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
.field public final synthetic e:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;

.field public final synthetic g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;->e:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;->f:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;->g:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;->e:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long/2addr v0, v2

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->create_note_double_tap_time_interval:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;->f:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;->access$getClickCallback$p(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;->g:Landroid/widget/ImageView;

    const-string v2, "$ivNoteCreate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;->e:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;->f:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;->access$getClickCallback$p(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;->g:Landroid/widget/ImageView;

    const-string v1, "$ivNoteCreate"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
