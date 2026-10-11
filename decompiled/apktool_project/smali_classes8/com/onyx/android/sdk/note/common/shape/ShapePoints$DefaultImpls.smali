.class public final Lcom/onyx/android/sdk/note/common/shape/ShapePoints$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/ShapePoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getRenderPoints(Lcom/onyx/android/sdk/note/common/shape/ShapePoints;)Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    return-object p0
.end method

.method public static getUsePointCount(Lcom/onyx/android/sdk/note/common/shape/ShapePoints;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    return p0
.end method
