.class public Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COSXMLUploadTaskResult"
.end annotation


# instance fields
.field public callbackResult:Lcom/tencent/cos/xml/model/tag/CallbackResult;

.field public eTag:Ljava/lang/String;

.field public picUploadResult:Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;-><init>()V

    return-void
.end method
