.class public Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getReferers()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isAllowEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->d:Z

    return p0
.end method

.method public setAllowEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->d:Z

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setReferers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->e:Ljava/util/ArrayList;

    return-void
.end method
