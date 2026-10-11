.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->UNKNOWN:Lcom/sun/org/apache/bcel/internal/generic/Type;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private merge(Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;I)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v0, v0, p2

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    const-string v2, "Backwards branch with an uninitialized object in the local variables detected."

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v1, v1, p2

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v0, v0, p2

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v0, v0, p2

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-nez v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v1, v0, p2

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v2, v2, p2

    instance-of v2, v2, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-nez v2, :cond_4

    .line 11
    check-cast v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;->getInitialized()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v1

    aput-object v1, v0, p2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v0, v0, p2

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v1, v1, p2

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v0, v0, p2

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v1, v1, p2

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->getFirstCommonSuperclass(Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aput-object v0, p0, p2

    goto :goto_2

    .line 16
    :cond_5
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load all the super classes of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object p0, p0, p2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' and \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object p0, p0, p2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_6
    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 18
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->UNKNOWN:Lcom/sun/org/apache/bcel/internal/generic/Type;

    aput-object p1, p0, p2

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v2, v2, v1

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v0, v0

    iget-object v2, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getClone()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    return-object p0
.end method

.method public initializeObject(Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;->getInitialized()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public maxLocals()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length p0, p0

    return p0
.end method

.method public merge(Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v0, v0

    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->merge(Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Merging LocalVariables of different size?!? From different methods or what?!?"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aput-object p2, p0, p1

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LocalVariables do not know about \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'. Use Type.INT instead."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->locals:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
