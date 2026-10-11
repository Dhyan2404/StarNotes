.class public Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeIconView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,301:1\n1#2:302\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u00082\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0011\u0008\u0016\u0012\u0006\u0010|\u001a\u00020{\u00a2\u0006\u0004\u0008}\u0010~B\u001d\u0008\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008}\u0010\u007fB\'\u0008\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0007\u0010\u0080\u0001\u001a\u00020\u0008\u00a2\u0006\u0005\u0008}\u0010\u0081\u0001J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u001b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J?\u0010 \u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\r2#\u0008\u0002\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e0\u0019H\u0002J\u0010\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H\u0016J\u0008\u0010$\u001a\u00020\u0006H\u0016J\u0010\u0010&\u001a\u00020\u00062\u0008\u0008\u0001\u0010%\u001a\u00020\u0008J\u0010\u0010\'\u001a\u00020\u00062\u0008\u0008\u0001\u0010%\u001a\u00020\u0008J\u0010\u0010(\u001a\u00020\u00062\u0008\u0008\u0001\u0010%\u001a\u00020\u0008J\u0006\u0010)\u001a\u00020\u0006J\u0018\u0010,\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0008H\u0014J\u0010\u0010-\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0015J\u0006\u0010.\u001a\u00020\u0006J\u0010\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u0008H\u0016J\u0018\u00104\u001a\u00020\u00062\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u000201H\u0016J\u0008\u00105\u001a\u00020!H\u0016J\u0008\u00106\u001a\u000201H\u0016J\u0008\u00107\u001a\u000201H\u0016J\u0010\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u000201H\u0016J\u0010\u0010<\u001a\u00020\u00062\u0006\u0010;\u001a\u00020:H\u0016J\u0008\u0010=\u001a\u00020\u0006H\u0016R\u0016\u0010?\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010>R\u0016\u0010@\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010>R\u0016\u0010A\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010>R\u0016\u0010B\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010>R\u0016\u0010C\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010>R\u0016\u0010E\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010DR\u0016\u0010F\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010DR\u0016\u0010H\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010DR\"\u0010\"\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR$\u0010U\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR$\u0010\\\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[R$\u0010`\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010W\u001a\u0004\u0008^\u0010Y\"\u0004\u0008_\u0010[R$\u0010d\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010W\u001a\u0004\u0008b\u0010Y\"\u0004\u0008c\u0010[R$\u0010h\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010P\u001a\u0004\u0008f\u0010R\"\u0004\u0008g\u0010TR$\u0010l\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008i\u0010P\u001a\u0004\u0008j\u0010R\"\u0004\u0008k\u0010TR\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008n\u0010oR\u0018\u0010/\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\u0016\u0010t\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010DR\u0016\u0010x\u001a\u00020u8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\u0016\u0010z\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010D\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;",
        "Landroid/view/View;",
        "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;",
        "Lcom/onyx/android/sdk/theme/widgets/Tintable;",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "k",
        "",
        "drawableId",
        "Landroid/graphics/drawable/VectorDrawable;",
        "j",
        "(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "i",
        "(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "e",
        "a",
        "g",
        "b",
        "h",
        "f",
        "drawable",
        "Lkotlin/Function1;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/ParameterName;",
        "name",
        "bitmap",
        "Landroid/graphics/RectF;",
        "rectMapper",
        "c",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "shapeToolType",
        "setShapeTool",
        "setDrawableResource",
        "tintColorRes",
        "setNormalTint",
        "setArrowTint",
        "setSelectBgTint",
        "applyIconTheme",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "onDraw",
        "clearHintColor",
        "color",
        "setHintColor",
        "",
        "isSelected",
        "isFromClick",
        "setViewSelect",
        "getViewShapeType",
        "isViewSelected",
        "isVipType",
        "enable",
        "enableShapeView",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "setDockType",
        "tint",
        "I",
        "normalTintColor",
        "unEnableTintColor",
        "selectArrowTintColor",
        "selectBgTintColor",
        "unSelectFillTintColor",
        "Z",
        "alwaysShowFillColor",
        "showSelectArrowIndicator",
        "l",
        "showSelectedStroke",
        "m",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "getShapeToolType",
        "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "setShapeToolType",
        "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V",
        "n",
        "Landroid/graphics/drawable/Drawable;",
        "getSelectDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setSelectDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "selectDrawable",
        "o",
        "Landroid/graphics/drawable/VectorDrawable;",
        "getSelectArrowDrawable",
        "()Landroid/graphics/drawable/VectorDrawable;",
        "setSelectArrowDrawable",
        "(Landroid/graphics/drawable/VectorDrawable;)V",
        "selectArrowDrawable",
        "p",
        "getSelectFillDrawable",
        "setSelectFillDrawable",
        "selectFillDrawable",
        "q",
        "getNormalDrawable",
        "setNormalDrawable",
        "normalDrawable",
        "r",
        "getBgDrawable",
        "setBgDrawable",
        "bgDrawable",
        "s",
        "getSelectedStrokeDrawable",
        "setSelectedStrokeDrawable",
        "selectedStrokeDrawable",
        "Landroid/graphics/Paint;",
        "t",
        "Landroid/graphics/Paint;",
        "bitmapPaint",
        "u",
        "Ljava/lang/Integer;",
        "v",
        "isSelect",
        "",
        "w",
        "F",
        "iconSize",
        "x",
        "isArrowClicked",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
        "SMAP\nShapeIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeIconView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,301:1\n1#2:302\n*E\n"
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Landroid/graphics/drawable/VectorDrawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Landroid/graphics/drawable/VectorDrawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Landroid/graphics/drawable/VectorDrawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Z

