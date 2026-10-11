.class public final Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTagTreeTouchListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagTreeTouchListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,162:1\n1#2:163\n256#3,2:164\n256#3,2:166\n256#3,2:168\n*S KotlinDebug\n*F\n+ 1 NoteTagTreeTouchListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener\n*L\n135#1:164,2\n152#1:166,2\n157#1:168,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0010\u0010\u000f\u001a\u000c\u0012\u0004\u0012\u00020\r0\u000cj\u0002`\u000e\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u000e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001b\u00a2\u0006\u0004\u00089\u0010:J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0008H\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\u0011\u001a\u00020\u00102\u0010\u0010\u000f\u001a\u000c\u0012\u0004\u0012\u00020\r0\u000cj\u0002`\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u000f\u001a\u000c\u0012\u0004\u0012\u00020\r0\u000cj\u0002`\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0019R\u001c\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010*\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u00100\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010\"R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u0006;"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View;",
        "itemView",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouch",
        "",
        "b",
        "f",
        "g",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "treeNode",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "c",
        "d",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;",
        "Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;",
        "shadowView",
        "Lkotlin/Function0;",
        "",
        "h",
        "Lkotlin/jvm/functions/Function0;",
        "getSelectedId",
        "",
        "i",
        "I",
        "dragThreshold",
        "",
        "j",
        "J",
        "longClickTime",
        "k",
        "Z",
        "performDrag",
        "Landroid/graphics/PointF;",
        "l",
        "Landroid/graphics/PointF;",
        "downPoint",
        "m",
        "longPressTimerKey",
        "Landroid/widget/PopupWindow;",
        "n",
        "Landroid/widget/PopupWindow;",
        "popup",
        "Lcom/onyx/android/sdk/base/data/TimeGuard;",
        "o",
        "Lcom/onyx/android/sdk/base/data/TimeGuard;",
        "timeGuard",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;Lkotlin/jvm/functions/Function0;)V",
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
        "SMAP\nNoteTagTreeTouchListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagTreeTouchListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,162:1\n1#2:163\n256#3,2:164\n256#3,2:166\n256#3,2:168\n*S KotlinDebug\n*F\n+ 1 NoteTagTreeTouchListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener\n*L\n135#1:164,2\n152#1:166,2\n157#1:168,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/base/data/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:I

.field public final j:J

.field public k:Z

.field public l:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:I

.field public n:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Lcom/onyx/android/sdk/base/data/TimeGuard;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;",
            "Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "treeNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadowView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getSelectedId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->g:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;

    iput-object p4, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->h:Lkotlin/jvm/functions/Function0;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getMinDragThreshold()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->i:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->j:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->m:I

    new-instance p1, Lcom/onyx/android/sdk/base/data/TimeGuard;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/base/data/TimeGuard;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->o:Lcom/onyx/android/sdk/base/data/TimeGuard;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->e(Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$onLongClick(Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->d(Landroid/view/View;)V

    return-void
.end method

.method public static final e(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->m:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->m:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->n:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->n:Landroid/widget/PopupWindow;

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/base/data/TreeNode;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)",
            "Landroidx/constraintlayout/widget/ConstraintLayout;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->e:Landroid/content/Context;

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_down:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->e:Landroid/content/Context;

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_right:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->g:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;->ivTreeExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->g:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;->tvItemName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->g:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;->tvTotalCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getChildCount()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x63

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/LongKt;->formatReadableValue(Ljava/lang/Long;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->g:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;->ivTreeExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivTreeExpand"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->g:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/TagOpPopup;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->e:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/category/ui/TagOpPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    sget v2, Lcom/onyx/galaxy/note/R$id;->fl_root:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$id;->v_op:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->h:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/onyx/android/sdk/skin/R$drawable;->select_colors_gradient_bg_no_radius:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$color;->transparent:I

    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->e:Landroid/content/Context;

    sget v5, Lcom/onyx/galaxy/note/R$color;->transparent:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Lcom/sunia/HTREnginev2/a3k;

    invoke-direct {v4, v2, v0, v3}, Lcom/sunia/HTREnginev2/a3k;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/category/ui/TagOpPopup;->show(Landroid/view/View;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->n:Landroid/widget/PopupWindow;

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->l:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->k:Z

    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;

    const-string v1, "NoteTagTreeDragListener"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->createCustomClipData(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->c(Lcom/onyx/android/sdk/base/data/TreeNode;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    const/16 v2, 0x200

    invoke-static {p1, v0, v1, p0, v2}, Landroidx/core/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->f()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->b()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->l:Landroid/graphics/PointF;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->k:Z

    if-nez v0, :cond_5

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->i:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->o:Lcom/onyx/android/sdk/base/data/TimeGuard;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TimeGuard;->check()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->b()V

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->k:Z

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->g(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->k:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->o:Lcom/onyx/android/sdk/base/data/TimeGuard;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TimeGuard;->check()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->b()V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->f()V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-direct {v0, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->l:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->o:Lcom/onyx/android/sdk/base/data/TimeGuard;

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p2, v2, v3, v1, v0}, Lcom/onyx/android/sdk/base/data/TimeGuard;->resetStartTime$default(Lcom/onyx/android/sdk/base/data/TimeGuard;JILjava/lang/Object;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->k:Z

    sget-object p2, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-wide v2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->j:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener$onTouch$1;

    invoke-direct {v4, p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener$onTouch$1;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;Landroid/view/View;)V

    invoke-virtual {p2, v2, v3, v0, v4}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->m:I

    :cond_5
    :goto_0
    return v1
.end method
