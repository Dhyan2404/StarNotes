.class public final Lcom/onyx/android/sdk/pen/PenPrecision;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pen/PenPrecision$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0017\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0006\u001a\u00020\u0005J\t\u0010\u0007\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\t\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\"\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0015\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/PenPrecision;",
        "",
        "penPrecision",
        "",
        "isValid",
        "",
        "getOptimizedScale",
        "component1",
        "component2",
        "precision",
        "precisionScale",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "a",
        "F",
        "getPrecision",
        "()F",
        "b",
        "getPrecisionScale",
        "setPrecisionScale",
        "(F)V",
        "<init>",
        "(FF)V",
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
.field public static final Companion:Lcom/onyx/android/sdk/pen/PenPrecision$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:F

.field public b:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/PenPrecision$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pen/PenPrecision$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pen/PenPrecision;->Companion:Lcom/onyx/android/sdk/pen/PenPrecision$Companion;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    iput p2, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/pen/PenPrecision;FFILjava/lang/Object;)Lcom/onyx/android/sdk/pen/PenPrecision;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pen/PenPrecision;->copy(FF)Lcom/onyx/android/sdk/pen/PenPrecision;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    return p0
.end method

.method public final copy(FF)Lcom/onyx/android/sdk/pen/PenPrecision;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/pen/PenPrecision;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pen/PenPrecision;-><init>(FF)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/pen/PenPrecision;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/pen/PenPrecision;

    iget v1, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    iget v3, p1, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    iget p1, p1, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getOptimizedScale()F
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p0, v0

    return p0

    :cond_0
    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    return p0
.end method

.method public final getPrecision()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    return p0
.end method

.method public final getPrecisionScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isValid(Lcom/onyx/android/sdk/pen/PenPrecision;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/pen/PenPrecision;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penPrecision"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    iget v1, p1, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget p1, p1, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    div-float/2addr p1, p0

    const/high16 p0, 0x40400000    # 3.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setPrecisionScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PenPrecision(precision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", precisionScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPrecision;->b:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
