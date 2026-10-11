.class public Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQuery$SubQueries;,
        Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQuery$Query;,
        Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQuery$Aggregations;
    }
.end annotation


# instance fields
.field public aggregations:Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQuery$Aggregations;

.field public datasetName:Ljava/lang/String;

.field public maxResults:I

.field public nextToken:Ljava/lang/String;

.field public order:Ljava/lang/String;

.field public query:Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQuery$Query;

.field public sort:Ljava/lang/String;

.field public withFields:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
