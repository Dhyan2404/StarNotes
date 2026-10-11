.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0007J\u0016\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;",
        "",
        "()V",
        "OVAL_TO_CIRCLE_THRESHOLD_RATIO",
        "",
        "gesture",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "",
        "other",
        "contentType",
        "data",
        "shape",
        "text",
        "sdk-hwr_release"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final gesture(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "gesture"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;-><init>()V

    const-string v0, "Gesture"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->setGestureType(Ljava/lang/String;)V

    return-object p0
.end method

.method public final other(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "contentType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->setData(Ljava/lang/String;)V

    return-object p0
.end method

.method public final shape(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;-><init>()V

    const-string v0, "Shape"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->setShapeType(Ljava/lang/String;)V

    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;-><init>()V

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->setText(Ljava/lang/String;)V

    return-object p0
.end method
