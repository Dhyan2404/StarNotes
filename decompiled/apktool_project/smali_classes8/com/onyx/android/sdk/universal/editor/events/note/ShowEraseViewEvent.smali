.class public final Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "a",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getTouchPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "",
        "b",
        "F",
        "getEraseRadius",
        "()F",
        "eraseRadius",
        "",
        "c",
        "I",
        "getEraseType",
        "()I",
        "eraseType",
        "<init>",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;FI)V",
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
.field public final a:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:F

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/data/TouchPoint;FI)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->a:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->b:F

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->c:I

    return-void
.end method


# virtual methods
.method public final getEraseRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->b:F

    return p0
.end method

.method public final getEraseType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->c:I

    return p0
.end method

.method public final getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->a:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method