.field public w:F

.field public x:Z


# direct methods
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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_01:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->e:I

    .line 6
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_03:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->f:I

    .line 7
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->g:I

    .line 8
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_bg_primary_color_01:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->h:I

    .line 9
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_pen_tool_normal_bg:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->i:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->k:Z

    .line 11
    sget-object p3, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->INK_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    .line 12
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->t:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->k(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getIconSize$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;)F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->w:F

    return p0
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView$drawDrawable$1;

    invoke-direct {p3, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView$drawDrawable$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->c(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: drawDrawable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->j:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->v:Z

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->r:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->s:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView$drawAlwaysSelectFillDrawable$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView$drawAlwaysSelectFillDrawable$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->c(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->h(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->n:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final applyIconTheme()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->q:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->e:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->o:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->g:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getDrawableRes()Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getBgRes()I

    move-result v0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->r:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->o:Landroid/graphics/drawable/VectorDrawable;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView$drawArrowIndicatorDrawable$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView$drawArrowIndicatorDrawable$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->c(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->t:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final clearHintColor()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->u:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->p:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->q:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->e:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->f:I

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->q:Landroid/graphics/drawable/VectorDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public enableShapeView(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->i:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->p:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->p:Landroid/graphics/drawable/VectorDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->v:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->r:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->h(Landroid/graphics/Canvas;)V

    iget-object v9, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->n:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-static/range {v7 .. v12}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->b(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->r:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getNormalDrawable()Landroid/graphics/drawable/VectorDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->q:Landroid/graphics/drawable/VectorDrawable;

    return-object p0
.end method

.method public final getSelectArrowDrawable()Landroid/graphics/drawable/VectorDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->o:Landroid/graphics/drawable/VectorDrawable;

    return-object p0
.end method

.method public final getSelectDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getSelectFillDrawable()Landroid/graphics/drawable/VectorDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->p:Landroid/graphics/drawable/VectorDrawable;

    return-object p0
.end method

.method public final getSelectedStrokeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->s:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->p:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->p:Landroid/graphics/drawable/VectorDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final i(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
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

.method public isViewSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->v:Z

    return p0
.end method

.method public isVipType()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->isVipType()Z

    move-result p0

    return p0
.end method

.method public final j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->i(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

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

.method public final k(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->ShapeIconView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShapeIconView_normalTintColor:I

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_01:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->e:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShapeIconView_selectArrowTintColor:I

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->g:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShapeIconView_normalTintColor:I

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_bg_primary_color_01:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->h:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShapeIconView_alwaysShowFillColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->j:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShapeIconView_showSelectedStroke:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->l:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShapeIconView_showSelectArrowIndicator:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->k:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
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

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->g(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->f(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->e(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$dimen;->tool_icon_size:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->w:F

    float-to-int p2, p1

    float-to-int p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setArrowTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->g:I

    return-void
.end method

.method public final setBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->r:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "dockType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setDrawableResource()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getDrawableRes()Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getBgRes()I

    move-result v1

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->r:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->isThemeIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getSelectRes()I

    move-result v1

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getSelectRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getSelectArrow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->o:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getNormalRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->q:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getSelectFillRes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->p:Landroid/graphics/drawable/VectorDrawable;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_shape_tool_select_stroke:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->applyIconTheme()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setHintColor(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->u:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->p:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setNormalDrawable(Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/VectorDrawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->q:Landroid/graphics/drawable/VectorDrawable;

    return-void
.end method

.method public final setNormalTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->e:I

    return-void
.end method

.method public final setSelectArrowDrawable(Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/VectorDrawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->o:Landroid/graphics/drawable/VectorDrawable;

    return-void
.end method

.method public final setSelectBgTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->h:I

    return-void
.end method

.method public final setSelectDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->n:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setSelectFillDrawable(Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/VectorDrawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->p:Landroid/graphics/drawable/VectorDrawable;

    return-void
.end method

.method public final setSelectedStrokeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->s:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShapeTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeToolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setDrawableResource()V

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->m:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-void
.end method

.method public setViewSelect(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->v:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->applyIconTheme()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setDrawableResource()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
