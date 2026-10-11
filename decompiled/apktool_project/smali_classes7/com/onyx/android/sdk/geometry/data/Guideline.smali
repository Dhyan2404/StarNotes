.class public final Lcom/onyx/android/sdk/geometry/data/Guideline;
.super Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/data/Guideline$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGuideLine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideLine.kt\ncom/onyx/android/sdk/geometry/data/Guideline\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,133:1\n32#2,5:134\n*S KotlinDebug\n*F\n+ 1 GuideLine.kt\ncom/onyx/android/sdk/geometry/data/Guideline\n*L\n40#1:134,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\u0019\u001a\u00020\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u0003H\u0016R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\nR\u001a\u0010\u0013\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011R\u001a\u0010\u0016\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000f\"\u0004\u0008\u0018\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
        "shapeId",
        "",
        "start",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "end",
        "id",
        "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "isShapeGuideLine",
        "",
        "()Z",
        "setShapeGuideLine",
        "(Z)V",
        "getShapeId",
        "supportHorizontalAlignment",
        "getSupportHorizontalAlignment",
        "setSupportHorizontalAlignment",
        "supportVerticalAlignment",
        "getSupportVerticalAlignment",
        "setSupportVerticalAlignment",
        "equals",
        "other",
        "",
        "toString",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGuideLine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideLine.kt\ncom/onyx/android/sdk/geometry/data/Guideline\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,133:1\n32#2,5:134\n*S KotlinDebug\n*F\n+ 1 GuideLine.kt\ncom/onyx/android/sdk/geometry/data/Guideline\n*L\n40#1:134,5\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/geometry/data/Guideline$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Empty:Lcom/onyx/android/sdk/geometry/data/Guideline;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isShapeGuideLine:Z

.field private final shapeId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private supportHorizontalAlignment:Z

.field private supportVerticalAlignment:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/Guideline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/geometry/data/Guideline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/Guideline;->Companion:Lcom/onyx/android/sdk/geometry/data/Guideline$Companion;

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/Guideline;

    sget-object v1, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    const-string v3, ""

    invoke-direct {v0, v3, v2, v1, v3}, Lcom/onyx/android/sdk/geometry/data/Guideline;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/Guideline;->Empty:Lcom/onyx/android/sdk/geometry/data/Guideline;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 4
    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->shapeId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->id:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->isShapeGuideLine:Z

    .line 7
    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->supportHorizontalAlignment:Z

    .line 8
    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->supportVerticalAlignment:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "toString(...)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/data/Guideline;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lcom/onyx/android/sdk/geometry/data/Guideline;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/Guideline;->Empty:Lcom/onyx/android/sdk/geometry/data/Guideline;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/onyx/android/sdk/geometry/data/Guideline;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/Guideline;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/Guideline;->id:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getShapeId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->shapeId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSupportHorizontalAlignment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->supportHorizontalAlignment:Z

    return p0
.end method

.method public final getSupportVerticalAlignment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->supportVerticalAlignment:Z

    return p0
.end method

.method public final isShapeGuideLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->isShapeGuideLine:Z

    return p0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->id:Ljava/lang/String;

    return-void
.end method

.method public final setShapeGuideLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->isShapeGuideLine:Z

    return-void
.end method

.method public final setSupportHorizontalAlignment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->supportHorizontalAlignment:Z

    return-void
.end method

.method public final setSupportVerticalAlignment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/Guideline;->supportVerticalAlignment:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
