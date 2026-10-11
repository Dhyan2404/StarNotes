.class public final Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001b\u00a2\u0006\u0004\u00086\u00107R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R(\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\"\u0010-\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u001d\u001a\u0004\u0008+\u0010\u001f\"\u0004\u0008,\u0010!R\"\u00101\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u001d\u001a\u0004\u0008/\u0010\u001f\"\u0004\u00080\u0010!R\"\u00105\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010\u001d\u001a\u0004\u00083\u0010\u001f\"\u0004\u00084\u0010!\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getPageUniqueId",
        "()Ljava/lang/String;",
        "setPageUniqueId",
        "(Ljava/lang/String;)V",
        "pageUniqueId",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "b",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "virtualPageBoxInfo",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "c",
        "Ljava/util/List;",
        "getShapes",
        "()Ljava/util/List;",
        "setShapes",
        "(Ljava/util/List;)V",
        "shapes",
        "",
        "d",
        "Z",
        "isSingleTap",
        "()Z",
        "setSingleTap",
        "(Z)V",
        "",
        "e",
        "F",
        "getHitTestRadius",
        "()F",
        "setHitTestRadius",
        "(F)V",
        "hitTestRadius",
        "f",
        "getAddToCmdStack",
        "setAddToCmdStack",
        "addToCmdStack",
        "g",
        "getSetZOrder",
        "setSetZOrder",
        "setZOrder",
        "h",
        "getPostShapeChangedEvent",
        "setPostShapeChangedEvent",
        "postShapeChangedEvent",
        "<init>",
        "(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V",
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
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
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

.field public d:Z

.field public e:F

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
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
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "pageUniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->c:Ljava/util/List;

    .line 5
    iput-boolean p4, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->d:Z

    .line 6
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/note/R$dimen;->hit_test_by_pen_padding:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->e:F

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->f:Z

    .line 8
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->g:Z

    .line 9
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final getAddToCmdStack()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->f:Z

    return p0
.end method

.method public final getHitTestRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->e:F

    return p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getPostShapeChangedEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->h:Z

    return p0
.end method

.method public final getSetZOrder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->g:Z

    return p0
.end method

.method public final getShapes()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->c:Ljava/util/List;

    return-object p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final isSingleTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->d:Z

    return p0
.end method

.method public final setAddToCmdStack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->f:Z

    return-void
.end method

.method public final setHitTestRadius(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->e:F

    return-void
.end method

.method public final setPageUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->a:Ljava/lang/String;

    return-void
.end method

.method public final setPostShapeChangedEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->h:Z

    return-void
.end method

.method public final setSetZOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->g:Z

    return-void
.end method

.method public final setShapes(Ljava/util/List;)V
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

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->c:Ljava/util/List;

    return-void
.end method

.method public final setSingleTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->d:Z

    return-void
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method
