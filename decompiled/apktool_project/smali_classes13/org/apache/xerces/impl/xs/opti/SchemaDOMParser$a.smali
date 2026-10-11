.class public final Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->a:I

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->b:[Z

    if-nez v0, :cond_0

    const/16 p1, 0x20

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->b:[Z

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-gt v1, p1, :cond_1

    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Z

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->b:[Z

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->b:[Z

    iget v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->a:I

    aget-boolean p0, v0, v1

    return p0
.end method

.method public d(Z)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->b(I)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->b:[Z

    iget v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->a:I

    aput-boolean p1, v0, v1

    return-void
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->a:I

    return p0
.end method
