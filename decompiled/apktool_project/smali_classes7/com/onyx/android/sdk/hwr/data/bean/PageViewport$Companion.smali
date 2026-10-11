.class public final Lcom/onyx/android/sdk/hwr/data/bean/PageViewport$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/PageViewport$Companion;",
        "",
        "()V",
        "createByNormalizeScale",
        "Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;",
        "normalizeScale",
        "",
        "sdk-hwr_release"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createByNormalizeScale(F)Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;-><init>()V

    const/4 v0, 0x1

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->setPageScale(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->setOffsetX(F)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;->setOffsetY(F)V

    return-object p0
.end method
