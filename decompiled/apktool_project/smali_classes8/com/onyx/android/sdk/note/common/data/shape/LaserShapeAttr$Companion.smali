.class public final Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;",
        "",
        "()V",
        "LASER_SHAPE_DOT_NAME",
        "",
        "LASER_SHAPE_LINE_NAME",
        "MAX_DURATION_SECOND",
        "",
        "MAX_PROGRESS",
        "",
        "MAX_VALUE",
        "",
        "MID_DURATION_SECOND",
        "MID_PROGRESS",
        "MIN_DURATION_SECOND",
        "MIN_PROGRESS",
        "MIN_VALUE",
        "getProgressByDuration",
        "duration",
        "getSecondByProgress",
        "progress",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProgressByDuration(J)F
    .locals 2

    const/16 p0, 0x3e8

    int-to-long v0, p0

    div-long/2addr p1, v0

    const-wide/16 v0, 0x2

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xf

    cmp-long p0, p1, v0

    if-gez p0, :cond_1

    const/high16 p0, 0x42480000    # 50.0f

    goto :goto_0

    :cond_1
    const/high16 p0, 0x42c80000    # 100.0f

    :goto_0
    return p0
.end method

.method public final getSecondByProgress(F)J
    .locals 1

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gtz v0, :cond_0

    const-wide/16 p0, 0x2

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/high16 p0, 0x42c80000    # 100.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const-wide/16 p0, 0x5

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0xf

    :goto_0
    return-wide p0
.end method
