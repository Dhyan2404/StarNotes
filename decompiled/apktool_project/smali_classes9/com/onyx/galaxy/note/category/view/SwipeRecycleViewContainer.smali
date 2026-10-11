.class public final Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$Companion;,
        Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0018\u0000 *2\u00020\u0001:\u0002*+B\u0011\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008%\u0010&B\u001b\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008%\u0010\'B#\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010(\u001a\u00020\u0016\u00a2\u0006\u0004\u0008%\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\u000b\u001a\u00020\u0006J\u001a\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0006H\u0002R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR\u0018\u0010$\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;",
        "Landroid/widget/FrameLayout;",
        "Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;",
        "getRecycleView",
        "Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;",
        "listener",
        "",
        "setOnSwipeStateChangeListener",
        "",
        "enable",
        "setEnableSwipeDetector",
        "releaseSwipeIndex",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "a",
        "b",
        "Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;",
        "e",
        "Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;",
        "binding",
        "",
        "f",
        "I",
        "getSwipeStartIndex",
        "()I",
        "setSwipeStartIndex",
        "(I)V",
        "swipeStartIndex",
        "g",
        "getLastSwipeEndIndex",
        "setLastSwipeEndIndex",
        "lastSwipeEndIndex",
        "h",
        "Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;",
        "onSwipeStateChangeListener",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "OnSwipeStateChangeListener",
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
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVALID_INDEX:I = -0x1


# instance fields
.field public e:Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->Companion:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, p0, v0}, Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;

    move-result-object p3

    const-string v0, "inflate(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;

    const/4 p3, -0x1

    .line 5
    iput p3, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->f:I

    .line 6
    iput p3, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->g:I

    .line 7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->b()V

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;)Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;

    return-object p0
.end method

.method public static final synthetic access$getOnSwipeStateChangeListener$p(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;)Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->h:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/R$styleable;->SwipeRecycleViewContainer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->SwipeRecycleViewContainer_scrollBarEnable:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->setScrollBarEnable(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;->swipeContainer:Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;

    new-instance v1, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;-><init>(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->setOnSwipeListener(Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;)V

    return-void
.end method

.method public final getLastSwipeEndIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->g:I

    return p0
.end method

.method public final getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p0

    return-object p0
.end method

.method public final getSwipeStartIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->f:I

    return p0
.end method

.method public final releaseSwipeIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->f:I

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->g:I

    return-void
.end method

.method public final setEnableSwipeDetector(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;->swipeContainer:Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->setEnableSwipeDetector(Z)V

    return-void
.end method

.method public final setLastSwipeEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->g:I

    return-void
.end method

.method public final setOnSwipeStateChangeListener(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->h:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;

    return-void
.end method

.method public final setSwipeStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->f:I

    return-void
.end method
