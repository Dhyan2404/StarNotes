.class public Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0001\u0012\u0006\u0010\u0013\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0014J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0008H\u0002R\u0014\u0010\u0011\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;",
        "Ljava/io/InputStream;",
        "",
        "b",
        "",
        "read",
        "off",
        "len",
        "",
        "n",
        "skip",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "progressInfo",
        "",
        "notifyProgress",
        "readCount",
        "f",
        "input",
        "Ljava/io/InputStream;",
        "length",
        "J",
        "sumRead",
        "inputStream",
        "<init>",
        "(Ljava/io/InputStream;J)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final input:Ljava/io/InputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final length:J

.field private sumRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    int-to-long p2, p2

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->input:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->length:J

    return-void
.end method


# virtual methods
.method public final f(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->sumRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->sumRead:J

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->length:J

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setTotalBytes(J)V

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->sumRead:J

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setSoFarBytes(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getSoFarBytes()J

    move-result-wide v0

    long-to-float p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getTotalBytes()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setProgress(D)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->notifyProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public notifyProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "progressInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-wide/16 v1, 0x1

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->f(J)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->f(J)V

    return p1
.end method

.method public read([BII)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->f(J)V

    return p1
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;->f(J)V

    return-wide p1
.end method
