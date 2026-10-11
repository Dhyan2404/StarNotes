.class public final Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0019\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0004\u0008+\u0010,J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0004\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J;\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007H\u00c6\u0001J\t\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0017\u001a\u0004\u0008 \u0010\u0019\"\u0004\u0008!\u0010\u001bR\"\u0010\u000c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0017\u001a\u0004\u0008#\u0010\u0019\"\u0004\u0008$\u0010\u001bR\"\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;",
        "",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "",
        "component5",
        "offsetX",
        "offsetY",
        "velocityX",
        "velocityY",
        "upToDownTime",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "F",
        "getOffsetX",
        "()F",
        "setOffsetX",
        "(F)V",
        "b",
        "getOffsetY",
        "setOffsetY",
        "c",
        "getVelocityX",
        "setVelocityX",
        "d",
        "getVelocityY",
        "setVelocityY",
        "e",
        "J",
        "getUpToDownTime",
        "()J",
        "setUpToDownTime",
        "(J)V",
        "<init>",
        "(FFFFJ)V",
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
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;-><init>(FFFFJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->a:F

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->b:F

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->c:F

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->d:F

    .line 7
    iput-wide p5, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->e:J

    return-void
.end method

.method public synthetic constructor <init>(FFFFJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    const-wide/16 p5, 0x0

    .line 8
    :cond_4
    invoke-direct/range {p0 .. p6}, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;-><init>(FFFFJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;FFFFJILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->a:F

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->b:F

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->c:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->d:F

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->e:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->copy(FFFFJ)Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->a:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->b:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->c:F

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->d:F

    return p0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->e:J

    return-wide v0
.end method

.method public final copy(FFFFJ)Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;-><init>(FFFFJ)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->a:F

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->b:F

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->c:F

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->d:F

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->e:J

    iget-wide p0, p1, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->e:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getOffsetX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->a:F

    return p0
.end method

.method public final getOffsetY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->b:F

    return p0
.end method

.method public final getUpToDownTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->e:J

    return-wide v0
.end method

.method public final getVelocityX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->c:F

    return p0
.end method

.method public final getVelocityY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->d:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setOffsetX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->a:F

    return-void
.end method

.method public final setOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->b:F

    return-void
.end method

.method public final setUpToDownTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->e:J

    return-void
.end method

.method public final setVelocityX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->c:F

    return-void
.end method

.method public final setVelocityY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->d:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlingEvent(offsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", upToDownTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
