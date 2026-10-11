.class public final Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;",
        "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;",
        "()V",
        "extractArgs",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "outline",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "outline"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;-><init>()V

    filled-new-array {p0, p1}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    filled-new-array {p0, p1}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setExtras(Ljava/util/List;)V

    return-object v0
.end method
