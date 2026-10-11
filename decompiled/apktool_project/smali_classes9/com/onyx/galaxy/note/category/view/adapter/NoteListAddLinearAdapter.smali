.class public final Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;
.super Lcom/chad/library/adapter4/BaseDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$Companion;,
        Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseDifferAdapter<",
        "Ljava/lang/String;",
        "Lcom/chad/library/adapter4/viewholder/QuickViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u001a\u001bB\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J \u0010\t\u001a\u00020\u00072\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004J\"\u0010\u000e\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0015J \u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000bH\u0014R*\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;",
        "Lcom/chad/library/adapter4/BaseDifferAdapter;",
        "",
        "Lcom/chad/library/adapter4/viewholder/QuickViewHolder;",
        "Lkotlin/Function2;",
        "",
        "Landroid/view/View;",
        "",
        "callback",
        "setClickCallback",
        "holder",
        "",
        "position",
        "item",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "t",
        "Lkotlin/jvm/functions/Function2;",
        "clickCallback",
        "<init>",
        "()V",
        "Companion",
        "a",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final u:Ljava/lang/String; = "NoteListAddLinearAdapter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public t:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const-string v0, "NoteListAddLinearAdapter"

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getClickCallback$p(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;->t:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static synthetic n(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;->o(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final o(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "$gesture"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/QuickViewHolder;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/QuickViewHolder;ILjava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/QuickViewHolder;ILjava/lang/String;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter4/viewholder/QuickViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p3, Lcom/onyx/galaxy/note/R$id;->iv_note_create:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 3
    new-instance p3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 4
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;

    invoke-direct {v2, p3, p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter$onBindViewHolder$gesture$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;Landroid/widget/ImageView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 5
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p1, Lcom/sunia/HTREnginev2/qwj;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/qwj;-><init>(Landroid/view/GestureDetector;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/QuickViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/QuickViewHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/chad/library/adapter4/viewholder/QuickViewHolder;

    sget p1, Lcom/onyx/galaxy/note/R$layout;->item_note_linear_create_display:I

    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter4/viewholder/QuickViewHolder;-><init>(ILandroid/view/ViewGroup;)V

    return-object p0
.end method

.method public final setClickCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAddLinearAdapter;->t:Lkotlin/jvm/functions/Function2;

    return-void
.end method
