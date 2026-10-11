.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NamedMethodGenerator;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;
.source "SourceFile"


# static fields
.field protected static final CURRENT_INDEX:I = 0x4

.field private static final PARAM_START_INDEX:I = 0x5


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

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
