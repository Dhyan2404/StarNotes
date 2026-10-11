.class public final Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u00ea\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012:\u0008\u0006\u0010\u0002\u001a4\u0012\u0015\u0012\u0013\u0018\u00010\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00032b\u0008\u0006\u0010\u000b\u001a\\\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u000e\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\n0\u000c28\u0008\u0006\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0003H\u0086\u0008\u00f8\u0001\u0000\u001a\u00ce\u0002\u0010\u0012\u001a\u00020\u0001*\u00020\u00012:\u0008\u0006\u0010\u0013\u001a4\u0012\u0015\u0012\u0013\u0018\u00010\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u00032w\u0008\u0006\u0010\u0015\u001aq\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0018\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u001a\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u001b\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\n0\u00162M\u0008\u0006\u0010\u001e\u001aG\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u001f28\u0008\u0006\u0010!\u001a2\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u0003H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "setItemDragListener",
        "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;",
        "onItemDragStart",
        "Lkotlin/Function2;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lkotlin/ParameterName;",
        "name",
        "viewHolder",
        "",
        "pos",
        "",
        "onItemDragMoving",
        "Lkotlin/Function4;",
        "source",
        "from",
        "target",
        "to",
        "onItemDragEnd",
        "setItemSwipeListener",
        "onItemSwipeStart",
        "bindingAdapterPosition",
        "onItemSwipeMoving",
        "Lkotlin/Function5;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "dX",
        "dY",
        "",
        "isCurrentlyActive",
        "onItemSwiped",
        "Lkotlin/Function3;",
        "direction",
        "onItemSwipeEnd",
        "com.github.CymChad.brvah"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final setItemDragListener(Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 1
    .param p0    # Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemDragStart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemDragMoving"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemDragEnd"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$4$listener$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$4$listener$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setItemDragListener(Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    return-object p0
.end method

.method public static synthetic setItemDragListener$default(Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$1;->INSTANCE:Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$1;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget-object p2, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$2;->INSTANCE:Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$2;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$3;->INSTANCE:Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$3;

    :cond_2
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "onItemDragStart"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "onItemDragMoving"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "onItemDragEnd"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$4$listener$1;

    invoke-direct {p4, p1, p2, p3}, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$4$listener$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p4}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setItemDragListener(Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    return-object p0
.end method

.method public static final setItemSwipeListener(Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 1
    .param p0    # Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function5;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroid/graphics/Canvas;",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemSwipeStart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemSwipeMoving"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemSwiped"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemSwipeEnd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$5$listener$1;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$5$listener$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setItemSwipeListener(Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    return-object p0
.end method

.method public static synthetic setItemSwipeListener$default(Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$1;->INSTANCE:Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$1;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    sget-object p2, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$2;->INSTANCE:Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$2;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$3;->INSTANCE:Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$3;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    sget-object p4, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$4;->INSTANCE:Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$4;

    :cond_3
    const-string p5, "<this>"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "onItemSwipeStart"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "onItemSwipeMoving"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "onItemSwiped"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "onItemSwipeEnd"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p5, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$5$listener$1;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemSwipeListener$5$listener$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p5}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setItemSwipeListener(Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    return-object p0
.end method
