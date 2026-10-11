.class Lcom/tencent/cos/xml/model/CosXmlRequest$1;
.super Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredential(Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/model/CosXmlRequest;

.field final synthetic val$credential:Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest$1;->this$0:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iput-object p2, p0, Lcom/tencent/cos/xml/model/CosXmlRequest$1;->val$credential:Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchNewCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest$1;->val$credential:Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    return-object p0
.end method
