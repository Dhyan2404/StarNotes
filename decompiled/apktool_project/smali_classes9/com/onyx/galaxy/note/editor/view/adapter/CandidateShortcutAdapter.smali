.class public final Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;,
        Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;",
        ">;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter<",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCandidateShortcutAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CandidateShortcutAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,175:1\n277#2,2:176\n277#2,2:178\n91#3,14:180\n*S KotlinDebug\n*F\n+ 1 CandidateShortcutAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter\n*L\n77#1:176,2\n78#1:178,2\n137#1:180,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0004R\u00020\u00000\u0003:\u00015B\u000f\u0012\u0006\u0010 \u001a\u00020\u001d\u00a2\u0006\u0004\u00083\u00104J&\u0010\n\u001a\u00020\t2\n\u0010\u0005\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u0010\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0010\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u001e\u0010\u001c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u00060\u001a2\u0006\u0010\u0015\u001a\u00020\u0002H\u0002R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-R\u001b\u00102\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010+\u001a\u0004\u00080\u00101\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
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
        "shortcutType",
        "",
        "supportShortcutType",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;",
        "getDragItem",
        "Lkotlin/Pair;",
        "",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "s",
        "F",
        "shadowRadius",
        "",
        "t",
        "J",
        "duration",
        "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;",
        "u",
        "Lkotlin/Lazy;",
        "p",
        "()Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;",
        "uiFeature",
        "v",
        "n",
        "()Z",
        "hasRecords",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "CandidateShortcutViewHolder",
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
        "SMAP\nCandidateShortcutAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CandidateShortcutAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,175:1\n277#2,2:176\n277#2,2:178\n91#3,14:180\n*S KotlinDebug\n*F\n+ 1 CandidateShortcutAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter\n*L\n77#1:176,2\n78#1:178,2\n137#1:180,14\n*E\n"
    }
.end annotation


# instance fields
.field public final r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:F

.field public final t:J

.field public final u:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Lkotlin/Lazy;
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

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->s:F

    sget v0, Lcom/onyx/galaxy/note/R$integer;->list_item_drag_duration:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->t:J

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$uiFeature$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$uiFeature$2;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->u:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$hasRecords$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$hasRecords$2;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->v:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->r(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->q(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;Landroid/animation/ValueAnimator;)V
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->showShadow(Z)V

    :cond_1
    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;Landroid/animation/ValueAnimator;)V
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

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
            "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
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

.method public final n()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->v:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final o(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;->getEncryptionData(Z)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;->getShortcutModeData(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/data/ShortcutType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->supportShortcutType(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_04:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_03:I

    :goto_0
    if-nez v0, :cond_2

    .line 4
    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_04:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_03:I

    :goto_1
    if-nez v0, :cond_3

    .line 5
    sget v3, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_04:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    .line 6
    :goto_2
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->o(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Lkotlin/Pair;

    move-result-object p3

    .line 7
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;

    move-result-object p1

    .line 8
    iget-object v4, p1, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->menuIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageTintList(I)V

    .line 9
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    .line 10
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {v3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/theme/widgets/TintView;->setBackgroundColor(I)V

    .line 11
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->icEye:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "icEye"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v4

    .line 12
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->icDragTag:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "icDragTag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    .line 14
    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->menuIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    .line 16
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p3, p1, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    if-ge p2, p0, :cond_6

    move v4, v2

    :cond_6
    invoke-static {p3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 18
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;
    .locals 1
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
    new-instance p3, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p3, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;)V

    return-object p3
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
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->s:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/fnd;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/fnd;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$onViewHolderEndDrag$$inlined$addListener$default$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$onViewHolderEndDrag$$inlined$addListener$default$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->t:J

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
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->showShadow(Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v3, v0, v2

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->s:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/gnd;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/gnd;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->t:J

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final p()Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->u:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    return-object p0
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->n()Z

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
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;->p()Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportEditPage()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    return v1

    :cond_3
    sget-object p0, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method
