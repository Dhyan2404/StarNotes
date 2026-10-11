.class public final Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\n\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getPageUniqueId",
        "()Ljava/lang/String;",
        "setPageUniqueId",
        "(Ljava/lang/String;)V",
        "pageUniqueId",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "b",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getPointInDocument",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setPointInDocument",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "pointInDocument",
        "",
        "c",
        "F",
        "getHitTestRadius",
        "()F",
        "setHitTestRadius",
        "(F)V",
        "hitTestRadius",
        "<init>",
        "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;F)V",
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

.field public b:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;F)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageUniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointInDocument"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 4
    iput p3, p0, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 5
    sget-object p3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p4, Lcom/onyx/android/sdk/note/R$dimen;->hit_test_by_pen_padding:I

    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p3

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;F)V

    return-void
.end method


# virtual methods
.method public final getHitTestRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->c:F

    return p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getPointInDocument()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final setHitTestRadius(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->c:F

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

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->a:Ljava/lang/String;

    return-void
.end method

.method public final setPointInDocument(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method
