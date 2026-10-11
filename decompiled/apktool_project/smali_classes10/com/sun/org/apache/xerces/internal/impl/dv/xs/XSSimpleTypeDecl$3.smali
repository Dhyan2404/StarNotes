.class Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getEnumerationItemTypeList()Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$100(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$100(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$100(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v2

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$100(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$100(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object p0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$100(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
