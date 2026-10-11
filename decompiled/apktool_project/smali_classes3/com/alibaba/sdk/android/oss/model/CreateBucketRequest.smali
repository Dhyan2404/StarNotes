.class public Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "SourceFile"


# static fields
.field public static final TAB_LOCATIONCONSTRAINT:Ljava/lang/String; = "LocationConstraint"

.field public static final TAB_STORAGECLASS:Ljava/lang/String; = "StorageClass"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field public e:Ljava/lang/String;

.field public f:Lcom/alibaba/sdk/android/oss/model/StorageClass;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    sget-object v0, Lcom/alibaba/sdk/android/oss/model/StorageClass;->Standard:Lcom/alibaba/sdk/android/oss/model/StorageClass;

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->f:Lcom/alibaba/sdk/android/oss/model/StorageClass;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->setBucketName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBucketACL()Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->d:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-object p0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getBucketStorageClass()Lcom/alibaba/sdk/android/oss/model/StorageClass;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->f:Lcom/alibaba/sdk/android/oss/model/StorageClass;

    return-object p0
.end method

.method public getLocationConstraint()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketACL(Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->d:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setBucketStorageClass(Lcom/alibaba/sdk/android/oss/model/StorageClass;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->f:Lcom/alibaba/sdk/android/oss/model/StorageClass;

    return-void
.end method

.method public setLocationConstraint(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->e:Ljava/lang/String;

    return-void
.end method
