.class public final Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;",
        "",
        "velocityX",
        "",
        "velocityY",
        "scrollBeginX",
        "scrollBeginY",
        "scrollBeginBoxId",
        "",
        "isRestoreScrollBegin",
        "",
        "(FFFFLjava/lang/String;Z)V",
        "()Z",
        "setRestoreScrollBegin",
        "(Z)V",
        "getScrollBeginBoxId",
        "()Ljava/lang/String;",
        "setScrollBeginBoxId",
        "(Ljava/lang/String;)V",
        "getScrollBeginX",
        "()F",
        "setScrollBeginX",
        "(F)V",
        "getScrollBeginY",
        "setScrollBeginY",
        "getVelocityX",
        "setVelocityX",
        "getVelocityY",
        "setVelocityY",
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


# instance fields
.field private isRestoreScrollBegin:Z

.field private scrollBeginBoxId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scrollBeginX:F

.field private scrollBeginY:F

.field private velocityX:F

.field private velocityY:F


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;-><init>(FFFFLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;Z)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scrollBeginBoxId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->velocityX:F

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->velocityY:F

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->scrollBeginX:F

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->scrollBeginY:F

    .line 7
    iput-object p5, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->scrollBeginBoxId:Ljava/lang/String;

    .line 8
    iput-boolean p6, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->isRestoreScrollBegin:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    const-string p5, ""

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    .line 9
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;-><init>(FFFFLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getScrollBeginBoxId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->scrollBeginBoxId:Ljava/lang/String;

    return-object p0
.end method

.method public final getScrollBeginX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->scrollBeginX:F

    return p0
.end method

.method public final getScrollBeginY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->scrollBeginY:F

    return p0
.end method

.method public final getVelocityX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->velocityX:F

    return p0
.end method

.method public final getVelocityY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->velocityY:F

    return p0
.end method

.method public final isRestoreScrollBegin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->isRestoreScrollBegin:Z

    return p0
.end method

.method public final setRestoreScrollBegin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->isRestoreScrollBegin:Z

    return-void
.end method

.method public final setScrollBeginBoxId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->scrollBeginBoxId:Ljava/lang/String;

    return-void
.end method

.method public final setScrollBeginX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->scrollBeginX:F

    return-void
.end method

.method public final setScrollBeginY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->scrollBeginY:F

    return-void
.end method

.method public final setVelocityX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->velocityX:F

    return-void
.end method

.method public final setVelocityY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->velocityY:F

    return-void
.end method
