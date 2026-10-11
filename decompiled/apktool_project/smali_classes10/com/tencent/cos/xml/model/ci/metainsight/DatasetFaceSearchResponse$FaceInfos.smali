.class public Lcom/tencent/cos/xml/model/ci/metainsight/DatasetFaceSearchResponse$FaceInfos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/metainsight/DatasetFaceSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceInfos"
.end annotation


# instance fields
.field public faceBoundary:Lcom/tencent/cos/xml/model/ci/metainsight/DatasetFaceSearchResponse$FaceBoundary;

.field public faceId:Ljava/lang/String;

.field public personId:Ljava/lang/String;

.field public score:I

.field public uRI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
