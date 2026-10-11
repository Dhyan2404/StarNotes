.class public final Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;",
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;",
        "()V",
        "sdk-universal_overseasRelease"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public supportEdit()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature$DefaultImpls;->supportEdit(Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;)Z

    move-result p0

    return p0
.end method

.method public supportFingerEdit()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature$DefaultImpls;->supportFingerEdit(Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;)Z

    move-result p0

    return p0
.end method

.method public supportScrollWithPen()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature$DefaultImpls;->supportScrollWithPen(Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;)Z

    move-result p0

    return p0
.end method
