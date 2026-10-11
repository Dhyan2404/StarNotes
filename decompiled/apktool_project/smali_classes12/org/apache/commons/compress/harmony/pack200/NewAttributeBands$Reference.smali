.class public Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;
.super Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reference"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final synthetic e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->d:Z

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const/16 v0, 0x4e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->d:Z

    return-void
.end method


# virtual methods
.method public addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    const/4 v1, 0x4

    invoke-static {v0, v1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->m(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I

    move-result p2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->c:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->o(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/pack200/CpBands;

    move-result-object p0

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->readClass(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->c:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->o(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/pack200/CpBands;

    move-result-object p0

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->readUTF8(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->c:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->o(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/pack200/CpBands;

    move-result-object p0

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->readUTF8(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->c:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->o(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/pack200/CpBands;

    move-result-object p0

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->readConst(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    return-object p0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
