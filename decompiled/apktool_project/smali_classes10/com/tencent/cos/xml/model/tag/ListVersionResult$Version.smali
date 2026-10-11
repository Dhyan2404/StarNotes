.class public Lcom/tencent/cos/xml/model/tag/ListVersionResult$Version;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/ListVersionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field public etag:Ljava/lang/String;

.field public isLatest:Z

.field public key:Ljava/lang/String;

.field public lastModified:Ljava/lang/String;

.field public owner:Lcom/tencent/cos/xml/model/tag/ListVersionResult$Owner;

.field public size:J

.field public storageClass:Ljava/lang/String;

.field public versionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
