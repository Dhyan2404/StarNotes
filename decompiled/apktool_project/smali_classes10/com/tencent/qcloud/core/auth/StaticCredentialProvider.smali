.class public Lcom/tencent/qcloud/core/auth/StaticCredentialProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;


# instance fields
.field private mCredentials:Lcom/tencent/qcloud/core/auth/QCloudCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qcloud/core/auth/QCloudCredentials;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/StaticCredentialProvider;->mCredentials:Lcom/tencent/qcloud/core/auth/QCloudCredentials;

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/tencent/qcloud/core/auth/QCloudCredentials;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/StaticCredentialProvider;->mCredentials:Lcom/tencent/qcloud/core/auth/QCloudCredentials;

    return-object p0
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public update(Lcom/tencent/qcloud/core/auth/QCloudCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/StaticCredentialProvider;->mCredentials:Lcom/tencent/qcloud/core/auth/QCloudCredentials;

    return-void
.end method
