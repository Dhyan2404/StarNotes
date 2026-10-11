.class public final Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B;\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0014\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003J\u0014\u0010\u000b\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cJ\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002J\u0006\u0010\u0011\u001a\u00020\u0003J\u0006\u0010\u0012\u001a\u00020\u000cJ\u0006\u0010\u0013\u001a\u00020\u0000J\u001c\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00032\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002R\u0016\u0010\u0007\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0017R\u0016\u0010\u000e\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
        "",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxList",
        "",
        "setBoxList",
        "virtualBoxInfo",
        "setVirtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapeList",
        "setShapeList",
        "",
        "zOrder",
        "setZOrder",
        "getBoxList",
        "getShapeList",
        "getVirtualBoxInfo",
        "getZOrder",
        "clone",
        "a",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "b",
        "Ljava/util/List;",
        "c",
        "d",
        "Z",
        "<init>",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;Z)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
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

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "virtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->a:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->c:Ljava/util/List;

    .line 6
    iput-boolean p4, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 7
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x1

    .line 10
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final clone()Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->a:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->b:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->clone(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    move-result-object p0

    return-object p0
.end method

.method public final clone(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "virtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->c:Ljava/util/List;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->d:Z

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final getBoxList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->c:Ljava/util/List;

    return-object p0
.end method

.method public final getShapeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->a:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final getZOrder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->d:Z

    return p0
.end method

.method public final setBoxList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->c:Ljava/util/List;

    return-void
.end method

.method public final setShapeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shapeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->b:Ljava/util/List;

    return-void
.end method

.method public final setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->a:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final setZOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->d:Z

    return-void
.end method
