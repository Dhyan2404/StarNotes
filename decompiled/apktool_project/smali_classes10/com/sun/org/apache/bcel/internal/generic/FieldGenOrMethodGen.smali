.class public abstract Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;
.super Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/NamedAndTyped;
.implements Ljava/lang/Cloneable;


# instance fields
.field private attribute_vec:Ljava/util/ArrayList;

.field protected cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

.field protected name:Ljava/lang/String;

.field protected type:Lcom/sun/org/apache/bcel/internal/generic/Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->name:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public getType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-object p0
.end method

.method public removeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAttributes()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setConstantPool(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type can not be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
