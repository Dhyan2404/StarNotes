.class public final Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;
.super Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;",
        "neoPen",
        "Lcom/onyx/android/sdk/pen/NeoPen;",
        "segment",
        "",
        "(Lcom/onyx/android/sdk/pen/NeoPen;Z)V",
        "Companion",
        "sdk-note_overseasRelease"
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
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;->Companion:Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/pen/NeoPen;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;-><init>(Lcom/onyx/android/sdk/pen/NeoPen;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/pen/NeoPen;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;-><init>(Lcom/onyx/android/sdk/pen/NeoPen;Z)V

    return-void
.end method
