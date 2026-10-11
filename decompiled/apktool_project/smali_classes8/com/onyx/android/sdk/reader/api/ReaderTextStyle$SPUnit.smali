.class public final Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SPUnit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u000b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011B\u0011\u0008\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u0013\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;",
        "",
        "o",
        "",
        "equals",
        "step",
        "increaseSPUnit",
        "decreaseSPUnit",
        "",
        "a",
        "F",
        "getValue",
        "()F",
        "setValue",
        "(F)V",
        "value",
        "<init>",
        "()V",
        "Companion",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    return-void
.end method


# virtual methods
.method public final decreaseSPUnit(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    iget p1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    sub-float/2addr v0, p1

    sget-object p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getMIN_FONT_SIZE()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object p1

    iget p1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    iget p1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    return p0
.end method

.method public final increaseSPUnit(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    iget p1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    add-float/2addr v0, p1

    sget-object p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;->getMAX_FONT_SIZE()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object p1

    iget p1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    return-object p0
.end method

.method public final setValue(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->a:F

    return-void
.end method
