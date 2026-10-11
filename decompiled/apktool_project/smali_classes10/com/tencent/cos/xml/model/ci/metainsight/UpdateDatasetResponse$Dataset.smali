.class public Lcom/tencent/cos/xml/model/ci/metainsight/UpdateDatasetResponse$Dataset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/metainsight/UpdateDatasetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dataset"
.end annotation


# instance fields
.field public bindCount:I

.field public createTime:Ljava/lang/String;

.field public datasetName:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public fileCount:I

.field public templateId:Ljava/lang/String;

.field public totalFileSize:I

.field public updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
