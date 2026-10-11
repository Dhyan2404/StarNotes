.class public Lorg/apache/poi/hslf/usermodel/HSLFObjectData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ObjectData;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# instance fields
.field private final storage:Lorg/apache/poi/hslf/record/ExOleObjStg;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/record/ExOleObjStg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;->storage:Lorg/apache/poi/hslf/record/ExOleObjStg;

    return-void
.end method


# virtual methods
.method public getExOleObjStg()Lorg/apache/poi/hslf/record/ExOleObjStg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;->storage:Lorg/apache/poi/hslf/record/ExOleObjStg;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGenericChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/common/usermodel/GenericRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;->getExOleObjStg()Lorg/apache/poi/hslf/record/ExOleObjStg;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;->storage:Lorg/apache/poi/hslf/record/ExOleObjStg;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExOleObjStg;->getData()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getOLE2ClassName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFObjectData$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectData$1;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFObjectData;)V

    return-object v0
.end method

.method public setData([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;->storage:Lorg/apache/poi/hslf/record/ExOleObjStg;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ExOleObjStg;->setData([B)V

    return-void
.end method
