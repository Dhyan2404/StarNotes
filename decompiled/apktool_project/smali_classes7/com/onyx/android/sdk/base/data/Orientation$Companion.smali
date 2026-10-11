.class public final Lcom/onyx/android/sdk/base/data/Orientation$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/data/Orientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/Orientation$Companion;",
        "",
        "()V",
        "isLandscape",
        "",
        "orientation",
        "",
        "isPortrait",
        "sdk-base_release"
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
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/Orientation$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isLandscape(I)Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/data/Orientation;->LANDSCAPE:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPortrait(I)Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
