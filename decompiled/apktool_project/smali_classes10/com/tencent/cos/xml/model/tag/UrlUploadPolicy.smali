.class public Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;
    }
.end annotation


# instance fields
.field private final downloadType:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

.field private final fileLength:J


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;->downloadType:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    iput-wide p2, p0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;->fileLength:J

    return-void
.end method


# virtual methods
.method public getDownloadType()Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;->downloadType:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    return-object p0
.end method

.method public getFileLength()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;->fileLength:J

    return-wide v0
.end method
