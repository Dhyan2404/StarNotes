.class public final Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0000J\u0006\u0010\u0016\u001a\u00020\u0017R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;",
        "",
        "()V",
        "boxCellInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;",
        "getBoxCellInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;",
        "setBoxCellInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)V",
        "contentPath",
        "",
        "getContentPath",
        "()Ljava/lang/String;",
        "setContentPath",
        "(Ljava/lang/String;)V",
        "timeStamp",
        "",
        "getTimeStamp",
        "()J",
        "setTimeStamp",
        "(J)V",
        "copy",
        "updateVisibleTimeStamp",
        "",
        "sdk-geometry_release"
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
.field private boxCellInfo:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->contentPath:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->boxCellInfo:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->timeStamp:J

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->contentPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->contentPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->boxCellInfo:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v2, v3}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->copy$default(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;IIILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->boxCellInfo:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    iget-wide v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->timeStamp:J

    iput-wide v1, v0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->timeStamp:J

    return-object v0
.end method

.method public final getBoxCellInfo()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->boxCellInfo:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    return-object p0
.end method

.method public final getContentPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->contentPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->timeStamp:J

    return-wide v0
.end method

.method public final setBoxCellInfo(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->boxCellInfo:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    return-void
.end method

.method public final setContentPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->contentPath:Ljava/lang/String;

    return-void
.end method

.method public final setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->timeStamp:J

    return-void
.end method

.method public final updateVisibleTimeStamp()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->timeStamp:J

    return-void
.end method
