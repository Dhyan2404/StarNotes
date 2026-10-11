.class public final Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateCrossPageShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCrossPageShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0006\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\tR#\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "f",
        "Ljava/util/List;",
        "visibleBoxList",
        "g",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "h",
        "shapeList",
        "",
        "i",
        "Ljava/util/Map;",
        "getShapeMap",
        "()Ljava/util/Map;",
        "shapeMap",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nCreateCrossPageShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCrossPageShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->h:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->i:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->f:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest$execute$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest$execute$2;-><init>(Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->h:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->f:Ljava/util/List;

    invoke-static {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt;->createCrossPageShapeMap(Ljava/util/List;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final getShapeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->i:Ljava/util/Map;

    return-object p0
.end method
