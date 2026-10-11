.class public final Lcom/onyx/android/sdk/pen/PenPointInk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/PenPointInk;",
        "",
        "",
        "a",
        "F",
        "getX",
        "()F",
        "x",
        "b",
        "getY",
        "y",
        "c",
        "getSize",
        "size",
        "<init>",
        "(FFF)V",
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
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/pen/PenPointInk;->a:F

    iput p2, p0, Lcom/onyx/android/sdk/pen/PenPointInk;->b:F

    iput p3, p0, Lcom/onyx/android/sdk/pen/PenPointInk;->c:F

    return-void
.end method


# virtual methods
.method public final getSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPointInk;->c:F

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPointInk;->a:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPointInk;->b:F

    return p0
.end method
