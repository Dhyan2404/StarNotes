.class public final Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;
.super Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0019\u0008\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ(\u0010\u0008\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J8\u0010\u000c\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J(\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0012\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0002R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "realPoint",
        "",
        "repaint",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "onTouchDown",
        "",
        "realPointList",
        "predictPoint",
        "onTouchMove",
        "onTouchDone",
        "",
        "reset",
        "penResult",
        "a",
        "",
        "f",
        "I",
        "getBrushPointCount",
        "()I",
        "setBrushPointCount",
        "(I)V",
        "brushPointCount",
        "Lcom/onyx/android/sdk/pen/NeoPen;",
        "neoPen",
        "segment",
        "<init>",
        "(Lcom/onyx/android/sdk/pen/NeoPen;Z)V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->Companion:Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/pen/NeoPen;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;-><init>(Lcom/onyx/android/sdk/pen/NeoPen;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/pen/NeoPen;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;-><init>(Lcom/onyx/android/sdk/pen/NeoPen;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/pen/PenResult;)V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->f:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/PenResult;->getPointsCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->f:I

    return-void
.end method

.method public final getBrushPointCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->f:I

    return p0
.end method

.method public onTouchDone(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "realPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->onTouchDone(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/pen/PenResult;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->a(Lcom/onyx/android/sdk/pen/PenResult;)V

    return-object p1
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "realPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->f:I

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->onTouchDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onTouchMove(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "realPointList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->onTouchMove(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/pen/PenResult;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->a(Lcom/onyx/android/sdk/pen/PenResult;)V

    return-object p1
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->f:I

    return-void
.end method

.method public final setBrushPointCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->f:I

    return-void
.end method
