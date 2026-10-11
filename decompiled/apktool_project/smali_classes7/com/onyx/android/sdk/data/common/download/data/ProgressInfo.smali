.class public final Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0002B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u000f\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0019\u001a\u00020\u001aJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "",
        "()V",
        "current",
        "",
        "total",
        "(II)V",
        "",
        "(JJ)V",
        "progressInfo",
        "(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V",
        "progress",
        "",
        "getProgress",
        "()D",
        "setProgress",
        "(D)V",
        "soFarBytes",
        "getSoFarBytes",
        "()J",
        "setSoFarBytes",
        "(J)V",
        "totalBytes",
        "getTotalBytes",
        "setTotalBytes",
        "isComplete",
        "",
        "toString",
        "",
        "Companion",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private progress:D

.field private soFarBytes:J

.field private totalBytes:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    int-to-long v0, p1

    int-to-long p1, p2

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->soFarBytes:J

    .line 5
    iput-wide p3, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->totalBytes:J

    long-to-double p1, p1

    const/16 v0, 0x64

    int-to-double v0, v0

    mul-double/2addr p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    .line 6
    iput-wide p1, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->progress:D

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "progressInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-wide v0, p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->soFarBytes:J

    iget-wide v2, p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->totalBytes:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final getProgress()D
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->progress:D

    return-wide v0
.end method

.method public final getSoFarBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->soFarBytes:J

    return-wide v0
.end method

.method public final getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->totalBytes:J

    return-wide v0
.end method

.method public final isComplete()Z
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->progress:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setProgress(D)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->progress:D

    return-void
.end method

.method public final setSoFarBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->soFarBytes:J

    return-void
.end method

.method public final setTotalBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->totalBytes:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressInfo{soFarBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->soFarBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->totalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->progress:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
