.class public final Lcom/onyx/android/sdk/pen/PenBrushInk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B2\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0018\u001a\u00020\u0011\u0012\u0006\u0010\u001c\u001a\u00020\u0011\u0012\u0006\u0010 \u001a\u00020\u0011\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"J\u0013\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\"\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0007\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR+\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R+\u0010\u001c\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R+\u0010 \u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0013\u001a\u0004\u0008\u001e\u0010\u0015\"\u0004\u0008\u001f\u0010\u0017\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/PenBrushInk;",
        "",
        "other",
        "",
        "equals",
        "",
        "a",
        "F",
        "getX",
        "()F",
        "setX",
        "(F)V",
        "x",
        "b",
        "getY",
        "setY",
        "y",
        "Lkotlin/UByte;",
        "c",
        "B",
        "getSize-w2LRezQ",
        "()B",
        "setSize-7apg3OU",
        "(B)V",
        "size",
        "d",
        "getAngle36-w2LRezQ",
        "setAngle36-7apg3OU",
        "angle36",
        "e",
        "getAlpha-w2LRezQ",
        "setAlpha-7apg3OU",
        "alpha",
        "<init>",
        "(FFBBBLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:B

.field public d:B

.field public e:B


# direct methods
.method public constructor <init>(FFBBB)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->a:F

    iput p2, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->b:F

    iput-byte p3, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->c:B

    iput-byte p4, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->d:B

    iput-byte p5, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->e:B

    return-void
.end method

.method public synthetic constructor <init>(FFBBBLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/pen/PenBrushInk;-><init>(FFBBB)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/pen/PenBrushInk;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->a:F

    check-cast p1, Lcom/onyx/android/sdk/pen/PenBrushInk;

    iget v2, p1, Lcom/onyx/android/sdk/pen/PenBrushInk;->a:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->b:F

    iget v3, p1, Lcom/onyx/android/sdk/pen/PenBrushInk;->b:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    iget-byte v1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->c:B

    iget-byte v3, p1, Lcom/onyx/android/sdk/pen/PenBrushInk;->c:B

    if-ne v1, v3, :cond_4

    iget-byte v1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->d:B

    iget-byte v3, p1, Lcom/onyx/android/sdk/pen/PenBrushInk;->d:B

    if-ne v1, v3, :cond_4

    iget-byte p0, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->e:B

    iget-byte p1, p1, Lcom/onyx/android/sdk/pen/PenBrushInk;->e:B

    if-ne p0, p1, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method public final getAlpha-w2LRezQ()B
    .locals 0

    iget-byte p0, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->e:B

    return p0
.end method

.method public final getAngle36-w2LRezQ()B
    .locals 0

    iget-byte p0, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->d:B

    return p0
.end method

.method public final getSize-w2LRezQ()B
    .locals 0

    iget-byte p0, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->c:B

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->a:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->b:F

    return p0
.end method

.method public final setAlpha-7apg3OU(B)V
    .locals 0

    iput-byte p1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->e:B

    return-void
.end method

.method public final setAngle36-7apg3OU(B)V
    .locals 0

    iput-byte p1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->d:B

    return-void
.end method

.method public final setSize-7apg3OU(B)V
    .locals 0

    iput-byte p1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->c:B

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->a:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/PenBrushInk;->b:F

    return-void
.end method
