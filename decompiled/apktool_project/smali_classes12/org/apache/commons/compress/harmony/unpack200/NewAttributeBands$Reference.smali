.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;
.super Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reference"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/Object;

.field public final d:I

.field public final synthetic e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$a;)V

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;->getLength(C)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    return-void
.end method


# virtual methods
.method public addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->d:I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->addToBody(ILjava/lang/Object;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    return-object p0
.end method

.method public readBands(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPIntReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPLongReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPFloatReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPDoubleReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "KS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPStringReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPClassReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPDescriptorReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPFieldRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPInterfaceMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->b:Ljava/lang/String;

    const-string v1, "RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->e:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->c(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;->c:Ljava/lang/Object;

    :cond_b
    :goto_0
    return-void
.end method
