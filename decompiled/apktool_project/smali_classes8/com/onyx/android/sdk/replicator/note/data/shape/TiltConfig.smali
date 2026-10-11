.class public final Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;",
        "",
        "tiltEnabled",
        "",
        "tiltScale",
        "",
        "(ZF)V",
        "getTiltEnabled",
        "()Z",
        "setTiltEnabled",
        "(Z)V",
        "getTiltScale",
        "()F",
        "setTiltScale",
        "(F)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "sdk-replicator_overseasRelease"
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
.field private tiltEnabled:Z

.field private tiltScale:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;-><init>(ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltEnabled:Z

    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltScale:F

    return-void
.end method

.method public synthetic constructor <init>(ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/high16 p2, 0x40400000    # 3.0f

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;-><init>(ZF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;ZFILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltEnabled:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltScale:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->copy(ZF)Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltEnabled:Z

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltScale:F

    return p0
.end method

.method public final copy(ZF)Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;-><init>(ZF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.TiltConfig"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltEnabled:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltEnabled:Z

    if-ne v1, v3, :cond_4

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltScale:F

    iget p1, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltScale:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    move p0, v0

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public final getTiltEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltEnabled:Z

    return p0
.end method

.method public final getTiltScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltScale:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltScale:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setTiltEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltEnabled:Z

    return-void
.end method

.method public final setTiltScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltScale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TiltConfig(tiltEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tiltScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->tiltScale:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
