.class final Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadPart"
.end annotation


# instance fields
.field etag:Ljava/lang/String;

.field number:I

.field offset:J

.field size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;->etag:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;->number:I

    iput-wide p3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;->offset:J

    iput-wide p5, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;->size:J

    return-void
.end method
