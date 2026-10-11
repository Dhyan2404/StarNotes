.class public final Lcom/onyx/android/sdk/reader/api/ProgressInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ProgressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ProgressInfo$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/reader/api/ProgressInfo;",
        "current",
        "",
        "total",
        "sdk-readercore_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ProgressInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(II)Lcom/onyx/android/sdk/reader/api/ProgressInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/api/ProgressInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ProgressInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ProgressInfo;->setSoFarBytes(I)V

    const/4 p1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ProgressInfo;->setTotalBytes(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ProgressInfo;->getSoFarBytes()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ProgressInfo;->getTotalBytes()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ProgressInfo;->setProgress(F)V

    return-object p0
.end method
