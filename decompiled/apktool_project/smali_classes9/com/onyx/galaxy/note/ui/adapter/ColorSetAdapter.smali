.class public final Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;,
        Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;",
        ">;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter<",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorSetAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorSetAdapter.kt\ncom/onyx/galaxy/note/ui/adapter/ColorSetAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n298#2,2:157\n91#3,14:159\n766#4:173\n857#4,2:174\n1864#4,3:176\n*S KotlinDebug\n*F\n+ 1 ColorSetAdapter.kt\ncom/onyx/galaxy/note/ui/adapter/ColorSetAdapter\n*L\n74#1:157,2\n134#1:159,14\n150#1:173\n150#1:174,2\n151#1:176,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0018\u0000 12\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0004R\u00020\u00000\u0003:\u000221B/\u0012\u000e\u0008\u0002\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0016\u0008\u0002\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010#\u00a2\u0006\u0004\u0008/\u00100J&\u0010\n\u001a\u00020\t2\n\u0010\u0005\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0014J4\u0010\n\u001a\u00020\t2\n\u0010\u0005\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0014J$\u0010\u0013\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0006H\u0014J\u0010\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u0010\u0010\u0017\u001a\u00020\t2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u0014\u0010\u0019\u001a\u00020\t2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bJ\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0006\u0010\u001c\u001a\u00020\tJ\u0018\u0010 \u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0006H\u0002R\u001c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R$\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0014\u0010*\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "",
        "",
        "payloads",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "onViewHolderStartDrag",
        "onViewHolderEndDrag",
        "colors",
        "updateSelectedPos",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;",
        "getDragItem",
        "updateOrder",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;",
        "grid",
        "color",
        "r",
        "Ljava/util/List;",
        "selectedColors",
        "Lkotlin/Function1;",
        "s",
        "Lkotlin/jvm/functions/Function1;",
        "onColorSetSelected",
        "",
        "t",
        "J",
        "duration",
        "",
        "u",
        "F",
        "shadowRadius",
        "<init>",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "Companion",
        "ColorSetItemViewHolder",
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
        "SMAP\nColorSetAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorSetAdapter.kt\ncom/onyx/galaxy/note/ui/adapter/ColorSetAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n298#2,2:157\n91#3,14:159\n766#4:173\n857#4,2:174\n1864#4,3:176\n*S KotlinDebug\n*F\n+ 1 ColorSetAdapter.kt\ncom/onyx/galaxy/note/ui/adapter/ColorSetAdapter\n*L\n74#1:157,2\n134#1:159,14\n150#1:173\n150#1:174,2\n151#1:176,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final v:Ljava/lang/String; = "pay_load_key_selected"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:J

.field public final u:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->Companion:Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->s:Lkotlin/jvm/functions/Function1;

    .line 7
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$integer;->list_item_drag_duration:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->t:J

    .line 8
    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->u:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->p(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->o(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->q(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r:Ljava/util/List;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p2

    const-string v0, "pay_load_key_selected"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->s:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;Landroid/animation/ValueAnimator;)V
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->setShadowRadius(Ljava/lang/Number;)V

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->showShadow(Z)V

    :cond_1
    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;Landroid/animation/ValueAnimator;)V
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

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
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;ILcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;ILcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Ljava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;ILcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;

    move-result-object p1

    .line 4
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->nameText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->gridLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 6
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->gridLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string p2, "gridLayout"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/v2e;

    invoke-direct {v4, p0, p3}, Lcom/sunia/HTREnginev2/v2e;-><init>(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 7
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->grid1:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    const-string v0, "grid1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;I)V

    .line 8
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->grid2:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    const-string v0, "grid2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;I)V

    .line 9
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->grid3:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    const-string v0, "grid3"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;I)V

    .line 10
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->grid4:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    const-string v0, "grid4"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;I)V

    .line 11
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->grid5:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    const-string v0, "grid5"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;I)V

    .line 12
    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->ivMenu:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p1, "ivMenu"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getPreset()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    .line 13
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;ILcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;",
            "I",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;ILcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    .line 16
    :cond_0
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    instance-of p4, p2, Ljava/util/Map;

    if-eqz p4, :cond_2

    .line 18
    check-cast p2, Ljava/util/Map;

    const-string p4, "pay_load_key_selected"

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->gridLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r:Ljava/util/List;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;
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

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;-><init>(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;)V

    return-object p2
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
    check-cast p1, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->u:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/t2e;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/t2e;-><init>(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$onViewHolderEndDrag$$inlined$addListener$default$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$onViewHolderEndDrag$$inlined$addListener$default$1;-><init>(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v1, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->t:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->updateOrder()V

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
    check-cast p1, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemColorSetBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->showShadow(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    iget v2, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->u:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/u2e;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/u2e;-><init>(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide p0, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->t:J

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final r(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setColor(I)V

    return-void
.end method

.method public final updateOrder()V
    .locals 12

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getPreset()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v2, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setOrderIndex(J)V

    move v1, v3

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/onyx/galaxy/note/editor/action/colorset/SaveColorSetAction;

    invoke-direct {v6, v0}, Lcom/onyx/galaxy/note/editor/action/colorset/SaveColorSetAction;-><init>(Ljava/util/List;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final updateSelectedPos(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->r:Ljava/util/List;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p1

    const-string v0, "pay_load_key_selected"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method
