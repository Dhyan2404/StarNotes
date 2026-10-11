.class public abstract Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;
.super Lcom/sun/org/apache/bcel/internal/generic/Type;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xe

    const-string v1, "<null object>"

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/Type;-><init>(BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public firstCommonSuperclass(Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;
    .locals 10

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-nez v0, :cond_b

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0

    :cond_6
    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->getSuperClasses(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->getSuperClasses(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    array-length v3, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    array-length v6, v1

    add-int/2addr v6, v4

    new-array v7, v6, [Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    invoke-static {v1, v9, v7, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    aput-object p0, v5, v9

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    aput-object p0, v7, v9

    move p0, v9

    :goto_0
    if-ge p0, v6, :cond_a

    move p1, v9

    :goto_1
    if-ge p1, v3, :cond_9

    aget-object v0, v5, p1

    aget-object v1, v7, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    aget-object p1, v5, p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    return-object v2

    :cond_b
    :goto_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0
.end method

.method public getFirstCommonSuperclass(Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;
    .locals 10

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v0, :cond_3

    instance-of v1, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    move-object v2, p1

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getDimensions()I

    move-result v3

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getDimensions()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v3, :cond_3

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->getFirstCommonSuperclass(Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getDimensions()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    return-object p0

    :cond_3
    if-nez v0, :cond_c

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0

    :cond_7
    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->getSuperClasses(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->getSuperClasses(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    array-length v3, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    array-length v6, v1

    add-int/2addr v6, v4

    new-array v7, v6, [Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    invoke-static {v1, v9, v7, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    aput-object p0, v5, v9

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    aput-object p0, v7, v9

    move p0, v9

    :goto_0
    if-ge p0, v6, :cond_b

    move p1, v9

    :goto_1
    if-ge p1, v3, :cond_a

    aget-object v0, v5, p1

    aget-object v1, v7, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    aget-object p1, v5, p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_a
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_b
    :goto_2
    return-object v2

    :cond_c
    :goto_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0
.end method

.method public isAssignmentCompatibleWith(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z
    .locals 7

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v0, :cond_4

    move-object v3, p0

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesClass()Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v4, :cond_3

    move-object v5, p1

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesClass()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v2

    :cond_2
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/sun/org/apache/bcel/internal/Repository;->instanceOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    if-eqz v4, :cond_4

    move-object v4, p1

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/org/apache/bcel/internal/Repository;->implementationOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v3, :cond_5

    move-object v4, p1

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesClass()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v2

    :cond_6
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/org/apache/bcel/internal/Repository;->implementationOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v0, :cond_c

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v0, :cond_8

    move-object v3, p1

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesClass()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v2

    :cond_8
    instance-of v3, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v3, :cond_a

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    instance-of v4, v3, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eqz v4, :cond_9

    instance-of v4, p0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eqz v4, :cond_9

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    return v2

    :cond_9
    instance-of v4, p0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v4, :cond_a

    instance-of v4, v3, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v4, :cond_a

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->isAssignmentCompatibleWith(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v2

    :cond_a
    if-eqz v0, :cond_c

    move-object p0, p1

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result p0

    if-eqz p0, :cond_c

    move p0, v1

    :goto_0
    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->INTERFACES_IMPLEMENTED_BY_ARRAYS:[Ljava/lang/String;

    array-length v3, v0

    if-ge p0, v3, :cond_c

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    aget-object v0, v0, p0

    invoke-direct {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_c
    return v1
.end method

.method public isCastableTo(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->isAssignmentCompatibleWith(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result p0

    return p0
.end method
