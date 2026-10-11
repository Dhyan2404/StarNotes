.class public interface abstract Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH&J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;",
        "",
        "compare",
        "",
        "firstShape",
        "",
        "nextShape",
        "firstShapeArgs",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "nextShapeArgs",
        "originPoints",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getSupportedShapes",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract compare(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Ljava/util/List;)I
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
            "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getSupportedShapes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
