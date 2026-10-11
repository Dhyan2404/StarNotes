.class public Ljava/awt/Insets;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1f89ccc5fc1c5cfdL


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/awt/Insets;->top:I

    iput p2, p0, Ljava/awt/Insets;->left:I

    iput p3, p0, Ljava/awt/Insets;->bottom:I

    iput p4, p0, Ljava/awt/Insets;->right:I

    return-void
.end method


# virtual methods
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

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/awt/Insets;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/Insets;

    iget v0, p0, Ljava/awt/Insets;->top:I

    iget v2, p1, Ljava/awt/Insets;->top:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Ljava/awt/Insets;->left:I

    iget v2, p1, Ljava/awt/Insets;->left:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Ljava/awt/Insets;->bottom:I

    iget v2, p1, Ljava/awt/Insets;->bottom:I

    if-ne v0, v2, :cond_0

    iget p0, p0, Ljava/awt/Insets;->right:I

    iget p1, p1, Ljava/awt/Insets;->right:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Ljava/awt/Insets;->left:I

    iget v1, p0, Ljava/awt/Insets;->bottom:I

    add-int/2addr v1, v0

    iget v2, p0, Ljava/awt/Insets;->right:I

    iget p0, p0, Ljava/awt/Insets;->top:I

    add-int/2addr v2, p0

    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p0

    add-int/2addr v1, v2

    add-int/lit8 p0, v1, 0x1

    mul-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method public set(IIII)V
    .locals 0

    iput p1, p0, Ljava/awt/Insets;->top:I

    iput p2, p0, Ljava/awt/Insets;->left:I

    iput p3, p0, Ljava/awt/Insets;->bottom:I

    iput p4, p0, Ljava/awt/Insets;->right:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/awt/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/awt/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/awt/Insets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/Insets;->right:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
