.class public Lcom/tencent/cos/xml/model/ci/metainsight/DescribeFileMetaIndexResponse$FilesDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/metainsight/DescribeFileMetaIndexResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilesDetail"
.end annotation


# instance fields
.field public CustomId:Ljava/lang/String;

.field public cOSCRC64:Ljava/lang/String;

.field public cOSStorageClass:Ljava/lang/String;

.field public cacheControl:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public customLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public eTag:Ljava/lang/String;

.field public fileModifiedTime:Ljava/lang/String;

.field public filename:Ljava/lang/String;

.field public mediaType:Ljava/lang/String;

.field public objectACL:Ljava/lang/String;

.field public size:I

.field public uRI:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
