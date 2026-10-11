.class public Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
.super Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/bcel/internal/classfile/Node;


# static fields
.field public static final FILE:B = 0x2t

.field public static final HEAP:B = 0x1t

.field public static final ZIP:B = 0x3t

.field static debug:Z = false

.field static sep:C = '/'


# instance fields
.field private attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

.field private class_name:Ljava/lang/String;

.field private class_name_index:I

.field private constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

.field private file_name:Ljava/lang/String;

.field private interface_names:[Ljava/lang/String;

.field private interfaces:[I

.field private major:I

.field private methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

.field private minor:I

.field private package_name:Ljava/lang/String;

.field private transient repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

.field private source:B

.field private source_file_name:Ljava/lang/String;

.field private superclass_name:Ljava/lang/String;

.field private superclass_name_index:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "JavaClass.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->debug:Z

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->sep:C
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;[I[Lcom/sun/org/apache/bcel/internal/classfile/Field;[Lcom/sun/org/apache/bcel/internal/classfile/Method;[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 13

    const/4 v12, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 33
    invoke-direct/range {v0 .. v12}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;-><init>(IILjava/lang/String;IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;[I[Lcom/sun/org/apache/bcel/internal/classfile/Field;[Lcom/sun/org/apache/bcel/internal/classfile/Method;[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;B)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;[I[Lcom/sun/org/apache/bcel/internal/classfile/Field;[Lcom/sun/org/apache/bcel/internal/classfile/Method;[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;-><init>()V

    const-string v0, "<Unknown>"

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-byte v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->source:B

    .line 4
    invoke-static {}, Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;->getInstance()Lcom/sun/org/apache/bcel/internal/util/SyntheticRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    const/4 v0, 0x0

    if-nez p8, :cond_0

    new-array p8, v0, [I

    :cond_0
    if-nez p11, :cond_1

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    .line 5
    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    :cond_1
    if-nez p9, :cond_2

    new-array p9, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Field;

    :cond_2
    if-nez p10, :cond_3

    new-array p10, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Method;

    .line 6
    :cond_3
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name_index:I

    .line 7
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name_index:I

    .line 8
    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->file_name:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->major:I

    .line 10
    iput p5, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->minor:I

    .line 11
    iput p6, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    .line 12
    iput-object p7, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    .line 13
    iput-object p8, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interfaces:[I

    .line 14
    iput-object p9, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    .line 15
    iput-object p10, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    .line 16
    iput-object p11, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    .line 17
    iput-byte p12, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->source:B

    move p3, v0

    .line 18
    :goto_0
    array-length p4, p11

    if-ge p3, p4, :cond_5

    .line 19
    aget-object p4, p11, p3

    instance-of p5, p4, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;

    if-eqz p5, :cond_4

    .line 20
    check-cast p4, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;

    invoke-virtual {p4}, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;->getSourceFileName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    goto :goto_1

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p3, 0x7

    .line 21
    invoke-virtual {p7, p1, p3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name:Ljava/lang/String;

    .line 22
    invoke-static {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name:Ljava/lang/String;

    const/16 p4, 0x2e

    .line 23
    invoke-virtual {p1, p4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-gez p1, :cond_6

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->package_name:Ljava/lang/String;

    goto :goto_2

    .line 25
    :cond_6
    iget-object p4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->package_name:Ljava/lang/String;

    :goto_2
    if-lez p2, :cond_7

    .line 26
    invoke-virtual {p7, p2, p3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    .line 27
    invoke-static {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string p1, "java.lang.Object"

    .line 28
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    .line 29
    :goto_3
    array-length p1, p8

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    move p1, v0

    .line 30
    :goto_4
    array-length p2, p8

    if-ge p1, p2, :cond_8

    .line 31
    aget p2, p8, p1

    invoke-virtual {p7, p2, p3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object p2

    .line 32
    iget-object p4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public static final Debug(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final indent(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\n"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitJavaClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-void
.end method

.method public copy()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->copy()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interfaces:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interfaces:[I

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    array-length v1, v1

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/Field;

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    aget-object v3, v3, v2

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/bcel/internal/classfile/Field;->copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    array-length v2, v2

    new-array v2, v2, [Lcom/sun/org/apache/bcel/internal/classfile/Method;

    iput-object v2, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    aget-object v3, v3, v2

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    array-length v2, v2

    new-array v2, v2, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iput-object v2, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    :goto_3
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v2, v2, v1

    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    return-object v0
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, -0x35014542    # -8346975.0f

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 8
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->minor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 9
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->major:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 10
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->dump(Ljava/io/DataOutputStream;)V

    .line 11
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 12
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 13
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 14
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interfaces:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interfaces:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 16
    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v1, v0

    .line 18
    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 19
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v1, v0

    .line 21
    :goto_2
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 22
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    if-eqz v1, :cond_3

    .line 24
    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 25
    :goto_3
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 26
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 27
    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 28
    :cond_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public dump(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->dump(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public dump(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->dump(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->dump(Ljava/io/File;)V

    return-void
.end method

.method public getAllInterfaces()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 5

    new-instance v0, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;-><init>()V

    new-instance v1, Lcom/sun/org/apache/bcel/internal/util/ClassVector;

    invoke-direct {v1}, Lcom/sun/org/apache/bcel/internal/util/ClassVector;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->enqueue(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->empty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->dequeue()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getInterfaces()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->addElement(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->enqueue(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    array-length v2, v3

    if-ge p0, v2, :cond_0

    aget-object v2, v3, p0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->enqueue(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->toArray()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    return-object p0
.end method

.method public getBytes()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->dump(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    throw p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name:Ljava/lang/String;

    return-object p0
.end method

.method public getClassNameIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name_index:I

    return p0
.end method

.method public getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-object p0
.end method

.method public getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->file_name:Ljava/lang/String;

    return-object p0
.end method

.method public getInterfaceIndices()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interfaces:[I

    return-object p0
.end method

.method public getInterfaceNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    return-object p0
.end method

.method public getInterfaces()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getInterfaceNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Lcom/sun/org/apache/bcel/internal/util/Repository;->loadClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMajor()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->major:I

    return p0
.end method

.method public getMethod(Ljava/lang/reflect/Method;)Lcom/sun/org/apache/bcel/internal/classfile/Method;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getModifiers()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    return-object p0
.end method

.method public getMinor()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->minor:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->package_name:Ljava/lang/String;

    return-object p0
.end method

.method public getRepository()Lcom/sun/org/apache/bcel/internal/util/Repository;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    return-object p0
.end method

.method public final getSource()B
    .locals 0

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->source:B

    return p0
.end method

.method public getSourceFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 2

    const-string v0, "java.lang.Object"

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/Repository;->loadClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-object v1
.end method

.method public getSuperClasses()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/util/ClassVector;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/util/ClassVector;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->addElement(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->toArray()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    return-object p0
.end method

.method public getSuperclassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperclassNameIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name_index:I

    return p0
.end method

.method public implementationOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getAllInterfaces()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is no interface"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final instanceOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z
    .locals 5

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperClasses()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->implementationOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public final isClass()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit16 p0, p0, 0x200

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSuper()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAttributes([Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name:Ljava/lang/String;

    return-void
.end method

.method public setClassNameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name_index:I

    return-void
.end method

.method public setConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public setFields([Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->file_name:Ljava/lang/String;

    return-void
.end method

.method public setInterfaceNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    return-void
.end method

.method public setInterfaces([I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interfaces:[I

    return-void
.end method

.method public setMajor(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->major:I

    return-void
.end method

.method public setMethods([Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    return-void
.end method

.method public setMinor(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->minor:I

    return-void
.end method

.method public setRepository(Lcom/sun/org/apache/bcel/internal/util/Repository;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->repository:Lcom/sun/org/apache/bcel/internal/util/Repository;

    return-void
.end method

.method public setSourceFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    return-void
.end method

.method public setSuperclassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    return-void
.end method

.method public setSuperclassNameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name_index:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->accessToString(IZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->classOrInterface(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extends "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->superclass_name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interfaces:[I

    array-length v2, v2

    if-lez v2, :cond_3

    const-string v4, "implements\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->interface_names:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_1

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filename\t\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->file_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compiled from\t\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->source_file_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compiler version\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->major:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->minor:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "access flags\t\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constant pool\t\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getLength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " entries\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACC_SUPER flag\t\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->isSuper()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    array-length v2, v2

    if-lez v2, :cond_4

    const-string v2, "\nAttribute(s):\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    :goto_2
    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    array-length v6, v5

    if-ge v2, v6, :cond_4

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->indent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    array-length v2, v2

    const-string v5, "\t"

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    array-length v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " fields:\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    :goto_3
    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    array-length v2, v2

    if-lez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " methods:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    array-length v2, v2

    if-ge v3, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
