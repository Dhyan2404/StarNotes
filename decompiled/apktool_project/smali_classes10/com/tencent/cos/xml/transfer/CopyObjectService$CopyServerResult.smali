.class public Lcom/tencent/cos/xml/transfer/CopyObjectService$CopyServerResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/CopyObjectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyServerResult"
.end annotation


# instance fields
.field public eTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;-><init>()V

    return-void
.end method
