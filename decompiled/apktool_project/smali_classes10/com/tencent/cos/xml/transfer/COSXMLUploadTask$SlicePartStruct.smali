.class Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlicePartStruct"
.end annotation


# instance fields
.field public eTag:Ljava/lang/String;

.field public isAlreadyUpload:Z

.field public offset:J

.field public partNumber:I

.field public sliceSize:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;-><init>()V

    return-void
.end method
