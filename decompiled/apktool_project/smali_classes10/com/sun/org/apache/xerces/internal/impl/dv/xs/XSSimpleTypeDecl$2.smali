.class Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualEnumeration()Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;
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

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

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

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
