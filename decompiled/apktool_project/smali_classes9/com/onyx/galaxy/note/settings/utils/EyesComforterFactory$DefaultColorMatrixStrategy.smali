.class public final Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultColorMatrixStrategy"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J(\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0002R\u0014\u0010\u000c\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;",
        "",
        "intensity",
        "Landroid/graphics/ColorMatrix;",
        "createMatrix",
        "redBoost",
        "greenBoost",
        "blueReduce",
        "alphaReduce",
        "a",
        "F",
        "redBoostFactor",
        "b",
        "greenBoostFactor",
        "<init>",
        "(FF)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;->a:F

    .line 4
    iput p2, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;->b:F

    return-void
.end method

.method public synthetic constructor <init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const p1, 0x3ecccccd    # 0.4f

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public final a(FFFF)Landroid/graphics/ColorMatrix;
    .locals 4

    new-instance p0, Landroid/graphics/ColorMatrix;

    const/16 v0, 0x14

    new-array v0, v0, [F

    const/4 v1, 0x1

    int-to-float v2, v1

    add-float/2addr p1, v2

    const/4 v3, 0x0

    aput p1, v0, v3

    const/4 p1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p2, v1

    const/4 v3, 0x6

    aput p2, v0, v3

    const/4 p2, 0x7

    aput p1, v0, p2

    const/16 p2, 0x8

    aput p1, v0, p2

    const/16 p2, 0x9

    aput p1, v0, p2

    const/16 p2, 0xa

    aput p1, v0, p2

    const/16 p2, 0xb

    aput p1, v0, p2

    const/16 p2, 0xc

    sub-float/2addr v2, p3

    aput v2, v0, p2

    const/16 p2, 0xd

    aput p1, v0, p2

    const/16 p2, 0xe

    aput p1, v0, p2

    const/16 p2, 0xf

    aput p1, v0, p2

    const/16 p2, 0x10

    aput p1, v0, p2

    const/16 p2, 0x11

    aput p1, v0, p2

    const/16 p2, 0x12

    sub-float/2addr v1, p4

    aput v1, v0, p2

    const/16 p2, 0x13

    aput p1, v0, p2

    invoke-direct {p0, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object p0
.end method

.method public createMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;->a:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;->b:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    div-float v3, p1, v1

    const/16 v4, 0x64

    int-to-float v4, v4

    sub-float/2addr v4, p1

    div-float/2addr v4, v1

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;->a(FFFF)Landroid/graphics/ColorMatrix;

    move-result-object p0

    return-object p0
.end method
