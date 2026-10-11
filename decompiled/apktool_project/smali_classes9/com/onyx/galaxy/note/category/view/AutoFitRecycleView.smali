.class public final Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 92\u00020\u00012\u00020\u0002:\u00019B\u0011\u0008\u0016\u0012\u0006\u00103\u001a\u000202\u00a2\u0006\u0004\u00084\u00105B\u001d\u0008\u0016\u0012\u0006\u00103\u001a\u000202\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u00084\u00106B%\u0008\u0016\u0012\u0006\u00103\u001a\u000202\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u00107\u001a\u00020\t\u00a2\u0006\u0004\u00084\u00108J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003J(\u0010\u000e\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0015J\u0018\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tH\u0014J\u0006\u0010\u0012\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\tJ\u000e\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018J\u0008\u0010\u001b\u001a\u00020\u0005H\u0016J\u0012\u0010\u001e\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002J\u0008\u0010\u001f\u001a\u00020\u0005H\u0002J\u0008\u0010 \u001a\u00020\u0005H\u0002R\u0016\u0010#\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010&\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010\u0007\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010(R\u0016\u0010+\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010(R\u0016\u0010-\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010%R\u0016\u0010/\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010\"R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lcom/onyx/android/sdk/theme/widgets/Tintable;",
        "",
        "itemWidthLarge",
        "",
        "setItemWidthLarge",
        "itemWidthSmall",
        "setItemWidthSmall",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "widthSpec",
        "heightSpec",
        "onMeasure",
        "getSpanCount",
        "",
        "autoFit",
        "setAutoFitSpanCount",
        "count",
        "setSpanCount",
        "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
        "displayType",
        "setDisplayType",
        "tint",
        "Landroid/util/AttributeSet;",
        "attrs",
        "a1",
        "b1",
        "Z0",
        "W1",
        "Z",
        "autoFitSpanCount",
        "X1",
        "I",
        "defaultSpanCount",
        "Y1",
        "F",
        "Z1",
        "a2",
        "padding",
        "b2",
        "sizeChangeKey",
        "c2",
        "isPadUi",
        "d2",
        "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
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
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_SPAN_COUNT:I = 0x1

.field public static final DEFAULT_SPAN_SMALL:F = 60.0f

.field public static final DEFAULT_WIDTH_LARGE:F = 120.0f

.field public static final SIZE_CHANGE_TIME_DELAY:J = 0x258L


# instance fields
.field public W1:Z

.field public final X1:I

.field public Y1:F

.field public Z1:F

.field public a2:F

.field public b2:I

.field public c2:Z

.field public d2:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Companion:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView$Companion;

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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->W1:Z

    const/4 p3, 0x3

    .line 6
    iput p3, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->X1:I

    const/4 p3, -0x1

    .line 7
    iput p3, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->b2:I

    .line 8
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->c2:Z

    .line 9
    sget-object p1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->d2:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    .line 10
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->a1(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$fitSpanCount(Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Z0()V

    return-void
.end method


# virtual methods
.method public final Z0()V
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->W1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->d2:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    sget-object v2, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_LIST:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->getSpanCount()I

    move-result p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    if-eq p0, v1, :cond_2

    invoke-static {p0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_2
    return-void
.end method

.method public final a1(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->AutoFitRecycleView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->AutoFitRecycleView_widthLarge:I

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Y1:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->AutoFitRecycleView_widthSmall:I

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Z1:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->AutoFitRecycleView_padding:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_display_grid_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->a2:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->b1()V

    return-void
.end method

.method public final b1()V
    .locals 3

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->X1:I

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public final getSpanCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->c2:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Y1:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Z1:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->a2:F

    add-float/2addr v0, p0

    float-to-int p0, v0

    div-int/2addr v1, p0

    return v1
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Z0()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    if-eq p3, p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget p2, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->b2:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance p3, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView$onSizeChanged$1;

    invoke-direct {p3, p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView$onSizeChanged$1;-><init>(Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->b2:I

    :cond_0
    return-void
.end method

.method public final setAutoFitSpanCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->W1:Z

    return-void
.end method

.method public final setDisplayType(Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/NoteDisplayType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "displayType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->d2:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Z0()V

    return-void
.end method

.method public final setItemWidthLarge(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Y1:F

    :cond_0
    return-void
.end method

.method public final setItemWidthSmall(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->Z1:F

    :cond_0
    return-void
.end method

.method public final setSpanCount(I)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->W1:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    if-eq v2, p1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
