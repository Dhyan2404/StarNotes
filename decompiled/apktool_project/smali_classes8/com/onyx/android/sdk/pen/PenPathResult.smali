.class public Lcom/onyx/android/sdk/pen/PenPathResult;
.super Lcom/onyx/android/sdk/pen/PenResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pen/PenPathResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u0007\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 +2\u00020\u0001:\u0001+B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*J\u0013\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u0016J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016R\u001a\u0010\u0016\u001a\u00020\u00118\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/PenPathResult;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "",
        "other",
        "",
        "equals",
        "",
        "clearCache",
        "add",
        "append",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/graphics/Paint;",
        "paint",
        "draw",
        "",
        "getPointsCount",
        "Landroid/graphics/Path;",
        "b",
        "Landroid/graphics/Path;",
        "getPath$sdk_pen_release",
        "()Landroid/graphics/Path;",
        "path",
        "",
        "c",
        "[F",
        "getPoints",
        "()[F",
        "setPoints",
        "([F)V",
        "points",
        "",
        "d",
        "[I",
        "getPointSizeArray",
        "()[I",
        "setPointSizeArray",
        "([I)V",
        "pointSizeArray",
        "Landroid/graphics/RectF;",
        "rect",
        "<init>",
        "(Landroid/graphics/Path;Landroid/graphics/RectF;)V",
        "Companion",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/pen/PenPathResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Z

.field public static h:I

.field public static i:I


# instance fields
.field public final b:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/PenPathResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pen/PenPathResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pen/PenPathResult;->Companion:Lcom/onyx/android/sdk/pen/PenPathResult$Companion;

    const/4 v0, 0x0

    new-array v1, v0, [F

    sput-object v1, Lcom/onyx/android/sdk/pen/PenPathResult;->e:[F

    new-array v0, v0, [I

    sput-object v0, Lcom/onyx/android/sdk/pen/PenPathResult;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/pen/PenResult;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->b:Landroid/graphics/Path;

    const/4 p1, 0x0

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->c:[F

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->d:[I

    return-void
.end method

.method public static final synthetic access$getDUMP_POINTS$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/pen/PenPathResult;->g:Z

    return v0
.end method

.method public static final synthetic access$getPathCount$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/pen/PenPathResult;->h:I

    return v0
.end method

.method public static final synthetic access$getPointCount$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/pen/PenPathResult;->i:I

    return v0
.end method

.method public static final synthetic access$setPathCount$cp(I)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/pen/PenPathResult;->h:I

    return-void
.end method

.method public static final synthetic access$setPointCount$cp(I)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/pen/PenPathResult;->i:I

    return-void
.end method


# virtual methods
.method public append(Lcom/onyx/android/sdk/pen/PenResult;)Lcom/onyx/android/sdk/pen/PenResult;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/pen/PenResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/pen/PenPathResult;

    iget-object v0, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->b:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/lite/extension/PathKt;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lcom/onyx/android/sdk/pen/PenPathResult;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/PenResult;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/PenResult;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/PenPathResult;->getPointsCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/PenPathResult;->getPointsCount()I

    move-result p1

    add-int/2addr p0, p1

    new-instance p1, Lcom/onyx/android/sdk/pen/PenPathResult$append$1;

    invoke-direct {p1, v0, v1, p0}, Lcom/onyx/android/sdk/pen/PenPathResult$append$1;-><init>(Landroid/graphics/Path;Landroid/graphics/RectF;I)V

    return-object p1
.end method

.method public clearCache()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/pen/PenPathResult;->e:[F

    iput-object v0, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->c:[F

    sget-object v0, Lcom/onyx/android/sdk/pen/PenPathResult;->f:[I

    iput-object v0, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->d:[I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->b:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, Lcom/onyx/android/sdk/pen/PenPathResult;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->c:[F

    array-length v2, v1

    check-cast p1, Lcom/onyx/android/sdk/pen/PenPathResult;

    iget-object v3, p1, Lcom/onyx/android/sdk/pen/PenPathResult;->c:[F

    array-length v3, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    array-length v1, v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_4

    iget-object v4, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->c:[F

    aget v4, v4, v2

    iget-object v5, p1, Lcom/onyx/android/sdk/pen/PenPathResult;->c:[F

    aget v5, v5, v2

    cmpg-float v4, v4, v5

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    :goto_2
    return v0
.end method

.method public final getPath$sdk_pen_release()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->b:Landroid/graphics/Path;

    return-object p0
.end method

.method public final getPointSizeArray()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->d:[I

    return-object p0
.end method

.method public final getPoints()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->c:[F

    return-object p0
.end method

.method public getPointsCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->c:[F

    array-length p0, p0

    return p0
.end method

.method public final setPointSizeArray([I)V
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->d:[I

    return-void
.end method

.method public final setPoints([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/pen/PenPathResult;->c:[F

    return-void
.end method
