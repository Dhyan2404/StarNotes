.class public Lnet/sf/saxon/expr/ItemTypeCheckingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# instance fields
.field public final e:Lnet/sf/saxon/type/ItemType;

.field public final f:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

.field public final g:Lnet/sf/saxon/s9api/Location;

.field public h:Lnet/sf/saxon/expr/Expression;

.field public i:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->i:Lnet/sf/saxon/Configuration;

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->e:Lnet/sf/saxon/type/ItemType;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->f:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    .line 5
    iput-object p3, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->h:Lnet/sf/saxon/expr/Expression;

    .line 6
    invoke-virtual {p3}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->g:Lnet/sf/saxon/s9api/Location;

    .line 7
    iput-object p4, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->i:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/Configuration;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->e:Lnet/sf/saxon/type/ItemType;

    .line 10
    iput-object p2, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->f:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    .line 11
    iput-object p3, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->g:Lnet/sf/saxon/s9api/Location;

    .line 12
    iput-object p4, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->i:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->e:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v0, p1, p2}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->e:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->f:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v1, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->e:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, v1, p1, p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->f:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XPDY0050"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->g:Lnet/sf/saxon/s9api/Location;

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v0

    :cond_2
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->g:Lnet/sf/saxon/s9api/Location;

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v0
.end method

.method public mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->i:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;->a(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/Configuration;)V

    return-object p1
.end method
