.class public Lcom/sun/org/apache/bcel/internal/util/ClassVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected vec:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->vec:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addElement(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public elementAt(I)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    return-object p0
.end method

.method public removeElementAt(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public toArray()[Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassVector;->vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method
