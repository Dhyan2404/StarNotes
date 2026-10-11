.class Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyPartStruct"
.end annotation


# instance fields
.field public eTag:Ljava/lang/String;

.field public end:J

.field public isAlreadyUpload:Z

.field public partNumber:I

.field public start:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;-><init>()V

    return-void
.end method
