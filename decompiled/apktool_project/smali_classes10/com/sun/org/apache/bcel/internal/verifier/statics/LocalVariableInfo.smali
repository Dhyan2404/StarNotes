.class public Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private names:Ljava/util/Hashtable;

.field private types:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->types:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->names:Ljava/util/Hashtable;

    return-void
.end method

.method private add(ILjava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/bcel/internal/verifier/exc/LocalVariableInfoInconsistentException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->getName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'."

    const-string v2, "\' and \'"

    const-string v3, "At bytecode offset \'"

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p3, Lcom/sun/org/apache/bcel/internal/verifier/exc/LocalVariableInfoInconsistentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' a local variable has two different names: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->getName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/LocalVariableInfoInconsistentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->getType(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->getType(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p2, Lcom/sun/org/apache/bcel/internal/verifier/exc/LocalVariableInfoInconsistentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' a local variable has two different types: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->getType(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/LocalVariableInfoInconsistentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->setName(ILjava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->setType(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method private setName(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->names:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setType(ILcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->types:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;IILcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/bcel/internal/verifier/exc/LocalVariableInfoInconsistentException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-gt v0, v1, :cond_0

    .line 1
    invoke-direct {p0, v0, p1, p4}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->add(ILjava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->names:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getType(I)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariableInfo;->types:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-object p0
.end method
