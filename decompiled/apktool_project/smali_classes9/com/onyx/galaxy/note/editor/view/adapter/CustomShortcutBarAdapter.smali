.class public final Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;
.super Lcom/chad/library/adapter4/BaseMultiItemAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;,
        Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;,
        Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter<",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        ">;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter<",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomShortcutBarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,239:1\n91#2,14:240\n*S KotlinDebug\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter\n*L\n203#1:240,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u0002()B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008&\u0010\'J\u0010\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0008\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J\u0008\u0010\u0010\u001a\u00020\u0006H\u0002J\u0008\u0010\u0011\u001a\u00020\u0006H\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u0017\u0010!R\u001b\u0010%\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010 \u001a\u0004\u0008\u0013\u0010$\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter;",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "",
        "onViewHolderStartDrag",
        "onViewHolderEndDrag",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "shortcutType",
        "",
        "supportShortcutType",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;",
        "getDragItem",
        "q",
        "s",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "t",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "u",
        "F",
        "shadowRadius",
        "",
        "v",
        "J",
        "duration",
        "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;",
        "w",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;",
        "uiFeature",
        "x",
        "()Z",
        "hasRecords",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "SectionTitleItemViewHolder",
        "ShortcutItemViewHolder",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCustomShortcutBarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,239:1\n91#2,14:240\n*S KotlinDebug\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter\n*L\n203#1:240,14\n*E\n"
    }
.end annotation


# instance fields
.field public final t:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:F

.field public final v:J

.field public final w:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->t:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->u:F

    sget v0, Lcom/onyx/galaxy/note/R$integer;->list_item_drag_duration:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->v:J

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$uiFeature$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$uiFeature$2;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->w:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$hasRecords$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$hasRecords$2;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->x:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->q()V

    new-instance p1, Lcom/sunia/HTREnginev2/poe;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/poe;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->onItemViewType(Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->t:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->v(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->w(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic o(ILjava/util/List;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->p(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final p(ILjava/util/List;)I
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getItemType()I

    move-result p0

    return p0
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->setShadowRadius(Ljava/lang/Number;)V

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->showShadow(Z)V

    :cond_1
    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->setShadowRadius(Ljava/lang/Number;)V

    return-void
.end method


# virtual methods
.method public getDragItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem<",
            "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;

    return-object p1
.end method

.method public final onViewHolderEndDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->u:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/qoe;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/qoe;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$onViewHolderEndDrag$$inlined$addListener$default$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$onViewHolderEndDrag$$inlined$addListener$default$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->v:J

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final onViewHolderStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->showShadow(Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v3, v0, v2

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->u:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ooe;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/ooe;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->v:J

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final q()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->r()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->s()V

    return-void
.end method

.method public final r()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addSectionTitleItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addSectionTitleItem$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final s()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final supportShortcutType(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Z
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShortcutType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_AUDIO_SET:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->t()Z

    move-result p0

    return p0

    :cond_1
    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_ENCRYPTION:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    if-ne p1, v1, :cond_2

    sget-object p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->isEncryptionEnabled()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->u()Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportEditPage()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    return v1

    :cond_3
    sget-object p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public final t()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->x:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final u()Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->w:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    return-object p0
.end method
