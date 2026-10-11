.class public final Lcom/onyx/galaxy/note/editor/view/custom/TapeView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/custom/TapeView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0018\u0000 :2\u00020\u0001:\u0001:B\u0011\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u00085\u00106B\u001b\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u00085\u00107B#\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u00108\u001a\u00020\u0002\u00a2\u0006\u0004\u00085\u00109J(\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0014J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J\u001a\u0010\u0010\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0007H\u0002J\u0008\u0010\u0012\u001a\u00020\u0007H\u0002J\u0008\u0010\u0013\u001a\u00020\u0007H\u0002J\u0008\u0010\u0014\u001a\u00020\u0007H\u0002R\u0017\u0010\u0019\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R*\u0010(\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u00028\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R*\u00100\u001a\u00020)2\u0006\u0010\"\u001a\u00020)8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010#\u001a\u0004\u00082\u0010%\"\u0004\u00083\u0010\'\u00a8\u0006;"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/TapeView;",
        "Landroid/view/View;",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "",
        "onSizeChanged",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "a",
        "d",
        "e",
        "b",
        "c",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "paint",
        "Landroid/graphics/Path;",
        "f",
        "Landroid/graphics/Path;",
        "path",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;",
        "g",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;",
        "shapeShaderManager",
        "value",
        "I",
        "getTapeShapeColor",
        "()I",
        "setTapeShapeColor",
        "(I)V",
        "tapeShapeColor",
        "",
        "i",
        "Ljava/lang/String;",
        "getTapeFillStyle",
        "()Ljava/lang/String;",
        "setTapeFillStyle",
        "(Ljava/lang/String;)V",
        "tapeFillStyle",
        "j",
        "getTapeShapeType",
        "setTapeShapeType",
        "tapeShapeType",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
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
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/custom/TapeView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAPE_SHAPE_TYPE_LINE:I = 0x0

.field public static final TAPE_SHAPE_TYPE_RECTANGLE:I = 0x1


# instance fields
.field public final e:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:I

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/TapeView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->Companion:Lcom/onyx/galaxy/note/editor/view/custom/TapeView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 3
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 5
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->f:Landroid/graphics/Path;

    .line 9
    new-instance p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    const/high16 p1, -0x10000

    .line 10
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->h:I

    .line 11
    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->TAPE_FILL_STYLE_BIAS:Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 16
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 17
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->f:Landroid/graphics/Path;

    .line 20
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    const/high16 v0, -0x10000

    .line 21
    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->h:I

    .line 22
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->TAPE_FILL_STYLE_BIAS:Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->i:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 28
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 29
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e:Landroid/graphics/Paint;

    .line 31
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->f:Landroid/graphics/Path;

    .line 32
    new-instance p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    const/high16 p1, -0x10000

    .line 33
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->h:I

    .line 34
    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->TAPE_FILL_STYLE_BIAS:Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/R$styleable;->TapeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->TapeView_tapeShapeType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->j:I

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->TapeView_tapeShapeColor:I

    const/high16 v0, -0x10000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->setTapeShapeColor(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->f:Landroid/graphics/Path;

    const/4 v3, 0x0

    add-float/2addr v3, v2

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->f:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v2

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->f:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v0, v1, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public final d()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->h:I

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->i:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->getTapeFillShader$default(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;IFLjava/lang/String;FILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->j:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->b()V

    :goto_0
    return-void
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getTapeFillStyle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getTapeShapeColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->h:I

    return p0
.end method

.method public final getTapeShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->j:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->f:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->d()V

    return-void
.end method

.method public final setTapeFillStyle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTapeShapeColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->h:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTapeShapeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TapeView;->j:I

    return-void
.end method
