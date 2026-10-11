.class public Lcom/tencent/cos/xml/model/tag/CreateBucketConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bucketAzConfig:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MAZ"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/CreateBucketConfiguration;->bucketAzConfig:Ljava/lang/String;

    return-void
.end method
