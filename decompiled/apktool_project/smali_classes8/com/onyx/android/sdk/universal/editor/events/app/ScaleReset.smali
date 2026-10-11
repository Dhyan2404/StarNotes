.class public final Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;",
        "",
        "",
        "a",
        "F",
        "getScale",
        "()F",
        "scale",
        "b",
        "getCenterXOffset",
        "centerXOffset",
        "c",
        "getCenterYOffset",
        "centerYOffset",
        "<init>",
        "(FFF)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;->a:F

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;->b:F

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;->c:F

    return-void
.end method

.method public synthetic constructor <init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public final getCenterXOffset()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;->b:F

    return p0
.end method

.method public final getCenterYOffset()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;->c:F

    return p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;->a:F

    return p0
.end method
