.class public Lorg/apache/xerces/impl/xs/SchemaGrammar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XSGrammar;
.implements Lorg/apache/xerces/xs/XSNamespaceItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/SchemaGrammar$a;,
        Lorg/apache/xerces/impl/xs/SchemaGrammar$b;,
        Lorg/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;,
        Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;
    }
.end annotation


# static fields
.field public static final C0:I = 0x1d

.field public static final D0:I = 0x2e

.field public static final E0:I = 0x1

.field public static final F0:I = 0x2

.field public static final G0:I = 0x10

.field public static final H0:I = 0x10

.field public static final I0:I = 0x2

.field public static final J0:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final K0:S = 0x10s

.field public static final L0:[Z

.field public static final SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final SG_XSI:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final fAnySimpleType:Lorg/apache/xerces/impl/dv/XSSimpleType;

.field public static final fAnyType:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;


# instance fields
.field public A0:Ljava/util/Vector;

.field public B0:Ljava/util/Vector;

.field public J:Z

.field public O:Ljava/util/Vector;

.field public Q:I

.field public Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

.field public e:Ljava/lang/String;

.field public f:Lorg/apache/xerces/util/SymbolHash;

.field public g:Lorg/apache/xerces/util/SymbolHash;

.field public h:Lorg/apache/xerces/util/SymbolHash;

.field public i:Lorg/apache/xerces/util/SymbolHash;

.field public j:Lorg/apache/xerces/util/SymbolHash;

.field public k:Lorg/apache/xerces/util/SymbolHash;

.field public k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

.field public l:Lorg/apache/xerces/util/SymbolHash;

.field public m:Lorg/apache/xerces/util/SymbolHash;

.field public n:Lorg/apache/xerces/util/SymbolHash;

.field public o:Lorg/apache/xerces/util/SymbolHash;

.field public p:Lorg/apache/xerces/util/SymbolHash;

.field public q:Lorg/apache/xerces/util/SymbolHash;

.field public q0:I

.field public r:Lorg/apache/xerces/util/SymbolHash;

.field public s:Lorg/apache/xerces/util/SymbolHash;

.field public t:Lorg/apache/xerces/util/SymbolHash;

.field public t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

.field public u:Lorg/apache/xerces/impl/xs/XSDDescription;

.field public u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

.field public v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

.field public v0:Z

.field public w:I

.field public w0:I

.field public x:Lorg/apache/xerces/util/SymbolTable;

.field public x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

.field public y:Ljava/lang/ref/SoftReference;

.field public y0:[Lorg/apache/xerces/xs/XSNamedMap;

.field public z:Ljava/lang/ref/SoftReference;

.field public z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/xerces/impl/xs/SchemaGrammar$b;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar$b;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-instance v0, Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    new-instance v2, Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v2, Lorg/apache/xerces/impl/xs/SchemaGrammar;->J0:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v2, "anySimpleType"

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    new-instance v0, Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-direct {v0, v3, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/16 v0, 0x11

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->L0:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u:Lorg/apache/xerces/impl/xs/XSDDescription;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x:Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->J:Z

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    iput v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    const/16 v2, 0x10

    new-array v3, v2, [Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-array v3, v2, [Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v0:Z

    iput v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w0:I

    new-array v1, v2, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y0:[Lorg/apache/xerces/xs/XSNamedMap;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->A0:Ljava/util/Vector;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/impl/xs/XSDDescription;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->J:Z

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    iput v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    const/16 v2, 0x10

    new-array v3, v2, [Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-array v3, v2, [Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    const/4 v3, 0x1

    new-array v4, v3, [Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v0:Z

    iput v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w0:I

    new-array v1, v2, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y0:[Lorg/apache/xerces/xs/XSNamedMap;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->A0:Ljava/util/Vector;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u:Lorg/apache/xerces/impl/xs/XSDDescription;

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x:Lorg/apache/xerces/util/SymbolTable;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->f:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->g:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, p3}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->i:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, v3}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->j:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, p2}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->m:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, p3}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->n:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, v0}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->o:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, p3}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->p:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, v3}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, v1}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->r:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, v0}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->s:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, v0}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t:Lorg/apache/xerces/util/SymbolHash;

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    sget-object p2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p1, p2, :cond_0

    sget-object p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->l:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p1}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {p1, v0}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    :goto_0
    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->l:Lorg/apache/xerces/util/SymbolHash;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u:Lorg/apache/xerces/impl/xs/XSDDescription;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x:Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->J:Z

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    iput v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    const/16 v2, 0x10

    new-array v3, v2, [Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-array v3, v2, [Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v0:Z

    iput v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w0:I

    new-array v2, v2, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y0:[Lorg/apache/xerces/xs/XSNamedMap;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->A0:Ljava/util/Vector;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSDDescription;->makeClone()Lorg/apache/xerces/impl/xs/XSDDescription;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u:Lorg/apache/xerces/impl/xs/XSDDescription;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x:Lorg/apache/xerces/util/SymbolTable;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x:Lorg/apache/xerces/util/SymbolTable;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->f:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->f:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->g:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->g:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->i:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->i:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->j:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->j:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->l:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->l:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->m:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->m:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->n:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->n:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->o:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->o:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->p:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->p:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->r:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->r:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->s:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->s:Lorg/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t:Lorg/apache/xerces/util/SymbolHash;

    iget v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w:I

    iput v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w:I

    if-lez v2, :cond_0

    iget-object v4, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v4, v4

    new-array v4, v4, [Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v5, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w0:I

    iput v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w0:I

    if-lez v2, :cond_1

    iget-object v4, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    array-length v4, v4

    new-array v4, v4, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    iput v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    if-lez v2, :cond_2

    iget-object v4, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v4, v4

    new-array v4, v4, [Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v5, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v5, v5

    new-array v5, v5, [Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v5, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v5, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    invoke-static {v2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    iput v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    if-lez v2, :cond_3

    iget-object v4, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    array-length v4, v4

    new-array v4, v4, [Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v5, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v5, v5

    new-array v5, v5, [Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v5, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v5, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    div-int/2addr v5, v3

    invoke-static {v2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    move v2, v1

    :goto_0
    iget-object v3, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    iget-object v4, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    if-eqz v2, :cond_7

    :goto_2
    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public static getS4SGrammar(S)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->J0:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object p0
.end method

.method public static final h([Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 2

    new-array v0, p1, [Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final i([Lorg/apache/xerces/impl/xs/XSElementDecl;I)[Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 2

    new-array v0, p1, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final j([Lorg/apache/xerces/impl/xs/XSGroupDecl;I)[Lorg/apache/xerces/impl/xs/XSGroupDecl;
    .locals 2

    new-array v0, p1, [Lorg/apache/xerces/impl/xs/XSGroupDecl;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final k([Lorg/apache/xerces/impl/xs/util/SimpleLocator;I)[Lorg/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    new-array v0, p1, [Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Lorg/apache/xerces/parsers/DOMParser;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/parsers/DOMParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/xerces/parsers/XML11Configuration;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    new-instance v1, Lorg/apache/xerces/parsers/DOMParser;

    invoke-direct {v1, v0}, Lorg/apache/xerces/parsers/DOMParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-virtual {v1, v0, v2}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z:Ljava/lang/ref/SoftReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w:I

    array-length v2, v0

    if-ne v1, v2, :cond_2

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w:I

    aput-object p1, v0, v1

    return-void
.end method

.method public addComplexTypeDecl(Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;Lorg/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h([Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k([Lorg/apache/xerces/impl/xs/util/SimpleLocator;I)[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    aput-object p2, v0, v1

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    aput-object p1, p2, v1

    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->A0:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->A0:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->A0:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addGlobalAttributeDecl(Lorg/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->f:Lorg/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->a(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalAttributeDecl(Lorg/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->m:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p1, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->a(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->g:Lorg/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->b(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->n:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->b(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->l:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalComplexTypeDecl(Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->s:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalElementDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h:Lorg/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->b(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalElementDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->o:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p1, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->b(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalElementDeclAll(Lorg/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w0:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->i([Lorg/apache/xerces/impl/xs/XSElementDecl;I)[Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w0:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w0:I

    aput-object p1, v0, v1

    :cond_1
    return-void
.end method

.method public addGlobalGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->i:Lorg/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->a(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->p:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p1, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->a(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalNotationDecl(Lorg/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->j:Lorg/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lorg/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->a(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalNotationDecl(Lorg/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p1, Lorg/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->a(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lorg/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->l:Lorg/apache/xerces/util/SymbolHash;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v0, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_0
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lorg/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->s:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    instance-of p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalTypeDecl(Lorg/apache/xerces/xs/XSTypeDefinition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->l:Lorg/apache/xerces/util/SymbolHash;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v0, p1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addGlobalTypeDecl(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->s:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_2

    instance-of p2, p1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lorg/apache/xerces/xs/XSNamespaceItem;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final addIDConstraintDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/xs/XSElementDecl;->addIDConstraint(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final addIDConstraintDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->r:Lorg/apache/xerces/util/SymbolHash;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ","

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addRedefinedGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;Lorg/apache/xerces/impl/xs/XSGroupDecl;Lorg/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->j([Lorg/apache/xerces/impl/xs/XSGroupDecl;I)[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k([Lorg/apache/xerces/impl/xs/util/SimpleLocator;I)[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    div-int/lit8 v2, v1, 0x2

    aput-object p3, v0, v2

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    add-int/lit8 v0, v1, 0x1

    aput-object p1, p3, v1

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    aput-object p2, p3, v0

    return-void
.end method

.method public final b()[Lorg/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->j([Lorg/apache/xerces/impl/xs/XSGroupDecl;I)[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k([Lorg/apache/xerces/impl/xs/util/SimpleLocator;I)[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    return-object p0
.end method

.method public final c()[Lorg/apache/xerces/impl/xs/XSGroupDecl;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->j([Lorg/apache/xerces/impl/xs/XSGroupDecl;I)[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q0:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k([Lorg/apache/xerces/impl/xs/util/SimpleLocator;I)[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->t0:[Lorg/apache/xerces/impl/xs/XSGroupDecl;

    return-object p0
.end method

.method public declared-synchronized d()Lorg/apache/xerces/parsers/SAXParser;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/parsers/SAXParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/xerces/parsers/XML11Configuration;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    new-instance v1, Lorg/apache/xerces/parsers/SAXParser;

    invoke-direct {v1, v0}, Lorg/apache/xerces/parsers/SAXParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()[Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w0:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->i([Lorg/apache/xerces/impl/xs/XSElementDecl;I)[Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->x0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    return-object p0
.end method

.method public final f()[Lorg/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h([Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k([Lorg/apache/xerces/impl/xs/util/SimpleLocator;I)[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    return-object p0
.end method

.method public final g()[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h([Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k([Lorg/apache/xerces/impl/xs/util/SimpleLocator;I)[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object p0
.end method

.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w:I

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->v:[Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    iget p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->w:I

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    return-object v0
.end method

.method public getAttributeDeclaration(Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeGroup(Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeGroupDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;
    .locals 4

    monitor-enter p0

    if-lez p1, :cond_c

    const/16 v0, 0x10

    if-gt p1, v0, :cond_c

    :try_start_0
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->L0:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y0:[Lorg/apache/xerces/xs/XSNamedMap;

    if-nez v1, :cond_1

    const/16 v1, 0x11

    new-array v1, v1, [Lorg/apache/xerces/xs/XSNamedMap;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y0:[Lorg/apache/xerces/xs/XSNamedMap;

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y0:[Lorg/apache/xerces/xs/XSNamedMap;

    aget-object v2, v1, p1

    if-nez v2, :cond_b

    const/4 v2, 0x1

    const/16 v3, 0xf

    if-eq p1, v2, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x5

    if-eq p1, v2, :cond_5

    const/4 v2, 0x6

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    const/16 v2, 0xb

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_6

    if-eq p1, v0, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->j:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->i:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->g:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->l:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->f:Lorg/apache/xerces/util/SymbolHash;

    :goto_0
    if-eq p1, v3, :cond_a

    if-ne p1, v0, :cond_9

    goto :goto_1

    :cond_9
    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolHash;)V

    aput-object v0, v1, p1

    goto :goto_2

    :cond_a
    :goto_1
    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSNamedMap4Types;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v2, p1}, Lorg/apache/xerces/impl/xs/util/XSNamedMap4Types;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolHash;S)V

    aput-object v0, v1, p1

    :cond_b
    :goto_2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y0:[Lorg/apache/xerces/xs/XSNamedMap;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_c
    :goto_3
    :try_start_1
    sget-object p1, Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getComponentsExt(S)Lorg/apache/xerces/xs/datatypes/ObjectList;
    .locals 4

    monitor-enter p0

    if-lez p1, :cond_a

    const/16 v0, 0x10

    if-gt p1, v0, :cond_a

    :try_start_0
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->L0:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;

    if-nez v1, :cond_1

    const/16 v1, 0x11

    new-array v1, v1, [Lorg/apache/xerces/xs/datatypes/ObjectList;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;

    aget-object v1, v1, p1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v1, 0x6

    if-eq p1, v1, :cond_4

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/16 v1, 0xf

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->r:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->p:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->n:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->s:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->o:Lorg/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->m:Lorg/apache/xerces/util/SymbolHash;

    :goto_0
    invoke-virtual {v0}, Lorg/apache/xerces/util/SymbolHash;->getEntries()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;

    new-instance v2, Lorg/apache/xerces/impl/xs/util/ObjectListImpl;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Lorg/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    aput-object v2, v1, p1

    :cond_9
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_a
    :goto_1
    :try_start_1
    sget-object p1, Lorg/apache/xerces/impl/xs/util/ObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/ObjectListImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDocumentLocations()Lorg/apache/xerces/xs/StringList;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xs/util/StringListImpl;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/xs/util/StringListImpl;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getElementDeclaration(Ljava/lang/String;)Lorg/apache/xerces/xs/XSElementDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p0

    return-object p0
.end method

.method public final getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->f:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    return-object p0
.end method

.method public final getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->m:Lorg/apache/xerces/util/SymbolHash;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    return-object p0
.end method

.method public final getGlobalAttributeGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->g:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object p0
.end method

.method public final getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->n:Lorg/apache/xerces/util/SymbolHash;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object p0
.end method

.method public final getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSElementDecl;

    return-object p0
.end method

.method public final getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->o:Lorg/apache/xerces/util/SymbolHash;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSElementDecl;

    return-object p0
.end method

.method public final getGlobalGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->i:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    return-object p0
.end method

.method public final getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->p:Lorg/apache/xerces/util/SymbolHash;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    return-object p0
.end method

.method public final getGlobalNotationDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->j:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSNotationDecl;

    return-object p0
.end method

.method public final getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->q:Lorg/apache/xerces/util/SymbolHash;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSNotationDecl;

    return-object p0
.end method

.method public final getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->l:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/XSTypeDefinition;

    return-object p0
.end method

.method public final getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->s:Lorg/apache/xerces/util/SymbolHash;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->u:Lorg/apache/xerces/impl/xs/XSDDescription;

    return-object p0
.end method

.method public getIDCDefinition(Ljava/lang/String;)Lorg/apache/xerces/xs/XSIDCDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p0

    return-object p0
.end method

.method public final getIDConstraintDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public final getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->r:Lorg/apache/xerces/util/SymbolHash;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public getImportedGrammars()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    return-object p0
.end method

.method public getModelGroupDefinition(Ljava/lang/String;)Lorg/apache/xerces/xs/XSModelGroupDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p0

    return-object p0
.end method

.method public getNotationDeclaration(Ljava/lang/String;)Lorg/apache/xerces/xs/XSNotationDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeDefinition(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    return-object p0
.end method

.method public final hasIDConstraints()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolHash;->getLength()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isImmutable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->J:Z

    return p0
.end method

.method public isNamespaceAware()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final l(I)V
    .locals 1

    iput p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {v0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->h([Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Z:[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->Q:I

    invoke-static {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k([Lorg/apache/xerces/impl/xs/util/SimpleLocator;I)[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->k0:[Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    return-void
.end method

.method public declared-synchronized removeDocument(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->A0:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->A0:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->B0:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetComponents()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->y0:[Lorg/apache/xerces/xs/XSNamedMap;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->z0:[Lorg/apache/xerces/xs/datatypes/ObjectList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImmutable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->J:Z

    return-void
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->O:Ljava/util/Vector;

    return-void
.end method

.method public toXSModel()Lorg/apache/xerces/xs/XSModel;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/xerces/impl/xs/XSModelImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/xerces/impl/xs/XSModelImpl;-><init>([Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method public toXSModel([Lorg/apache/xerces/xni/grammars/XSGrammar;)Lorg/apache/xerces/xs/XSModel;
    .locals 5

    .line 2
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v2

    if-ne v3, p0, :cond_5

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v0, 0x1

    :goto_2
    new-array v4, v2, [Lorg/apache/xerces/impl/xs/SchemaGrammar;

    :goto_3
    if-lt v1, v0, :cond_4

    if-nez v3, :cond_3

    aput-object p0, v4, v0

    :cond_3
    new-instance p0, Lorg/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {p0, v4}, Lorg/apache/xerces/impl/xs/XSModelImpl;-><init>([Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p0

    :cond_4
    aget-object v2, p1, v1

    check-cast v2, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->toXSModel()Lorg/apache/xerces/xs/XSModel;

    move-result-object p0

    return-object p0
.end method
