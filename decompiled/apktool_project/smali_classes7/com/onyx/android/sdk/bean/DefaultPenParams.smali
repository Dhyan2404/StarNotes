.class public final Lcom/onyx/android/sdk/bean/DefaultPenParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/bean/DefaultPenParams;",
        "Ljava/io/Serializable;",
        "()V",
        "defaultVelocityAmplifier",
        "",
        "getDefaultVelocityAmplifier",
        "()F",
        "setDefaultVelocityAmplifier",
        "(F)V",
        "defaultVelocityIgnoreThreshold",
        "getDefaultVelocityIgnoreThreshold",
        "setDefaultVelocityIgnoreThreshold",
        "defaultVelocityLowerBound",
        "getDefaultVelocityLowerBound",
        "setDefaultVelocityLowerBound",
        "defaultVelocitySensitivity",
        "getDefaultVelocitySensitivity",
        "setDefaultVelocitySensitivity",
        "defaultVelocityUpperBound",
        "getDefaultVelocityUpperBound",
        "setDefaultVelocityUpperBound",
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


# instance fields
.field private defaultVelocityAmplifier:F

.field private defaultVelocityIgnoreThreshold:F

.field private defaultVelocityLowerBound:F

.field private defaultVelocitySensitivity:F

.field private defaultVelocityUpperBound:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultVelocityAmplifier()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocityAmplifier:F

    return p0
.end method

.method public final getDefaultVelocityIgnoreThreshold()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocityIgnoreThreshold:F

    return p0
.end method

.method public final getDefaultVelocityLowerBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocityLowerBound:F

    return p0
.end method

.method public final getDefaultVelocitySensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocitySensitivity:F

    return p0
.end method

.method public final getDefaultVelocityUpperBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocityUpperBound:F

    return p0
.end method

.method public final setDefaultVelocityAmplifier(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocityAmplifier:F

    return-void
.end method

.method public final setDefaultVelocityIgnoreThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocityIgnoreThreshold:F

    return-void
.end method

.method public final setDefaultVelocityLowerBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocityLowerBound:F

    return-void
.end method

.method public final setDefaultVelocitySensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocitySensitivity:F

    return-void
.end method

.method public final setDefaultVelocityUpperBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/bean/DefaultPenParams;->defaultVelocityUpperBound:F

    return-void
.end method
