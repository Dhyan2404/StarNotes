.class public final Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$Companion;,
        Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragToolEffectView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,331:1\n1#2:332\n256#3,2:333\n1855#4,2:335\n1855#4,2:337\n*S KotlinDebug\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView\n*L\n163#1:333,2\n208#1:335,2\n220#1:337,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 Y2\u00020\u0001:\u0002YZB\u0013\u0008\u0016\u0012\u0008\u0010Q\u001a\u0004\u0018\u00010P\u00a2\u0006\u0004\u0008R\u0010SB\u001d\u0008\u0016\u0012\u0008\u0010Q\u001a\u0004\u0018\u00010P\u0012\u0008\u0010U\u001a\u0004\u0018\u00010T\u00a2\u0006\u0004\u0008R\u0010VB%\u0008\u0016\u0012\u0008\u0010Q\u001a\u0004\u0018\u00010P\u0012\u0008\u0010U\u001a\u0004\u0018\u00010T\u0012\u0006\u0010W\u001a\u00020\u000b\u00a2\u0006\u0004\u0008R\u0010XJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J0\u0010\u0010\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0014J\u0016\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0014R\u0016\u0010\u001c\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001bR\u0016\u0010!\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001bR\"\u0010(\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010.\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010+R\u0014\u00100\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u0010+R\u0016\u00102\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010+R\u0016\u00104\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010+R\u0016\u00107\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u00109\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00106R\u0016\u0010;\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u00106R\u0016\u0010=\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u00106R\u0016\u0010?\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u00106R\u0017\u0010C\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u0010\u001b\u001a\u0004\u0008A\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010I\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u00106R.\u0010O\u001a\u001a\u0012\u0008\u0012\u00060KR\u00020\u00000Jj\u000c\u0012\u0008\u0012\u00060KR\u00020\u0000`L8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010N\u00a8\u0006["
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;",
        "Landroid/view/View;",
        "",
        "e",
        "d",
        "a",
        "c",
        "b",
        "f",
        "",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "isDragging",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "updateEffect",
        "",
        "widthOffset",
        "updateTranslateXOffset",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "F",
        "dragWidthRatio",
        "dragHeightRatio",
        "g",
        "contentViewWidthOffset",
        "h",
        "dragWidth",
        "i",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "getSelectDockType",
        "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "setSelectDockType",
        "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
        "selectDockType",
        "Landroid/graphics/Paint;",
        "j",
        "Landroid/graphics/Paint;",
        "fillPaint",
        "k",
        "strokePaint",
        "l",
        "selectLinePaint",
        "m",
        "selectFillPaint",
        "n",
        "lastFillPaint",
        "o",
        "I",
        "originFillAlpha",
        "p",
        "originStrokeAlpha",
        "q",
        "originSelectLineAlpha",
        "r",
        "originSelectFillAlpha",
        "s",
        "originLastFillAlpha",
        "t",
        "getCornerRadius",
        "()F",
        "cornerRadius",
        "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;",
        "u",
        "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;",
        "animHelper",
        "v",
        "showHideAnimKey",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;",
        "Lkotlin/collections/ArrayList;",
        "w",
        "Ljava/util/ArrayList;",
        "pathBeanList",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "PathBean",
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
        "SMAP\nDragToolEffectView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,331:1\n1#2:332\n256#3,2:333\n1855#4,2:335\n1855#4,2:337\n*S KotlinDebug\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView\n*L\n163#1:333,2\n208#1:335,2\n220#1:337,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DRAG_HEIGHT_RATIO:F = 0.7f

.field public static final DRAG_WIDTH_RATIO:F = 0.7f


# instance fields
.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public final t:F

