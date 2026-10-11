.class public Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseCompatLoadingForDrawables"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$Companion;,
        Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhysicalShapeIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicalShapeIconView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,329:1\n1#2:330\n30#3:331\n91#3,14:332\n52#3:346\n91#3,14:347\n*S KotlinDebug\n*F\n+ 1 PhysicalShapeIconView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView\n*L\n262#1:331\n262#1:332,14\n266#1:346\n266#1:347,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0017\u0018\u0000 ~2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001~B\u0011\u0008\u0016\u0012\u0006\u0010x\u001a\u00020w\u00a2\u0006\u0004\u0008y\u0010zB\u001d\u0008\u0016\u0012\u0006\u0010x\u001a\u00020w\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008y\u0010{B%\u0008\u0016\u0012\u0006\u0010x\u001a\u00020w\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0006\u0010|\u001a\u00020\u0006\u00a2\u0006\u0004\u0008y\u0010}J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u001b\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000cH\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0015\u001a\u00020\u0004H\u0002J?\u0010 \u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00082#\u0008\u0002\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e0\u0019H\u0002J\u0012\u0010#\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010&\u001a\u00020\u00042\u0006\u0010%\u001a\u00020$H\u0016J\u000e\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'J\u0012\u0010,\u001a\u00020\u00042\u0008\u0008\u0002\u0010+\u001a\u00020*H\u0016J\u0019\u0010.\u001a\u0004\u0018\u00010-2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008.\u0010/J\u0018\u00102\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006H\u0014J\u0010\u00103\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0015J\u0010\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u0006H\u0016J\u0018\u00108\u001a\u00020\u00042\u0006\u00106\u001a\u00020*2\u0006\u00107\u001a\u00020*H\u0016J\u0010\u0010;\u001a\u00020\u00042\u0006\u0010:\u001a\u000209H\u0016J\u0008\u0010<\u001a\u00020$H\u0016J\u0008\u0010=\u001a\u00020*H\u0016J\u0008\u0010>\u001a\u00020*H\u0016J\u0010\u0010@\u001a\u00020\u00042\u0006\u0010?\u001a\u00020*H\u0016J\u0008\u0010A\u001a\u00020\u0004H\u0016J\u0008\u0010B\u001a\u00020\u0004H\u0014R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR$\u0010N\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR$\u0010Q\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010I\u001a\u0004\u0008O\u0010K\"\u0004\u0008P\u0010MR$\u0010W\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010R\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR$\u0010Z\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010R\u001a\u0004\u0008X\u0010T\"\u0004\u0008Y\u0010VR$\u0010]\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010I\u001a\u0004\u0008[\u0010K\"\u0004\u0008\\\u0010MR\u0014\u0010`\u001a\u00020^8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010_R\u0016\u0010c\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010dR\u0016\u0010g\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010dR\u0016\u0010:\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010hR\u0018\u0010(\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010iR\u0016\u0010m\u001a\u00020j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0016\u0010o\u001a\u00020j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010lR\u0018\u00104\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0016\u0010=\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010bR\u0016\u0010t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010dR\u0016\u0010v\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010d\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;",
        "Landroid/view/View;",
        "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;",
        "Lcom/onyx/android/sdk/theme/widgets/Tintable;",
        "",
        "i",
        "",
        "drawableId",
        "Landroid/graphics/drawable/Drawable;",
        "g",
        "(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;",
        "p",
        "",
        "trans",
        "h",
        "c",
        "m",
        "k",
        "animValue",
        "o",
        "j",
        "d",
        "Landroid/graphics/Canvas;",
        "canvas",
        "drawable",
        "Lkotlin/Function1;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/ParameterName;",
        "name",
        "bitmap",
        "Landroid/graphics/RectF;",
        "rectMapper",
        "e",
        "Landroid/util/AttributeSet;",
        "attrs",
        "initParams",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "shapeToolType",
        "setShapeTool",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgs",
        "onPenArgsChanged",
        "",
        "roundedCorner",
        "setDrawableResource",
        "Landroid/graphics/drawable/VectorDrawable;",
        "getVectorDrawable",
        "(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "onDraw",
        "color",
        "setHintColor",
        "isSelected",
        "isFromClick",
        "setViewSelect",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "setDockType",
        "getViewShapeType",
        "isViewSelected",
        "isVipType",
        "enable",
        "enableShapeView",
        "tint",
        "onDetachedFromWindow",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "getShapeToolType",
        "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "setShapeToolType",
        "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V",
        "f",
        "Landroid/graphics/drawable/Drawable;",
        "getStrokeDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setStrokeDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "strokeDrawable",
        "getHighlightDrawable",
        "setHighlightDrawable",
        "highlightDrawable",
        "Landroid/graphics/drawable/VectorDrawable;",
        "getFillDrawable",
        "()Landroid/graphics/drawable/VectorDrawable;",
        "setFillDrawable",
        "(Landroid/graphics/drawable/VectorDrawable;)V",
        "fillDrawable",
        "getFillUnselectDrawable",
        "setFillUnselectDrawable",
        "fillUnselectDrawable",
        "getUnselectedDrawable",
        "setUnselectedDrawable",
        "unselectedDrawable",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "bitmapPaint",
        "l",
        "Z",
        "isAlwaysShowFill",
        "I",
        "minTransResId",
        "n",
        "maxTransResId",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "Landroid/animation/ValueAnimator;",
        "q",
        "Landroid/animation/ValueAnimator;",
        "alphaAnimator",
        "r",
        "transYAnimator",
        "s",
        "Ljava/lang/Integer;",
        "t",
        "u",
        "iconWidth",
        "v",
        "iconHeight",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhysicalShapeIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicalShapeIconView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,329:1\n1#2:330\n30#3:331\n91#3,14:332\n52#3:346\n91#3,14:347\n*S KotlinDebug\n*F\n+ 1 PhysicalShapeIconView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView\n*L\n262#1:331\n262#1:332,14\n266#1:346\n266#1:347,14\n*E\n"
    }
