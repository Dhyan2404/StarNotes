.class public Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private localVariableInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;

    invoke-direct {v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;IILcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/bcel/internal/verifier/exc/LocalVariableInfoInconsistentException;
        }
    .end annotation

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->add(Ljava/lang/String;IILcom/sun/org/apache/bcel/internal/generic/Type;)V

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne p5, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    invoke-static {}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LONG_Upper;->theInstance()Lcom/sun/org/apache/bcel/internal/verifier/statics/LONG_Upper;

    move-result-object v1

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->add(Ljava/lang/String;IILcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_0
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne p5, v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-static {}, Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;->theInstance()Lcom/sun/org/apache/bcel/internal/verifier/statics/DOUBLE_Upper;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->add(Ljava/lang/String;IILcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Slot number for local variable information out of range."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLocalVariableInfo(I)Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;
    .locals 1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;->localVariableInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Slot number for local variable information out of range."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
