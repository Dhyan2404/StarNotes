.class public final Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pen/NeoRenderPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/pen/NeoRenderPoint;",
        "p",
        "x",
        "",
        "y",
        "size",
        "bitmapIndex",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(FFFI)Lcom/onyx/android/sdk/pen/NeoRenderPoint;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/pen/NeoRenderPoint;

    invoke-direct {p0}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->setX(F)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->setY(F)V

    .line 4
    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->setSize(F)V

    .line 5
    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->setBitmapIndex(I)V

    return-object p0
.end method

.method public final create(Lcom/onyx/android/sdk/pen/NeoRenderPoint;)Lcom/onyx/android/sdk/pen/NeoRenderPoint;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/pen/NeoRenderPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->getSize()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->getBitmapIndex()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;->create(FFFI)Lcom/onyx/android/sdk/pen/NeoRenderPoint;

    move-result-object p0

    return-object p0
.end method
