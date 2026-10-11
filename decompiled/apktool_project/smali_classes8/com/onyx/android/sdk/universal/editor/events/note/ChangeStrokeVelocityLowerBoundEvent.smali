.class public final Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\t\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;",
        "",
        "",
        "component1",
        "lower",
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
        "getLower",
        "()F",
        "<init>",
        "(F)V",
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


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;->a:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;FILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;->a:F

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;->copy(F)Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;->a:F

    return p0
.end method

.method public final copy(F)Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;-><init>(F)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;->a:F

    iget p1, p1, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;->a:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getLower()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;->a:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;->a:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeStrokeVelocityLowerBoundEvent(lower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;->a:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
