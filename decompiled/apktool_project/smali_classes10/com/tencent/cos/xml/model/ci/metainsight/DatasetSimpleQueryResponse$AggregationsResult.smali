.class public Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQueryResponse$AggregationsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQueryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AggregationsResult"
.end annotation


# instance fields
.field public field:Ljava/lang/String;

.field public groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQueryResponse$Groups;",
            ">;"
        }
    .end annotation
.end field

.field public operation:Ljava/lang/String;

.field public value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