.field public final u:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:I

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->Companion:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f333333    # 0.7f

    .line 4
    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->e:F

    .line 5
    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->f:F

    .line 6
    sget-object p3, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->i:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->j:Landroid/graphics/Paint;

    .line 8
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->k:Landroid/graphics/Paint;

    .line 9
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->l:Landroid/graphics/Paint;

    .line 10
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->m:Landroid/graphics/Paint;

    .line 11
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    .line 12
    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->t:F

    .line 13
    new-instance v4, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;

    invoke-direct {v4}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;-><init>()V

    iput-object v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->u:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;

    const/4 v4, -0x1

    .line 14
    iput v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->v:I

    .line 15
    new-instance v4, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    sget-object v5, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v4, v5}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    new-instance v5, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    sget-object v6, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v5, v6}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 17
    new-instance v6, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    sget-object v7, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v6, v7}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 18
    new-instance v7, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;

    invoke-direct {v7, p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    invoke-virtual {v7, p3}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    filled-new-array {v4, v5, v6, v7}, [Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;

    move-result-object p3

    .line 19
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->w:Ljava/util/ArrayList;

    const/4 p3, 0x1

    .line 20
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->m:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v3, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_5:I

    invoke-virtual {v3, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p3

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p1, :cond_0

    .line 30
    sget-object p3, Lcom/onyx/galaxy/note/R$styleable;->DragToolEffectView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget p2, Lcom/onyx/galaxy/note/R$styleable;->DragToolEffectView_drag_view_height:I

    sget p3, Lcom/onyx/galaxy/note/R$dimen;->drag_tool_height:I

    invoke-virtual {v3, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->h:F

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getContentViewWidthOffset$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->g:F

    return p0
.end method

.method public static final synthetic access$getDragHeightRatio$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->f:F

    return p0
.end method

.method public static final synthetic access$getDragWidth$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->h:F

    return p0
.end method

.method public static final synthetic access$getDragWidthRatio$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->e:F

    return p0
.end method

.method public static final synthetic access$getFillPaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->j:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$getLastFillPaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$getOriginFillAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->o:I

    return p0
.end method

.method public static final synthetic access$getOriginLastFillAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->s:I

    return p0
.end method

.method public static final synthetic access$getOriginSelectFillAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->r:I

    return p0
.end method

.method public static final synthetic access$getOriginSelectLineAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->q:I

    return p0
.end method

.method public static final synthetic access$getOriginStrokeAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->p:I

    return p0
.end method

.method public static final synthetic access$getSelectFillPaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->m:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$getSelectLinePaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->l:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$getStrokePaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->k:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$showSelectedAnim(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->a()V

    return-void
.end method

.method public static final synthetic access$startHideAnim(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->b()V

    return-void
.end method

.method public static final synthetic access$startShowAnim(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->c()V

    return-void
.end method

.method public static final synthetic access$updatePaintColor(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->e()V

    return-void
.end method

.method public static final synthetic access$updatePath(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->l:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->u:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->startSelectAnim(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->u:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$startHideAnim$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$startHideAnim$1;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->startHidden(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->u:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$startShowAnim$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$startShowAnim$1;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->startShow(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->o:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->p:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->q:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->r:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->s:I

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->j:Landroid/graphics/Paint;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$color;->drag_tool_effect_fill_color:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->m:Landroid/graphics/Paint;

    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_shape_icon_bg_color:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    sget v2, Lcom/onyx/galaxy/note/R$color;->drag_tool_effect_fill_color:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->k:Landroid/graphics/Paint;

    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->l:Landroid/graphics/Paint;

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->d()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->w:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->setRectF()V

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->t:F

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->applyRoundRect(F)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->isSelectDockType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->applySelectLinePath()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->t:F

    return p0
.end method

.method public final getSelectDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->i:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->w:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->isSelectDockType()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->getSelectLinePath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->getLastPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->f()V

    :cond_0
    return-void
.end method

.method public final setSelectDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->i:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-void
.end method

.method public final updateEffect(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 3
    .param p2    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dockType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->v:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;

    invoke-direct {v2, p1, p0, p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;-><init>(ZLcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    const-wide/16 p1, 0xa

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->v:I

    return-void
.end method

.method public final updateTranslateXOffset(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->g:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->f()V

    return-void
.end method
