.class public Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->completeMultipartUploadResult()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alibaba/sdk/android/oss/model/PartETag;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$b;->e:Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/oss/model/PartETag;Lcom/alibaba/sdk/android/oss/model/PartETag;)I
    .locals 1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result p0

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result p0

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result p1

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PartETag;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$b;->a(Lcom/alibaba/sdk/android/oss/model/PartETag;Lcom/alibaba/sdk/android/oss/model/PartETag;)I

    move-result p0

    return p0
.end method
