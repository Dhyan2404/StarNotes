.class public Lcom/tencent/cos/xml/model/ci/metainsight/DescribeDatasetsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/metainsight/DescribeDatasetsResponse$Dataset;
    }
.end annotation


# instance fields
.field public datasets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/metainsight/DescribeDatasetsResponse$Dataset;",
            ">;"
        }
    .end annotation
.end field

.field public nextToken:Ljava/lang/String;

.field public requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
