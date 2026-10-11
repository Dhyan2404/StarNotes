.class public final Lcom/onyx/android/sdk/geometry/data/TouchData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010\"\u001a\u00020\u000bH\u00c6\u0003J\u0006\u0010#\u001a\u00020\u0000J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003JI\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0006\u0010$\u001a\u00020\tJ\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020\u0003H\u00d6\u0001J\u0006\u0010)\u001a\u00020&J\u0006\u0010*\u001a\u00020&J\u0006\u0010+\u001a\u00020&J\u0006\u0010,\u001a\u00020&J\u0006\u0010-\u001a\u00020&J\u0006\u0010.\u001a\u00020&J\u0006\u0010/\u001a\u00020&J\u0006\u00100\u001a\u00020&J\t\u00101\u001a\u000202H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "",
        "action",
        "",
        "toolType",
        "touchPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "predictPoint",
        "boxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "groupId",
        "",
        "(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;J)V",
        "getAction",
        "()I",
        "getBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "getGroupId",
        "()J",
        "setGroupId",
        "(J)V",
        "getPredictPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setPredictPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "getToolType",
        "getTouchPoint",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "ensureBoxInfo",
        "equals",
        "",
        "other",
        "hashCode",
        "isEnabledHitTestPadding",
        "isFingerToolType",
        "isStylusToolType",
        "isTouchCancel",
        "isTouchDone",
        "isTouchDown",
        "isTouchMove",
        "isTouchUp",
        "toString",
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
.field private final action:I

.field private boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private groupId:J

.field private predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final toolType:I

.field private final touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;J)V
    .locals 1
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "touchPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 6
    iput-object p5, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 7
    iput-wide p6, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    return-void
.end method

.method public synthetic constructor <init>(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    move-wide v7, v0

    goto :goto_3

    :cond_3
    move-wide v7, p6

    :goto_3
    move-object v1, p0

    move v2, p1

    move-object v4, p3

    .line 8
    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/geometry/data/TouchData;-><init>(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/geometry/data/TouchData;IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;JILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-wide p6, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    :cond_5
    move-wide v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-wide p8, v3

    invoke-virtual/range {p2 .. p9}, Lcom/onyx/android/sdk/geometry/data/TouchData;->copy(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;J)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    return p0
.end method

.method public final component3()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final component4()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final component5()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    return-wide v0
.end method

.method public final copy()Lcom/onyx/android/sdk/geometry/data/TouchData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/TouchData;->copy(I)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p0

    return-object p0
.end method

.method public final copy(I)Lcom/onyx/android/sdk/geometry/data/TouchData;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v8, Lcom/onyx/android/sdk/geometry/data/TouchData;

    iget v2, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    iget-wide v6, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    move-object v0, v8

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/geometry/data/TouchData;-><init>(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;J)V

    return-object v8
.end method

.method public final copy(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;J)Lcom/onyx/android/sdk/geometry/data/TouchData;
    .locals 8
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p0, "touchPoint"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/geometry/data/TouchData;-><init>(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;J)V

    return-object p0
.end method

.method public final ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/geometry/data/TouchData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/TouchData;

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    iget v3, p1, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    iget v3, p1, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, p1, Lcom/onyx/android/sdk/geometry/data/TouchData;->touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, p1, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v3, p1, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    iget-wide p0, p1, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAction()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    return p0
.end method

.method public final getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    return-wide v0
.end method

.method public final getPredictPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getToolType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    return p0
.end method

.method public final getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isEnabledHitTestPadding()Z
    .locals 2

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final isFingerToolType()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isToolTypeFinger(I)Z

    move-result p0

    return p0
.end method

.method public final isStylusToolType()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTouchCancel()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTouchDone()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchUp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchCancel()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isTouchDown()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTouchMove()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTouchUp()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final setGroupId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    return-void
.end method

.method public final setPredictPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchData(action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->toolType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->touchPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", predictPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->predictPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boxInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchData;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
