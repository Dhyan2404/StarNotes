.class public Lcom/sun/org/apache/bcel/internal/util/BCELifier;
.super Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;
.source "SourceFile"


# instance fields
.field private _clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

.field private _cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

.field private _out:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-void
.end method

.method public static _main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->parse()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->start()V

    return-void
.end method

.method public static printArgumentTypes([Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, "Type.NO_ARGS"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new Type[] { "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private printCreate()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v1, "  public void create(OutputStream out) throws IOException {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v1, "    createFields();"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    createMethod_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "();"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v1, "    _cg.getJavaClass().dump(out);"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v0, "  }\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printFlags(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printFlags(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printFlags(IZ)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    const/16 v4, 0x800

    if-gt v3, v4, :cond_3

    and-int v4, p0, v2

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    if-eqz p1, :cond_1

    const-string v4, "ACC_SUPER | "

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACC_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sun/org/apache/bcel/internal/Constants;->ACCESS_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private printMain()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v2, "  public static void _main(String[] args) throws Exception {"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Creator creator = new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Creator();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    creator.create(new FileOutputStream(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class\"));"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v0, "  }"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v1

    const/16 v2, 0xc

    if-gt v1, v2, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Type."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->TYPE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Type.STRING"

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Object"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Type.OBJECT"

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.StringBuffer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "Type.STRINGBUFFER"

    return-object p0

    .line 8
    :cond_3
    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v1, :cond_4

    .line 9
    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new ArrayType("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getDimensions()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new ObjectType(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->visitJavaClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public visitField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    field = new FieldGen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printFlags(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", _cp);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Field;->getConstantValue()Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    field.setInitValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string p1, "    _cg.addField(field.getField());"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitJavaClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 10

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getInterfaceNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->printArray([Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v8, "import com.sun.org.apache.bcel.internal.generic.*;"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v8, "import com.sun.org.apache.bcel.internal.classfile.*;"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v8, "import com.sun.org.apache.bcel.internal.*;"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v8, "import java.io.*;\n"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "public class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Creator implements Constants {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v8, "  private InstructionFactory _factory;"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v8, "  private ConstantPoolGen    _cp;"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v8, "  private ClassGen           _cg;\n"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  public "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Creator() {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    _cg = new ClassGen(\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSourceFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    invoke-static {v0, v5}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printFlags(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "new String[] { "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " });\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v1, "    _cp = _cg.getConstantPool();"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v1, "    _factory = new InstructionFactory(_cg, _cp);"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v1, "  }\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printCreate()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v3, "  private void createFields() {"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v3, "    FieldGen field;"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v4

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Field;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object p1

    :goto_2
    array-length v0, p1

    if-ge v4, v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  private void createMethod_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "() {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    aget-object v0, p1, v4

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printMain()V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 6

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-direct {v0, p1, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/Method;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getReturnType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getArgumentTypes()[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v4, "    InstructionList il = new InstructionList();"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    MethodGen method = new MethodGen("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printFlags(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printArgumentTypes([Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "new String[] { "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getArgumentNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->printArray([Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }, \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", il, _cp);\n"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-direct {p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;-><init>(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->start()V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v0, "    method.setMaxStack();"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v0, "    method.setMaxLocals();"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v0, "    _cg.addMethod(method.getMethod());"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string p1, "    il.dispose();"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
