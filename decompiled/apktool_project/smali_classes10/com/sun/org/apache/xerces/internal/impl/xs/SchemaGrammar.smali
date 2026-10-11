.class public Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/XSGrammar;
.implements Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$XSAnyType;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;
    }
.end annotation


# static fields
.field private static final BASICSET_COUNT:I = 0x1d

.field private static final FULLSET_COUNT:I = 0x2e

.field private static final GLOBAL_COMP:[Z

.field private static final GRAMMAR_XS:I = 0x1

.field private static final GRAMMAR_XSI:I = 0x2

.field private static final INC_SIZE:I = 0x10

.field private static final INITIAL_SIZE:I = 0x10

.field private static final MAX_COMP_IDX:S = 0x10s

.field private static final REDEFINED_GROUP_INIT_SIZE:I = 0x2

.field public static final SG_Schema4Annotations:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;

.field public static final SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final SG_XSI:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

.field public static final fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;


# instance fields
.field fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

.field private fCTCount:I

.field private fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

.field private fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

.field private fComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

.field private fDOMParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

.field private fDocuments:Ljava/util/Vector;

.field fFullChecked:Z

.field fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field fGlobalIDConstraintDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

.field fImported:Ljava/util/Vector;

.field private fLocations:Ljava/util/Vector;

.field fNumAnnotations:I

.field private fRGCount:I

.field private fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

.field private fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

.field private fSAXParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

.field private fSubGroupCount:I

.field private fSubGroups:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field fTargetNamespace:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$XSAnyType;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$XSAnyType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;-><init>()V

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_Schema4Annotations:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;

    const-string v1, "anySimpleType"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_XSI:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/16 v0, 0x11

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

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
        0x0t
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

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSAXParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fDOMParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    const/16 v2, 0x10

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    .line 9
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 10
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 11
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    .line 12
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 13
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 14
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 15
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroupCount:I

    new-array v1, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 16
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroups:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 17
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    .line 18
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 19
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    .line 22
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSAXParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    .line 23
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fDOMParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    .line 24
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    const/16 v2, 0x10

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    .line 26
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 27
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 28
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    .line 29
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 30
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 31
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 32
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroupCount:I

    new-array v1, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 33
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroups:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 34
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    .line 35
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 36
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    .line 37
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    .line 39
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 40
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    .line 41
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    .line 42
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    .line 43
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    .line 44
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    .line 45
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    .line 46
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p1, p2, :cond_0

    .line 47
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->makeClone()Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    :goto_0
    return-void
.end method

.method public static final resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;
    .locals 2

    .line 1
    new-array v0, p1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    .line 2
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 2

    .line 5
    new-array v0, p1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 6
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;
    .locals 2

    .line 3
    new-array v0, p1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    .line 4
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final resize([Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;
    .locals 2

    .line 7
    new-array v0, p1, [Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 8
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fNumAnnotations:I

    array-length v2, v0

    if-ne v1, v2, :cond_2

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fNumAnnotations:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fNumAnnotations:I

    aput-object p1, v0, v1

    return-void
.end method

.method public addComplexTypeDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    aput-object p1, p2, v1

    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

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

.method public addGlobalAttributeDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addGlobalElementDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fSubGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroups:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroups:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroups:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroupCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroupCount:I

    aput-object p1, v0, v1

    :cond_1
    return-void
.end method

.method public addGlobalGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addGlobalNotationDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addGlobalTypeDecl(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final addIDConstraintDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->addIDConstraint(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addRedefinedGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v2, v1, 0x2

    aput-object p3, v0, v2

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    add-int/lit8 v0, v1, 0x1

    aput-object p1, p3, v1

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    aput-object p2, p3, v0

    return-void
.end method

.method public getAnnotations()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fNumAnnotations:I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    return-object v0
.end method

.method public getAttributeDeclaration(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeGroup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeGroupDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getComponents(S)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;
    .locals 4

    monitor-enter p0

    if-lez p1, :cond_b

    const/16 v0, 0x10

    if-gt p1, v0, :cond_b

    :try_start_0
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    if-nez v1, :cond_1

    const/16 v1, 0x11

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    aget-object v2, v1, p1

    if-nez v2, :cond_a

    const/4 v2, 0x1

    const/16 v3, 0xf

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/16 v2, 0xb

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_5

    if-eq p1, v0, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    :goto_0
    if-eq p1, v3, :cond_9

    if-ne p1, v0, :cond_8

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolHash;)V

    aput-object v0, v1, p1

    goto :goto_2

    :cond_9
    :goto_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMap4Types;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v0, v3, v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMap4Types;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolHash;S)V

    aput-object v0, v1, p1

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    :goto_3
    :try_start_1
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDOMParser()Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fDOMParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fDOMParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDocumentLocations()Lcom/sun/org/apache/xerces/internal/xs/StringList;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getElementDeclaration(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object p0

    return-object p0
.end method

.method public final getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    return-object p0
.end method

.method public final getGlobalAttributeGroupDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    return-object p0
.end method

.method public final getGlobalElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    return-object p0
.end method

.method public final getGlobalGroupDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    return-object p0
.end method

.method public final getGlobalNotationDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    return-object p0
.end method

.method public final getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getGrammarDescription()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    return-object p0
.end method

.method public final getIDConstraintDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public getImportedGrammars()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    return-object p0
.end method

.method public getModelGroupDefinition(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSModelGroupDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    move-result-object p0

    return-object p0
.end method

.method public getNotationDeclaration(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    move-result-object p0

    return-object p0
.end method

.method public final getRGLocators()[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    return-object p0
.end method

.method public final getRedefinedGroupDecls()[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRGLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    return-object p0
.end method

.method public declared-synchronized getSAXParser()Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSAXParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSAXParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSchemaNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubstitutionGroups()[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroups:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroups:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fSubGroups:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    return-object p0
.end method

.method public final getTargetNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeDefinition(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p0

    return-object p0
.end method

.method public final getUncheckedCTLocators()[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    return-object p0
.end method

.method public final getUncheckedComplexTypeDecls()[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    return-object p0
.end method

.method public final hasIDConstraints()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->getLength()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNamespaceAware()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    return-void
.end method

.method public final setUncheckedTypeNum(I)V
    .locals 1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fCTLocators:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    return-void
.end method

.method public toXSModel()Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    .locals 3

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;-><init>([Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method public toXSModel([Lcom/sun/org/apache/xerces/internal/xni/grammars/XSGrammar;)Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    .locals 5

    if-eqz p1, :cond_6

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    aget-object v3, p1, v2

    if-ne v3, p0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v0, 0x1

    .line 5
    :goto_2
    new-array v3, v3, [Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    :goto_3
    if-ge v1, v0, :cond_4

    .line 6
    aget-object v4, p1, v1

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    .line 7
    aput-object p0, v3, v0

    .line 8
    :cond_5
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;-><init>([Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-object p0

    .line 9
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->toXSModel()Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    move-result-object p0

    return-object p0
.end method
