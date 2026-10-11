.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;
.super Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/Constants;


# instance fields
.field private initialized:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNINITIALIZED OBJECT OF TYPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;-><init>(BLjava/lang/String;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;->initialized:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;->initialized:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;->initialized:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getInitialized()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;->initialized:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0
.end method
