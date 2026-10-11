.class public final Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008&\u0010\'J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0006\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\nR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0006\u001a\u0004\u0008\u0011\u0010\u0008\"\u0004\u0008\u0012\u0010\nR\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0006\u001a\u0004\u0008\u0014\u0010\u0008\"\u0004\u0008\u0015\u0010\nR$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010!\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR$\u0010%\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0018\u001a\u0004\u0008#\u0010\u001a\"\u0004\u0008$\u0010\u001c\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;",
        "",
        "",
        "hasSingleArrow",
        "hasDoubleArrow",
        "a",
        "Z",
        "getHasStartArrow",
        "()Z",
        "setHasStartArrow",
        "(Z)V",
        "hasStartArrow",
        "b",
        "getHasEndArrow",
        "setHasEndArrow",
        "hasEndArrow",
        "c",
        "isMainSegmentStraight",
        "setMainSegmentStraight",
        "d",
        "isMainSegmentEnoughLong",
        "setMainSegmentEnoughLong",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "e",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getCenterPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setCenterPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "centerPoint",
        "f",
        "getStartArrowPoint",
        "setStartArrowPoint",
        "startArrowPoint",
        "g",
        "getEndArrowPoint",
        "setEndArrowPoint",
        "endArrowPoint",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCenterPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getEndArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getHasEndArrow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->b:Z

    return p0
.end method

.method public final getHasStartArrow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->a:Z

    return p0
.end method

.method public final getStartArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final hasDoubleArrow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->a:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasSingleArrow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->a:Z

    iget-boolean p0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->b:Z

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMainSegmentEnoughLong()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->d:Z

    return p0
.end method

.method public final isMainSegmentStraight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->c:Z

    return p0
.end method

.method public final setCenterPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setEndArrowPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setHasEndArrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->b:Z

    return-void
.end method

.method public final setHasStartArrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->a:Z

    return-void
.end method

.method public final setMainSegmentEnoughLong(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->d:Z

    return-void
.end method

.method public final setMainSegmentStraight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->c:Z

    return-void
.end method

.method public final setStartArrowPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method
