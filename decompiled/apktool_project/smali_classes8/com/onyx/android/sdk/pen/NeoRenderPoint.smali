.class public final Lcom/onyx/android/sdk/pen/NeoRenderPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000c\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoRenderPoint;",
        "Ljava/io/Serializable;",
        "()V",
        "bitmapIndex",
        "",
        "getBitmapIndex",
        "()I",
        "setBitmapIndex",
        "(I)V",
        "size",
        "",
        "getSize",
        "()F",
        "setSize",
        "(F)V",
        "x",
        "getX",
        "setX",
        "y",
        "getY",
        "setY",
        "Companion",
        "sdk-pen_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bitmapIndex:I

.field private size:F

.field private x:F

.field private y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->Companion:Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(FFFI)Lcom/onyx/android/sdk/pen/NeoRenderPoint;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->Companion:Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;->create(FFFI)Lcom/onyx/android/sdk/pen/NeoRenderPoint;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/onyx/android/sdk/pen/NeoRenderPoint;)Lcom/onyx/android/sdk/pen/NeoRenderPoint;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/pen/NeoRenderPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->Companion:Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;->create(Lcom/onyx/android/sdk/pen/NeoRenderPoint;)Lcom/onyx/android/sdk/pen/NeoRenderPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBitmapIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->bitmapIndex:I

    return p0
.end method

.method public final getSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->size:F

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->x:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->y:F

    return p0
.end method

.method public final setBitmapIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->bitmapIndex:I

    return-void
.end method

.method public final setSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->size:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->y:F

    return-void
.end method
