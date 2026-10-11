.class public Lorg/apache/xerces/impl/dv/xs/e;
.super Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$a;-><init>(Lorg/apache/xerces/impl/dv/xs/c;)V

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/e;->e:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/e;->e:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/dv/xs/e;->e:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->b(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/dv/xs/e;->e:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/e;->e:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/e;->e:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->b(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/e;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/e;->e:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
