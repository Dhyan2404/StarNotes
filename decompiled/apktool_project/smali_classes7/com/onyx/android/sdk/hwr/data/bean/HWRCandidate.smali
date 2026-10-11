.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0018\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0005\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0005\u001a\u0004\u0008\u0010\u0010\u0007\"\u0004\u0008\u0011\u0010\tR\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0005\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0005\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\tR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "",
        "",
        "toString",
        "a",
        "Ljava/lang/String;",
        "getContentType",
        "()Ljava/lang/String;",
        "setContentType",
        "(Ljava/lang/String;)V",
        "contentType",
        "b",
        "getShapeType",
        "setShapeType",
        "shapeType",
        "c",
        "getGestureType",
        "setGestureType",
        "gestureType",
        "d",
        "getText",
        "setText",
        "text",
        "e",
        "getData",
        "setData",
        "data",
        "",
        "f",
        "I",
        "getScroe",
        "()I",
        "setScroe",
        "(I)V",
        "scroe",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "g",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "getShapeArgs",
        "()Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "setShapeArgs",
        "(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V",
        "shapeArgs",
        "<init>",
        "()V",
        "Companion",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OVAL_TO_CIRCLE_THRESHOLD_RATIO:F = 1.2f


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Text"

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->a:Ljava/lang/String;

    const-string v0, "Any"

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->e:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->Companion:Lcom/onyx/android/sdk/geometry/data/GeometryArgs$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs$Companion;->getEmpty()Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->g:Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    return-void
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getData()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getGestureType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getScroe()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->f:I

    return p0
.end method

.method public final getShapeArgs()Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->g:Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    return-object p0
.end method

.method public final getShapeType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->a:Ljava/lang/String;

    return-void
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->e:Ljava/lang/String;

    return-void
.end method

.method public final setGestureType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->c:Ljava/lang/String;

    return-void
.end method

.method public final setScroe(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->f:I

    return-void
.end method

.method public final setShapeArgs(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->g:Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    return-void
.end method

.method public final setShapeType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->b:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->a:Ljava/lang/String;

    const-string v1, "Text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->a:Ljava/lang/String;

    const-string v1, "Shape"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->b:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->a:Ljava/lang/String;

    const-string v1, "Gesture"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->c:Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
