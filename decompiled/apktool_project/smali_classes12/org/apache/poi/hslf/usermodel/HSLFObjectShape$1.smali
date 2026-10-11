.class Lorg/apache/poi/hslf/usermodel/HSLFObjectShape$1;
.super Lorg/apache/commons/io/output/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->updateObjectData(Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;Lorg/apache/poi/sl/usermodel/ObjectMetaData;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;

.field final synthetic val$md:Lorg/apache/poi/sl/usermodel/ObjectMetaData;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;Lorg/apache/poi/sl/usermodel/ObjectMetaData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape$1;->val$md:Lorg/apache/poi/sl/usermodel/ObjectMetaData;

    invoke-direct {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape$1;->val$md:Lorg/apache/poi/sl/usermodel/ObjectMetaData;

    invoke-static {v0, v1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;->access$000(Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;Lorg/apache/poi/sl/usermodel/ObjectMetaData;Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;)V

    return-void
.end method
