.class public Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

.field public final e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantValueAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "EnclosingMethod"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/EnclosingMethodAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LineNumberTableAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->setRvaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->setRiaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->setRvpaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p0

    const-string v0, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->setRipaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    return-void
.end method

.method public getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->d:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    return-object p0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getAttributeDefinitionCount()I

    move-result v0

    const-string v1, "attr_definition_headers"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->a:[I

    const-string v2, "attr_definition_name"

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->e:[Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v7

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->c:[Ljava/lang/String;

    const-string v2, "attr_definition_layout"

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->e:[Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->b:[Ljava/lang/String;

    new-instance p1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-direct {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->d:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasClassFlagsHi()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3f

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->a:[I

    aget v2, v2, v1

    and-int/lit8 v5, v2, 0x3

    shr-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    move v7, p1

    move p1, v2

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->c:[Ljava/lang/String;

    aget-object v4, v3, v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->b:[Ljava/lang/String;

    aget-object v6, v3, v1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->d:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->d:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->checkMap()V

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->c()V

    return-void
.end method

.method public unpack()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
