.class public Lorg/apache/commons/compress/harmony/unpack200/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_LEVEL_QUIET:I = 0x0

.field public static final LOG_LEVEL_STANDARD:I = 0x1

.field public static final LOG_LEVEL_VERBOSE:I = 0x2


# instance fields
.field public a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

.field public b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field public c:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

.field public d:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

.field public e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

.field public f:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

.field public g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Ljava/io/PrintWriter;

.field public m:[[B

.field public n:[Z

.field public o:[Z

.field public p:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;-><init>()V

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassVersionMajor()[I

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassVersionMinor()[I

    move-result-object v3

    if-eqz v2, :cond_0

    aget v2, v2, p1

    iput v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->major:I

    aget v2, v3, p1

    iput v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->minor:I

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMajorVersion()I

    move-result v2

    iput v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->major:I

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMinorVersion()I

    move-result v2

    iput v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->minor:I

    :goto_0
    iget-object v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->pool:Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassThisInts()[I

    move-result-object v3

    aget v3, v3, p1

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassAttributes()[Ljava/util/ArrayList;

    move-result-object v7

    aget-object v7, v7, p1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->isSourceFileAttribute()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v10, v11

    check-cast v10, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    const/4 v11, 0x0

    if-nez v10, :cond_7

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->c:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-result-object v10

    const-string v12, "SourceFile"

    invoke-virtual {v10, v12, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v10

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getRawClassFlags()[J

    move-result-object v12

    aget-wide v12, v12, p1

    invoke-virtual {v10, v12, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v10

    if-eqz v10, :cond_6

    move v12, v8

    move v10, v11

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v10, v13, :cond_4

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x24

    if-gt v13, v14, :cond_3

    move v12, v10

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    const-string v10, ".java"

    if-le v12, v8, :cond_5

    if-gt v5, v12, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    new-instance v10, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v12, v5, v11}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v5

    invoke-direct {v10, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    new-array v5, v6, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v2, v10}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    aput-object v10, v5, v11

    iput-object v5, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    goto :goto_4

    :cond_6
    new-array v5, v11, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    iput-object v5, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    goto :goto_4

    :cond_7
    new-array v5, v6, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v2, v10}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    aput-object v10, v5, v11

    iput-object v5, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v11

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_9

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->isSourceFileAttribute()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_9
    iget-object v7, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    array-length v10, v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v10, v12

    new-array v10, v10, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    iput-object v10, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    array-length v12, v7

    invoke-static {v7, v11, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v10, v11

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_a

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v2, v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    iget-object v13, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    array-length v14, v7

    add-int/2addr v14, v10

    aput-object v12, v13, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v5, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v3

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassSuperInts()[I

    move-result-object v7

    aget v7, v7, p1

    invoke-virtual {v5, v7}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v5

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassInterfacesInts()[[I

    move-result-object v7

    aget-object v7, v7, p1

    array-length v7, v7

    new-array v10, v7, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move v12, v11

    :goto_7
    if-ge v12, v7, :cond_b

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassInterfacesInts()[[I

    move-result-object v14

    aget-object v14, v14, p1

    aget v14, v14, v12

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v13

    invoke-virtual {v2, v13}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v13

    aput-object v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_b
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassFieldCount()[I

    move-result-object v12

    aget v12, v12, p1

    new-array v13, v12, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move v14, v11

    :goto_8
    if-ge v14, v12, :cond_c

    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getFieldDescrInts()[[I

    move-result-object v15

    aget-object v15, v15, p1

    aget v15, v15, v14

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorNameInts()[I

    move-result-object v9

    aget v9, v9, v15

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorTypeInts()[I

    move-result-object v11

    aget v11, v11, v15

    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v15, v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v17

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v9, v11}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v18

    new-instance v9, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPField;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getFieldFlags()[[J

    move-result-object v11

    aget-object v11, v11, p1

    aget-wide v19, v11, v14

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getFieldAttributes()[[Ljava/util/ArrayList;

    move-result-object v11

    aget-object v11, v11, p1

    aget-object v21, v11, v14

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v21}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPField;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;JLjava/util/List;)V

    invoke-virtual {v2, v9}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v9

    aput-object v9, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x0

    goto :goto_8

    :cond_c
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassMethodCount()[I

    move-result-object v9

    aget v9, v9, p1

    new-array v11, v9, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v9, :cond_d

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodDescrInts()[[I

    move-result-object v14

    aget-object v14, v14, p1

    aget v14, v14, v12

    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorNameInts()[I

    move-result-object v15

    aget v15, v15, v14

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorTypeInts()[I

    move-result-object v6

    aget v6, v6, v14

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v18

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v14, v6}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v19

    new-instance v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethod;

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodFlags()[[J

    move-result-object v14

    aget-object v14, v14, p1

    aget-wide v20, v14, v12

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodAttributes()[[Ljava/util/ArrayList;

    move-result-object v14

    aget-object v14, v14, p1

    aget-object v22, v14, v12

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v22}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethod;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;JLjava/util/List;)V

    invoke-virtual {v2, v6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v6

    aput-object v6, v11, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->addNestedEntries()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getIcLocal()[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v6

    aget-object v6, v6, p1

    if-eqz v6, :cond_e

    const/4 v9, 0x1

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    :goto_a
    new-instance v12, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;

    const-string v14, "InnerClasses"

    invoke-direct {v12, v14}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    move-result-object v14

    invoke-virtual {v14, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->getRelevantIcTuples(Ljava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b([Lorg/apache/commons/compress/harmony/unpack200/IcTuple;[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->thisClassIndex()I

    move-result v8

    move-object/from16 v18, v14

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassIndex()I

    move-result v14

    move-object/from16 v19, v11

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->simpleClassNameIndex()I

    move-result v11

    move-object/from16 v20, v13

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->thisClassString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v10

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassString()Ljava/lang/String;

    move-result-object v10

    move/from16 v22, v7

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->simpleClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v23, v5

    const/4 v5, -0x1

    if-eq v8, v5, :cond_f

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v13, v8}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v8

    goto :goto_c

    :cond_f
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v8, v13}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v8

    :goto_c
    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isAnonymous()Z

    move-result v13

    if-nez v13, :cond_11

    if-eq v11, v5, :cond_10

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v7, v11}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v7

    goto :goto_d

    :cond_10
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v11, v7}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v7

    goto :goto_d

    :cond_11
    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isMember()Z

    move-result v11

    if-eqz v11, :cond_13

    if-eq v14, v5, :cond_12

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v10, v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v10

    goto :goto_e

    :cond_12
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v11, v10}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v10

    goto :goto_e

    :cond_13
    const/4 v10, 0x0

    :goto_e
    iget v11, v15, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->F:I

    invoke-virtual {v12, v8, v10, v7, v11}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->addInnerClassesEntry(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    move v8, v5

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v13, v20

    move-object/from16 v10, v21

    move/from16 v7, v22

    move-object/from16 v5, v23

    const/4 v15, 0x1

    goto/16 :goto_b

    :cond_14
    move-object/from16 v23, v5

    move/from16 v22, v7

    move-object/from16 v21, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    if-eqz v9, :cond_15

    array-length v5, v6

    if-nez v5, :cond_15

    const/4 v15, 0x0

    :cond_15
    if-nez v9, :cond_16

    array-length v4, v4

    if-nez v4, :cond_16

    const/4 v15, 0x0

    :cond_16
    if-eqz v15, :cond_17

    iget-object v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    array-length v5, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    new-array v7, v5, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    array-length v8, v4

    const/4 v9, 0x0

    invoke-static {v4, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v5, v6

    aput-object v12, v7, v5

    iput-object v7, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v2, v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->addWithNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    goto :goto_f

    :cond_17
    const/4 v9, 0x0

    :goto_f
    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->resolve(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iget-object v0, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassFlags()[J

    move-result-object v0

    aget-wide v4, v0, p1

    long-to-int v0, v4

    iput v0, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->accessFlags:I

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->thisClass:I

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->superClass:I

    move/from16 v0, v22

    new-array v3, v0, [I

    iput-object v3, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->interfaces:[I

    move v11, v9

    :goto_10
    if-ge v11, v0, :cond_18

    iget-object v3, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->interfaces:[I

    aget-object v4, v21, v11

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v4

    aput v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_18
    move-object/from16 v3, v20

    iput-object v3, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->fields:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-object/from16 v0, v19

    iput-object v0, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->methods:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    return-object v1
.end method

.method public final b([Lorg/apache/commons/compress/harmony/unpack200/IcTuple;[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            "[",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashSet;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    :goto_1
    if-ge v2, p1, :cond_3

    aget-object v3, p2, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/sunia/HTREnginev2/rdm;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/rdm;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public final c()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->unpack()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->unpack()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->c:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->unpack()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->d:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->unpack()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->unpack()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->f:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->unpack()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->unpack()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileName()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileOptions()[I

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v3

    new-array v4, v0, [[B

    iput-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->m:[[B

    new-array v4, v0, [Z

    iput-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->n:[Z

    new-array v4, v0, [Z

    iput-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->o:[Z

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v0, :cond_9

    aget-object v9, v1, v7

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move v9, v6

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v10

    :goto_2
    aget v11, v2, v7

    const/4 v12, 0x2

    and-int/2addr v11, v12

    if-eq v11, v12, :cond_3

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    move v11, v6

    goto :goto_4

    :cond_3
    :goto_3
    move v11, v10

    :goto_4
    if-eqz v11, :cond_4

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassThisInts()[I

    move-result-object v13

    aget v13, v13, v8

    aget-object v12, v12, v13

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".class"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    :cond_4
    iget-boolean v9, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->h:Z

    if-nez v9, :cond_7

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->n:[Z

    aget v12, v2, v7

    and-int/2addr v12, v10

    if-eq v12, v10, :cond_6

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->shouldDeflate()Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_5

    :cond_5
    move v10, v6

    :cond_6
    :goto_5
    aput-boolean v10, v9, v7

    goto :goto_6

    :cond_7
    iget-object v9, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->n:[Z

    iget-boolean v10, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->i:Z

    aput-boolean v10, v9, v7

    :goto_6
    iget-object v9, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->o:[Z

    aput-boolean v11, v9, v7

    if-eqz v11, :cond_8

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->m:[[B

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v8, v8, 0x1

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final d(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "-------"

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->read(Ljava/io/InputStream;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->c:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->read(Ljava/io/InputStream;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->d:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->read(Ljava/io/InputStream;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->read(Ljava/io/InputStream;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->f:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->read(Ljava/io/InputStream;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->read(Ljava/io/InputStream;)V

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->processFileBits()V

    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->p:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->d(Ljava/io/InputStream;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->c()V

    return-void
.end method

.method public f(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->read(Ljava/io/InputStream;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveSize()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveSizeOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->p:Ljava/io/InputStream;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->d(Ljava/io/InputStream;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/util/jar/JarOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->writeJar(Ljava/util/jar/JarOutputStream;)V

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->l:Ljava/io/PrintWriter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method public getAttrDefinitionBands()Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->c:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    return-object p0
.end method

.method public getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    return-object p0
.end method

.method public getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object p0

    return-object p0
.end method

.method public getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    return-object p0
.end method

.method public getIcBands()Lorg/apache/commons/compress/harmony/unpack200/IcBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->d:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    return-object p0
.end method

.method public getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    return-object p0
.end method

.method public log(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->k:I

    if-lt v0, p1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->l:Ljava/io/PrintWriter;

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public overrideDeflateHint(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->h:Z

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->i:Z

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->k:I

    return-void
.end method

.method public setLogStream(Ljava/io/OutputStream;)V
    .locals 3

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->l:Ljava/io/PrintWriter;

    return-void
.end method

.method public setPreRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->j:Z

    return-void
.end method

.method public unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->f(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->e()V

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g(Ljava/util/jar/JarOutputStream;)V

    return-void
.end method

.method public writeJar(Ljava/util/jar/JarOutputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileName()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileModtime()[I

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileSize()[J

    move-result-object v4

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->g:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileBits()[[B

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v6

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->a:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveModtime()J

    move-result-wide v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v6, :cond_3

    aget-object v12, v2, v10

    aget v13, v3, v10

    int-to-long v13, v13

    add-long/2addr v13, v7

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->n:[Z

    aget-boolean v15, v15, v10

    new-instance v9, Ljava/util/jar/JarEntry;

    invoke-direct {v9, v12}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    if-eqz v15, :cond_0

    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_2

    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    new-instance v15, Ljava/util/zip/CRC32;

    invoke-direct {v15}, Ljava/util/zip/CRC32;-><init>()V

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->o:[Z

    aget-boolean v12, v12, v10

    if-eqz v12, :cond_1

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->m:[[B

    aget-object v12, v12, v11

    invoke-virtual {v15, v12}, Ljava/util/zip/CRC32;->update([B)V

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->m:[[B

    aget-object v12, v12, v11

    array-length v12, v12

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    int-to-long v2, v12

    invoke-virtual {v9, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    goto :goto_1

    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    aget-object v2, v5, v10

    invoke-virtual {v15, v2}, Ljava/util/zip/CRC32;->update([B)V

    aget-wide v2, v4, v10

    invoke-virtual {v9, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    :goto_1
    invoke-virtual {v15}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    :goto_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v13, v2

    invoke-virtual {v9, v13, v14}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {v1, v9}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->o:[Z

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->m:[[B

    aget-object v2, v2, v11

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {v9, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->m:[[B

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    aget-wide v2, v4, v10

    invoke-virtual {v9, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    aget-object v2, v5, v10

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_3
    return-void
.end method
