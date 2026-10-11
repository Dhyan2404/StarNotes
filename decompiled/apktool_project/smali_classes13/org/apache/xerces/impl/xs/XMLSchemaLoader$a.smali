.class public Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/XMLSchemaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->a:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->e(II)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->b:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->a:I

    aput-object p1, v0, v1

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->a:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->a:I

    return p0
.end method

.method public d()[Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->a:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->b:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    array-length v1, v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->e(II)V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public e(II)V
    .locals 4

    new-array v0, p2, [Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->b:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->a:I

    return-void
.end method