.end annotation


# static fields
.field public static final ANIM_ALPHA_END_VALUE:F = 1.0f

.field public static final ANIM_ALPHA_START_VALUE:F = 0.3f

.field public static final ANIM_DURATION:J = 0xc8L

.field public static final ANIM_TRANS_Y_END_VALUE:F = 1.0f

.field public static final ANIM_TRANS_Y_START_VALUE:F = 0.0f

.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ROTATION_LEFT:F = 270.0f

.field public static final ROTATION_RIGHT:F = 90.0f

.field public static final ROTATION_TOP_BOTTOM:F


# instance fields
.field public e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Landroid/graphics/drawable/VectorDrawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Landroid/graphics/drawable/VectorDrawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Z

.field public m:I

.field public n:I

.field public o:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Z

.field public u:I

.field public v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->Companion:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$Companion;

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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->INK_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->k:Landroid/graphics/Paint;

    .line 7
    sget p1, Lcom/onyx/android/sdk/device/R$dimen;->dp_0:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->m:I

    .line 8
    sget p1, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->n:I

    .line 9
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->o:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 p1, 0x2

    new-array p3, p1, [F

    .line 10
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v0, 0xc8

    .line 11
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-string v3, "apply(...)"

    .line 13
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->q:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 14
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 17
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->r:Landroid/animation/ValueAnimator;

    .line 18
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->initParams(Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->i()V

    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->n(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getIconHeight$p(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->v:I

    return p0
.end method

.method public static final synthetic access$getIconWidth$p(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->u:I

    return p0
.end method

.method public static final synthetic access$resetDrawablesAlpha(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->l(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$drawDrawable$1;

    invoke-direct {p3, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$drawDrawable$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: drawDrawable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final l(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->o(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;FFFLandroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p4, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->t:Z

    if-eqz v0, :cond_2

    mul-float/2addr p4, p2

    sub-float/2addr p1, p4

    goto :goto_2

    :cond_2
    mul-float/2addr p4, p2

    add-float p1, p3, p4

    :goto_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h(F)V

    :cond_3
    return-void
.end method

.method public static synthetic setDrawableResource$default(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setDrawableResource(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setDrawableResource"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->d()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->k()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->m()V

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Bitmap;",
            "+",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->u:I

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->v:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1, v2}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableShapeView(Z)V
    .locals 0

    return-void
.end method

.method public final g(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final getFillDrawable()Landroid/graphics/drawable/VectorDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    return-object p0
.end method

.method public final getFillUnselectDrawable()Landroid/graphics/drawable/VectorDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->i:Landroid/graphics/drawable/VectorDrawable;

    return-object p0
.end method

.method public final getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->g:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public final getStrokeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getUnselectedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getVectorDrawable(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->g(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public final h(F)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->o:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->k:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method public initParams(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->PhysicalShapeIconView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->PhysicalShapeIconView_alwaysShowFillColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->l:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->PhysicalShapeIconView_minTrans:I

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->m:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->PhysicalShapeIconView_maxTrans:I

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->n:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public isViewSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->t:Z

    return p0
.end method

.method public isVipType()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->isVipType()Z

    move-result p0

    return p0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    return-void
.end method

.method public final k()V
    .locals 2

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->o(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sunia/HTREnginev2/w3l;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w3l;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$showAlphaAnim$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$showAlphaAnim$$inlined$doOnEnd$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$showAlphaAnim$$inlined$doOnCancel$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$showAlphaAnim$$inlined$doOnCancel$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final m()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->n:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->m:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    sub-float v2, v1, v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->r:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/sunia/HTREnginev2/x3l;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/sunia/HTREnginev2/x3l;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;FFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final o(F)V
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->t:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    int-to-float v0, v1

    sub-float/2addr v0, p1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    sub-float/2addr v1, p1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    :goto_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->d()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->t:Z

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_1
    iget-object v9, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->i:Landroid/graphics/drawable/VectorDrawable;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-static/range {v7 .. v12}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_3
    iget-object v9, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-static/range {v7 .. v12}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->g:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->u:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->v:I

    return-void
.end method

.method public final onPenArgsChanged(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->p:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getRoundCorner()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setDrawableResource(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setHintColor(I)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->t:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->m:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->n:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dockType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->o:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/high16 p1, 0x43870000    # 270.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setDrawableResource(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getPhysicsDrawables(Z)Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getStrokeRes()I

    move-result v0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getHighlightRes()I

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawableById(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getFillRes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->getVectorDrawable(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getFillUnselectRes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->getVectorDrawable(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->i:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getUnselectRes()I

    move-result p1

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final setFillDrawable(Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/VectorDrawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    return-void
.end method

.method public final setFillUnselectDrawable(Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/VectorDrawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->i:Landroid/graphics/drawable/VectorDrawable;

    return-void
.end method

.method public final setHighlightDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setHintColor(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->s:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->h:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->i:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShapeTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeToolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setDrawableResource$default(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setShapeToolType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-void
.end method

.method public final setStrokeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setUnselectedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setViewSelect(ZZ)V
    .locals 0

    if-nez p2, :cond_0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->t:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->p()V

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->t:Z

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->t:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->c()V

    return-void
.end method

.method public tint()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->p:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getRoundCorner()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setDrawableResource(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
