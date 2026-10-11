.class public Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetObjectName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetObjectName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;->f:Ljava/lang/String;

    return-void
.end method
