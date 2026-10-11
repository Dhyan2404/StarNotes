.class public final Lcom/onyx/android/sdk/geometry/data/RotatedRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 )2\u00020\u0001:\u0001)B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\u0006\u0010\u0019\u001a\u00020\u0000J1\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001eJ\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\"J\t\u0010#\u001a\u00020$H\u00d6\u0001J\u0006\u0010%\u001a\u00020\u001bJ\u0006\u0010&\u001a\u00020\u0000J\t\u0010\'\u001a\u00020(H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/RotatedRect;",
        "",
        "center",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "width",
        "",
        "height",
        "rotationInRad",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)V",
        "getCenter",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setCenter",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "getHeight",
        "()F",
        "setHeight",
        "(F)V",
        "getRotationInRad",
        "setRotationInRad",
        "getWidth",
        "setWidth",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "getRealPoints",
        "",
        "getRotationMatrix",
        "Landroid/graphics/Matrix;",
        "getUnRotatedRect",
        "Landroid/graphics/RectF;",
        "hashCode",
        "",
        "isEmpty",
        "swapWidthAndHeightIfNeeded",
        "toString",
        "",
        "Companion",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMPTY:Lcom/onyx/android/sdk/geometry/data/RotatedRect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private center:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private height:F

.field private rotationInRad:F

.field private width:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->Companion:Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    sget-object v1, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->EMPTY:Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "center"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput p2, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    iput p3, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    iput p4, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lcom/onyx/android/sdk/geometry/data/RotatedRect;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->EMPTY:Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/geometry/data/RotatedRect;Lcom/onyx/android/sdk/base/data/TouchPoint;FFFILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/RotatedRect;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->copy(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    return p0
.end method

.method public final copy()Lcom/onyx/android/sdk/geometry/data/RotatedRect;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iget v2, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    iget v3, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)V

    return-object v0
.end method

.method public final copy(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)Lcom/onyx/android/sdk/geometry/data/RotatedRect;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p0, "center"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, p1, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    iget v3, p1, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    iget v3, p1, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    iget p1, p1, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    return p0
.end method

.method public final getRealPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getUnRotatedRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->vertexPoints(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRotationInRad()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    return p0
.end method

.method public final getRotationMatrix()Landroid/graphics/Matrix;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget v2, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-object v0
.end method

.method public final getUnRotatedRect()Landroid/graphics/RectF;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    iget v3, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    iget v4, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    div-float/2addr p0, v2

    add-float/2addr v4, p0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v0, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->EMPTY:Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setCenter(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    return-void
.end method

.method public final setRotationInRad(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    return-void
.end method

.method public final swapWidthAndHeightIfNeeded()Lcom/onyx/android/sdk/geometry/data/RotatedRect;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->copy()Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    move-result-object v0

    iget v1, v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    iget v2, v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    const v2, 0x3fc90fdb

    add-float/2addr v1, v2

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    iput p0, v0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RotatedRect(center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotationInRad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->rotationInRad:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
