.class public Lcom/tencent/cos/xml/model/ci/metainsight/DatasetFaceSearchResponse$FaceResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/metainsight/DatasetFaceSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceResult"
.end annotation


# instance fields
.field public faceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/metainsight/DatasetFaceSearchResponse$FaceInfos;",
            ">;"
        }
    .end annotation
.end field

.field public inputFaceBoundary:Lcom/tencent/cos/xml/model/ci/metainsight/DatasetFaceSearchResponse$FaceBoundary;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
