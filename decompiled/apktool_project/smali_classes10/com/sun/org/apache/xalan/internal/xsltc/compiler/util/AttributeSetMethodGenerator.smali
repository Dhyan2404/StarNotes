.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/AttributeSetMethodGenerator;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;
.source "SourceFile"


# static fields
.field protected static final CURRENT_INDEX:I = 0x4

.field private static final PARAM_START_INDEX:I = 0x5

.field private static final argNames:[Ljava/lang/String;

.field private static final argTypes:[Lcom/sun/org/apache/bcel/internal/generic/Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/AttributeSetMethodGenerator;->argNames:[Ljava/lang/String;

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/AttributeSetMethodGenerator;->argTypes:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v2, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v6, 0x3

    aput-object v2, v0, v6

    const-string v0, "document"

    aput-object v0, v1, v3

    const-string v0, "iterator"

    aput-object v0, v1, v4

    const-string v0, "handler"

    aput-object v0, v1, v5

    const-string v0, "node"

    aput-object v0, v1, v6

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 9

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/AttributeSetMethodGenerator;->argTypes:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/AttributeSetMethodGenerator;->argNames:[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v8

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    return-void
.end method


# virtual methods
.method public getLocalIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public loadParameter(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    add-int/lit8 p1, p1, 0x5

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    return-object p0
.end method

.method public storeParameter(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    add-int/lit8 p1, p1, 0x5

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    return-object p0
.end method
