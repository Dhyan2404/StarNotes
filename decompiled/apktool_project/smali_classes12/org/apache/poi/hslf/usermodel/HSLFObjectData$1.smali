.class Lorg/apache/poi/hslf/usermodel/HSLFObjectData$1;
.super Lorg/apache/commons/io/output/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hslf/usermodel/HSLFObjectData;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFObjectData;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFObjectData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectData$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    invoke-direct {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectData$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ObjectData;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;->setData([B)V

    return-void
.end method
