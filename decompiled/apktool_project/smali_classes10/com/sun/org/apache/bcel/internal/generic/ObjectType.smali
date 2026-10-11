.class public final Lcom/sun/org/apache/bcel/internal/generic/ObjectType;
.super Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;
.source "SourceFile"


# instance fields
.field private class_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xe

    invoke-direct {p0, v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;-><init>(BLjava/lang/String;)V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accessibleTo(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public referencesClass()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->isClass()Z

    move-result p0

    return p0
.end method

.method public referencesInterface()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->isClass()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public subclassOf(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/Repository;->instanceOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
