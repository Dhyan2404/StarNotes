.class public abstract Lorg/apache/xerces/impl/xs/traversers/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/traversers/a$a;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "(no name)"

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x4

.field public static final m:I = 0x8

.field public static final n:Lorg/apache/xerces/impl/dv/XSSimpleType;


# instance fields
.field public a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

.field public b:Lorg/apache/xerces/util/SymbolTable;

.field public c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field public d:Z

.field public e:Lorg/apache/xerces/impl/validation/ValidationState;

.field public f:Ljava/lang/StringBuffer;

.field public final g:Lorg/apache/xerces/impl/dv/XSFacets;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "QName"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lorg/apache/xerces/impl/xs/traversers/a;->n:Lorg/apache/xerces/impl/dv/XSSimpleType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->b:Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->d:Z

    new-instance v0, Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lorg/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->e:Lorg/apache/xerces/impl/validation/ValidationState;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->f:Ljava/lang/StringBuffer;

    new-instance v0, Lorg/apache/xerces/impl/dv/XSFacets;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dv/XSFacets;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    return-void
.end method

.method public static g(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-lt p1, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    const-string v2, "&quot;"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    const-string v2, "&lt;"

    goto :goto_1

    :cond_2
    const/16 v3, 0x26

    if-ne v2, v3, :cond_3

    const-string v2, "&amp;"

    goto :goto_1

    :cond_3
    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    const-string v2, "&#x9;"

    goto :goto_1

    :cond_4
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    const-string v2, "&#xA;"

    goto :goto_1

    :cond_5
    const/16 v3, 0xd

    if-ne v2, v3, :cond_6

    const-string v2, "&#xD;"

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static h(Lorg/apache/xerces/xs/XSTypeDefinition;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p0, v1}, Lorg/apache/xerces/impl/xs/traversers/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/impl/dv/XSSimpleType;Ljava/util/Vector;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FacetsContradict"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v1, "hexBinary"

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget v1, v1, Lorg/apache/xerces/impl/dv/XSFacets;->length:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    filled-new-array {p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "base64Binary"

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xerces/impl/dv/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget v1, v1, Lorg/apache/xerces/impl/dv/XSFacets;->length:I

    if-eq v0, v1, :cond_4

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    filled-new-array {p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_6

    :goto_3
    return-void

    :cond_6
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget v1, v1, Lorg/apache/xerces/impl/dv/XSFacets;->length:I

    if-eq v0, v1, :cond_7

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    filled-new-array {p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public final b(Lorg/apache/xerces/impl/dv/XSSimpleType;Ljava/util/Vector;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FacetsContradict"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v1, "hexBinary"

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget v1, v1, Lorg/apache/xerces/impl/dv/XSFacets;->maxLength:I

    if-le v0, v1, :cond_1

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    filled-new-array {p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "base64Binary"

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xerces/impl/dv/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget v1, v1, Lorg/apache/xerces/impl/dv/XSFacets;->maxLength:I

    if-le v0, v1, :cond_4

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    filled-new-array {p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_6

    :goto_3
    return-void

    :cond_6
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget v1, v1, Lorg/apache/xerces/impl/dv/XSFacets;->maxLength:I

    if-le v0, v1, :cond_7

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    filled-new-array {p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public final c(Lorg/apache/xerces/impl/dv/XSSimpleType;Ljava/util/Vector;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FacetsContradict"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v1, "hexBinary"

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget v1, v1, Lorg/apache/xerces/impl/dv/XSFacets;->minLength:I

    if-ge v0, v1, :cond_1

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    filled-new-array {p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "base64Binary"

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xerces/impl/dv/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget v1, v1, Lorg/apache/xerces/impl/dv/XSFacets;->minLength:I

    if-ge v0, v1, :cond_4

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    filled-new-array {p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_6

    :goto_3
    return-void

    :cond_6
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget v1, v1, Lorg/apache/xerces/impl/dv/XSFacets;->minLength:I

    if-ge v0, v1, :cond_7

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    filled-new-array {p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public d(Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;Lorg/w3c/dom/Element;)V
    .locals 3

    invoke-interface {p2}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getDefinedFacets()S

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "enumeration-required-notation"

    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method public e(Lorg/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lorg/w3c/dom/Element;IJ)Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget v5, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    sget v6, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    const/4 v7, 0x1

    shl-int v6, v7, v6

    int-to-long v8, v6

    and-long v8, p5, v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    sget v9, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    shl-int v9, v7, v9

    int-to-long v12, v9

    and-long v12, p5, v12

    cmp-long v9, v12, v10

    if-eqz v9, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    and-int/lit8 v10, p4, 0x1

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_2

    :cond_2
    move v10, v8

    :goto_2
    and-int/lit8 v11, p4, 0x8

    if-eqz v11, :cond_3

    move v11, v7

    goto :goto_3

    :cond_3
    move v11, v8

    :goto_3
    and-int/lit8 v12, p4, 0x2

    if-eqz v12, :cond_4

    move v12, v7

    goto :goto_4

    :cond_4
    move v12, v8

    :goto_4
    and-int/lit8 v13, p4, 0x4

    if-eqz v13, :cond_5

    move v13, v7

    goto :goto_5

    :cond_5
    move v13, v8

    :goto_5
    if-eqz v13, :cond_7

    const-string v13, "s4s-att-not-allowed"

    if-nez v6, :cond_6

    const-string v4, "minOccurs"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v13, v4, v3}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move v4, v7

    :cond_6
    if-nez v9, :cond_7

    const-string v5, "maxOccurs"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v13, v2, v3}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move v5, v7

    :cond_7
    const/4 v2, 0x0

    if-nez v4, :cond_8

    if-nez v5, :cond_8

    iput-short v8, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    return-object v2

    :cond_8
    if-eqz v10, :cond_a

    if-eq v5, v7, :cond_d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    const-string v5, "unbounded"

    goto :goto_6

    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    aput-object v5, v2, v8

    iget-object v5, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    check-cast v5, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const-string v5, "cos-all-limited.2"

    invoke-virtual {p0, v5, v2, v3}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    if-le v4, v7, :cond_c

    move v5, v7

    goto :goto_7

    :cond_a
    if-nez v11, :cond_b

    if-eqz v12, :cond_d

    :cond_b
    if-eq v5, v7, :cond_d

    const-string v5, "cos-all-limited.1.2"

    invoke-virtual {p0, v5, v2, v3}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    if-le v4, v7, :cond_c

    move v4, v7

    :cond_c
    move v5, v7

    :cond_d
    move v7, v4

    :goto_7
    iput v7, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v5, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    return-object v1
.end method

.method public final f(Lorg/apache/xerces/impl/dv/XSSimpleType;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-interface {p1}, Lorg/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result p0

    const/16 p1, 0x12

    if-eq p0, p1, :cond_0

    const/16 p1, 0x14

    if-ne p0, p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->f(Lorg/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result p0

    return p0

    :cond_3
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1, v0}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xs/traversers/a;->f(Lorg/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method public j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public k(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->b:Lorg/apache/xerces/util/SymbolTable;

    iput-boolean p2, p0, Lorg/apache/xerces/impl/xs/traversers/a;->d:Z

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/traversers/a;->e:Lorg/apache/xerces/impl/validation/ValidationState;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/traversers/a;->e:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p2, p1}, Lorg/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->e:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p0, p3}, Lorg/apache/xerces/impl/validation/ValidationState;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;
    .locals 10

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "src-annotation"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p4}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v2, v1, p4}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    :goto_0
    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    if-nez p3, :cond_3

    return-object v0

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v2, p4, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    sget v2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object p2, p2, v2

    check-cast p2, Ljava/util/Vector;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, -0x1

    if-lt v4, v5, :cond_6

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {p3, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->d:Z

    if-eqz p0, :cond_5

    new-instance p0, Lcom/sunia/HTREnginev2/mmo;

    invoke-direct {p0, p2, p1}, Lcom/sunia/HTREnginev2/mmo;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    invoke-virtual {p4, p0}, Lcom/sunia/HTREnginev2/tmo;->b(Lcom/sunia/HTREnginev2/mmo;)V

    :cond_5
    new-instance p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-direct {p0, p2, v1}, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p0

    :cond_6
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v6, :cond_7

    const-string v6, ""

    move-object v7, v4

    goto :goto_2

    :cond_7
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    iget-object v8, p4, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v9, p0, Lorg/apache/xerces/impl/xs/traversers/a;->b:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v9, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/xerces/impl/xs/traversers/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_9
    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->d:Z

    if-eqz p0, :cond_a

    new-instance p0, Lcom/sunia/HTREnginev2/mmo;

    invoke-direct {p0, p3, p1}, Lcom/sunia/HTREnginev2/mmo;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    invoke-virtual {p4, p0}, Lcom/sunia/HTREnginev2/tmo;->b(Lcom/sunia/HTREnginev2/mmo;)V

    :cond_a
    new-instance p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-direct {p0, p3, v1}, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p0
.end method

.method public n(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;)Lorg/w3c/dom/Element;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    :goto_0
    const-string v6, "src-attribute_group.2"

    const-string v7, "src-ct.4"

    if-nez v5, :cond_1

    :cond_0
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    goto/16 :goto_e

    :cond_1
    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "ag-props-correct.3"

    const-string v11, "ct-props-correct.5"

    const-string v12, "ag-props-correct.2"

    const-string v13, "ct-props-correct.4"

    const/4 v14, 0x2

    if-eqz v9, :cond_9

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v6, v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q:Lorg/apache/xerces/impl/xs/traversers/b;

    invoke-virtual {v6, v5, v2, v3, v4}, Lorg/apache/xerces/impl/xs/traversers/b;->t(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;)Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-short v7, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v7, v14, :cond_3

    invoke-virtual {v1, v6}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    goto/16 :goto_8

    :cond_3
    iget-object v7, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v8}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeUse;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-virtual {v1, v6}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v10, v11

    :goto_1
    if-nez v4, :cond_5

    iget-object v8, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-virtual/range {p5 .. p5}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_2
    iget-object v6, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v8, v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v10, v6, v5}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_8

    :cond_6
    if-eq v7, v6, :cond_e

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move-object v12, v13

    :goto_3
    if-nez v4, :cond_8

    iget-object v7, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_4

    :cond_8
    invoke-virtual/range {p5 .. p5}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_4
    iget-object v6, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v12, v6, v5}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_8

    :cond_9
    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, v8, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P:Lcom/sunia/HTREnginev2/pmo;

    invoke-virtual {v8, v5, v2, v3}, Lcom/sunia/HTREnginev2/pmo;->r(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v8}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v14, v16

    :goto_5
    if-lt v14, v15, :cond_f

    iget-object v8, v8, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v8, :cond_e

    iget-object v9, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v9, :cond_b

    iput-object v8, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    goto :goto_8

    :cond_b
    iget-short v10, v9, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v9, v8, v10}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lorg/apache/xerces/impl/xs/XSWildcardDecl;S)Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v8

    iput-object v8, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v8, :cond_e

    if-nez v4, :cond_c

    goto :goto_6

    :cond_c
    move-object v6, v7

    :goto_6
    if-nez v4, :cond_d

    iget-object v7, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_7

    :cond_d
    invoke-virtual/range {p5 .. p5}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_7
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v5}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_e
    :goto_8
    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    goto/16 :goto_0

    :cond_f
    invoke-interface {v9, v14}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-object/from16 v16, v7

    iget-short v7, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    move-object/from16 v18, v8

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11

    invoke-virtual {v1, v6}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    :cond_10
    move-object/from16 v19, v9

    goto :goto_d

    :cond_11
    iget-object v7, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v8}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeUse;

    move-result-object v7

    if-nez v7, :cond_14

    invoke-virtual {v1, v6}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    if-nez v4, :cond_12

    move-object v8, v10

    goto :goto_9

    :cond_12
    move-object v8, v11

    :goto_9
    move-object/from16 v19, v9

    if-nez v4, :cond_13

    iget-object v9, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_a

    :cond_13
    invoke-virtual/range {p5 .. p5}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_a
    iget-object v6, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v9, v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8, v6, v5}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_d

    :cond_14
    move-object/from16 v19, v9

    if-eq v6, v7, :cond_17

    if-nez v4, :cond_15

    move-object v7, v12

    goto :goto_b

    :cond_15
    move-object v7, v13

    :goto_b
    if-nez v4, :cond_16

    iget-object v8, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_c

    :cond_16
    invoke-virtual/range {p5 .. p5}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_c
    iget-object v6, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v7, v6, v5}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_17
    :goto_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v16

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    goto/16 :goto_5

    :goto_e
    if-eqz v5, :cond_1c

    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v6, v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Y:Lorg/apache/xerces/impl/xs/traversers/g;

    invoke-virtual {v6, v5, v2, v3}, Lorg/apache/xerces/impl/xs/traversers/g;->r(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v2

    iget-object v3, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v3, :cond_18

    iput-object v2, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    goto :goto_11

    :cond_18
    iget-short v6, v2, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v2, v3, v6}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lorg/apache/xerces/impl/xs/XSWildcardDecl;S)Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v2, :cond_1b

    if-nez v4, :cond_19

    move-object/from16 v6, v17

    goto :goto_f

    :cond_19
    move-object/from16 v6, v16

    :goto_f
    if-nez v4, :cond_1a

    iget-object v1, v1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_10

    :cond_1a
    invoke-virtual/range {p5 .. p5}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_10
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v5}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_1b
    :goto_11
    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    :cond_1c
    return-object v5
.end method

.method public o(Lorg/w3c/dom/Element;Lorg/apache/xerces/xs/XSTypeDefinition;Lorg/apache/xerces/impl/dv/XSSimpleType;Lcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/traversers/a$a;
    .locals 32

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/xs/traversers/a;->f(Lorg/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v12, v0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/XSFacets;->reset()V

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/w3c/dom/Element;

    move-object/from16 v15, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    if-nez v15, :cond_1

    move-object/from16 v31, v4

    move-object/from16 v30, v6

    move-object/from16 v22, v13

    move-object v13, v5

    goto/16 :goto_13

    :cond_1
    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    const-string v11, "(annotation?)"

    const-string v14, "s4s-elt-must-match.1"

    move/from16 p1, v2

    const-string v2, "s4s-att-must-appear"

    if-eqz v20, :cond_a

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v22, v13

    const/4 v8, 0x0

    invoke-virtual {v0, v15, v8, v9, v10}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;Z)[Ljava/lang/Object;

    move-result-object v13

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v0, v13, v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_2

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v15}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v13, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v15

    move/from16 v2, p1

    move-object/from16 v8, p3

    move-object/from16 v13, v22

    goto :goto_1

    :cond_2
    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    aget-object v0, v13, v0

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-interface/range {p3 .. p3}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-interface/range {p3 .. p3}, Lorg/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_4

    iget-object v0, v9, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    :try_start_0
    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/a;->n:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iget-object v2, v9, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v23, v3

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v8, v2, v3}, Lorg/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/xni/QName;

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v9, v3, v0, v15}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v23, v3

    :goto_2
    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v15}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_3

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v13, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v15

    move/from16 v2, p1

    move-object/from16 v8, p3

    move-object/from16 v13, v22

    move/from16 v3, v23

    goto/16 :goto_1

    :cond_3
    iget-object v0, v9, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    iget-object v2, v9, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    goto :goto_4

    :cond_4
    move/from16 v23, v3

    :goto_4
    if-nez v5, :cond_5

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v4, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    :cond_5
    move-object v0, v4

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    if-eqz v10, :cond_6

    invoke-virtual {v12, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-static {v8}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v8, v13, v2, v9}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(ILorg/apache/xerces/xs/XSObject;)V

    invoke-static {v8}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v8

    move/from16 v24, p1

    move/from16 v26, v10

    move/from16 v25, v23

    move-object/from16 v23, v5

    move-object v10, v6

    goto :goto_6

    :cond_7
    const/4 v2, 0x1

    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move/from16 v24, p1

    move-object v2, v15

    move/from16 v25, v23

    move-object/from16 p1, v8

    move v8, v4

    move-object v4, v13

    move-object/from16 v23, v5

    move/from16 v5, v20

    move/from16 v26, v10

    move-object v10, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(ILorg/apache/xerces/xs/XSObject;)V

    goto :goto_5

    :cond_8
    move/from16 v24, p1

    move-object/from16 p1, v8

    move/from16 v26, v10

    move/from16 v25, v23

    move-object/from16 v23, v5

    move-object v10, v6

    :goto_5
    move-object/from16 v8, p1

    :goto_6
    if-eqz v8, :cond_9

    const-string v1, "enumeration"

    invoke-static {v8}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v11, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v14, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_9
    move-object v4, v0

    move-object v6, v10

    move-object/from16 v5, v23

    move/from16 v2, v24

    move/from16 v3, v25

    const/16 v21, 0x0

    goto/16 :goto_12

    :cond_a
    move/from16 v24, p1

    move/from16 v25, v3

    move/from16 v26, v10

    move-object/from16 v22, v13

    move-object v10, v6

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v13

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v0, v13, v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v15}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v13, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v15

    move-object/from16 v8, p3

    move-object v6, v10

    move-object/from16 v13, v22

    move/from16 v2, v24

    move/from16 v3, v25

    :goto_7
    move/from16 v10, v26

    goto/16 :goto_1

    :cond_b
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->f:Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v10, :cond_d

    new-instance v1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v6, v1

    goto :goto_9

    :cond_d
    move-object v6, v10

    :goto_9
    const/4 v1, 0x0

    invoke-virtual {v7, v0, v13, v1, v9}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v8, v4

    move-object/from16 p1, v13

    move-object v13, v5

    goto :goto_b

    :cond_e
    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    if-nez v10, :cond_f

    new-instance v1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v10, v1

    :cond_f
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v8, v4

    move-object v4, v13

    move-object/from16 p1, v13

    move-object v13, v5

    move v5, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    goto :goto_a

    :cond_10
    move-object v8, v4

    move-object/from16 p1, v13

    move-object v13, v5

    :goto_a
    move-object v6, v10

    :goto_b
    if-eqz v0, :cond_11

    const-string v1, "pattern"

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v11, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v14, v1, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_11
    move-object v4, v8

    move-object v5, v13

    move/from16 v2, v24

    move/from16 v3, v25

    const/16 v16, 0x1

    const/16 v21, 0x0

    move-object/from16 v13, p1

    goto/16 :goto_12

    :cond_12
    move-object v8, v4

    move-object v13, v5

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_13

    move v1, v4

    goto :goto_c

    :cond_13
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v6

    goto :goto_c

    :cond_14
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x40

    goto :goto_c

    :cond_15
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0x20

    goto :goto_c

    :cond_16
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x80

    goto :goto_c

    :cond_17
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v1, 0x100

    goto :goto_c

    :cond_18
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v1, 0x200

    goto :goto_c

    :cond_19
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0x400

    goto :goto_c

    :cond_1a
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v1, 0x10

    goto :goto_c

    :cond_1b
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    :goto_c
    iget-object v5, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    invoke-virtual {v5, v15, v3, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v5

    move/from16 v3, v25

    and-int v25, v3, v1

    if-eqz v25, :cond_1d

    const-string v1, "src-single-facet-value"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0, v15}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_1c
    :goto_d
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v5, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v15

    move-object v4, v8

    move-object v6, v10

    move-object v5, v13

    move-object/from16 v13, v22

    move/from16 v2, v24

    move/from16 v10, v26

    move-object/from16 v8, p3

    goto/16 :goto_1

    :cond_1d
    sget v25, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v28, v5, v25

    if-nez v28, :cond_1e

    const-string v0, "value"

    const/4 v1, 0x0

    invoke-interface {v15, v1, v0}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v15}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_d

    :cond_1e
    const/16 v21, 0x0

    or-int v2, v3, v1

    int-to-short v3, v2

    sget v2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v2, v5, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    move/from16 v2, v24

    or-int/2addr v2, v1

    int-to-short v2, v2

    move/from16 v24, v2

    goto :goto_e

    :cond_1f
    move/from16 v2, v24

    :goto_e
    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    if-eq v1, v4, :cond_28

    if-eq v1, v6, :cond_27

    const/16 v2, 0x10

    if-eq v1, v2, :cond_26

    const/16 v6, 0x20

    if-eq v1, v6, :cond_25

    const/16 v4, 0x40

    if-eq v1, v4, :cond_24

    const/16 v6, 0x80

    if-eq v1, v6, :cond_23

    const/16 v4, 0x100

    if-eq v1, v4, :cond_22

    const/16 v6, 0x200

    if-eq v1, v6, :cond_21

    const/16 v6, 0x400

    if-eq v1, v6, :cond_20

    goto/16 :goto_f

    :cond_20
    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v25, v5, v25

    check-cast v25, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    goto/16 :goto_f

    :cond_21
    const/16 v6, 0x400

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v4, v5, v25

    check-cast v4, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    goto :goto_f

    :cond_22
    const/16 v6, 0x400

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v4, v5, v25

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    goto :goto_f

    :cond_23
    const/16 v6, 0x400

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v4, v5, v25

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    goto :goto_f

    :cond_24
    const/16 v6, 0x400

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v4, v5, v25

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    goto :goto_f

    :cond_25
    const/16 v6, 0x400

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v4, v5, v25

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    goto :goto_f

    :cond_26
    const/16 v6, 0x400

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v4, v5, v25

    check-cast v4, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v4

    iput-short v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    goto :goto_f

    :cond_27
    const/16 v6, 0x400

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v4, v5, v25

    check-cast v4, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxLength:I

    const/16 v19, 0x1

    goto :goto_f

    :cond_28
    const/16 v6, 0x400

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v4, v5, v25

    check-cast v4, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minLength:I

    const/16 v18, 0x1

    goto :goto_f

    :cond_29
    const/16 v6, 0x400

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    aget-object v4, v5, v25

    check-cast v4, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v2, Lorg/apache/xerces/impl/dv/XSFacets;->length:I

    const/16 v17, 0x1

    :goto_f
    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-static {v4}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    invoke-virtual {v7, v4, v5, v2, v9}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v4

    move/from16 v28, v3

    move-object/from16 v23, v5

    move-object v3, v6

    move-object/from16 v31, v8

    move-object/from16 v30, v10

    const/4 v8, 0x2

    move v10, v1

    goto :goto_10

    :cond_2a
    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2b

    const/16 v29, 0x0

    move v2, v1

    move-object/from16 v1, p0

    move-object/from16 v30, v10

    const/16 v28, 0x10

    move v10, v2

    move-object v2, v15

    move-object/from16 v31, v8

    move/from16 v8, v28

    move/from16 v28, v3

    move-object v3, v6

    move-object/from16 v27, v4

    const/16 v6, 0x100

    const/4 v8, 0x2

    move-object v4, v5

    move-object/from16 v23, v5

    move/from16 v5, v29

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v4, v27

    goto :goto_10

    :cond_2b
    move/from16 v28, v3

    move-object/from16 v27, v4

    move-object/from16 v23, v5

    move-object/from16 v31, v8

    move-object/from16 v30, v10

    const/4 v8, 0x2

    move v10, v1

    move-object/from16 v3, v21

    :goto_10
    const/4 v1, 0x1

    if-eq v10, v1, :cond_35

    if-eq v10, v8, :cond_34

    const/4 v1, 0x4

    if-eq v10, v1, :cond_33

    const/16 v1, 0x10

    if-eq v10, v1, :cond_32

    const/16 v1, 0x20

    if-eq v10, v1, :cond_31

    const/16 v1, 0x40

    if-eq v10, v1, :cond_30

    const/16 v1, 0x80

    if-eq v10, v1, :cond_2f

    const/16 v1, 0x100

    if-eq v10, v1, :cond_2e

    const/16 v1, 0x200

    if-eq v10, v1, :cond_2d

    const/16 v1, 0x400

    if-eq v10, v1, :cond_2c

    goto :goto_11

    :cond_2c
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_11

    :cond_2d
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_11

    :cond_2e
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_11

    :cond_2f
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_11

    :cond_30
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_11

    :cond_31
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_11

    :cond_32
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_11

    :cond_33
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_11

    :cond_34
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_11

    :cond_35
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v3, v1, Lorg/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :goto_11
    if-eqz v4, :cond_36

    invoke-static {v4}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v11, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v14, v0, v4}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_36
    move-object v5, v13

    move-object/from16 v13, v23

    move/from16 v2, v24

    move/from16 v3, v28

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    :goto_12
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v13, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v15

    move-object/from16 v8, p3

    move-object/from16 v13, v22

    goto/16 :goto_7

    :cond_37
    move-object/from16 v31, v8

    move-object/from16 v30, v10

    move/from16 v2, v24

    move/from16 v3, v25

    :goto_13
    if-eqz v13, :cond_38

    or-int/lit16 v0, v3, 0x800

    int-to-short v3, v0

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object v13, v0, Lorg/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    iput-object v12, v0, Lorg/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    move-object/from16 v4, v31

    iput-object v4, v0, Lorg/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    :cond_38
    if-eqz v16, :cond_39

    or-int/lit8 v0, v3, 0x8

    int-to-short v3, v0

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v6, v30

    iput-object v6, v0, Lorg/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_39
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->f:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    if-eqz v13, :cond_3c

    if-eqz v17, :cond_3a

    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/impl/xs/traversers/a;->h(Lorg/apache/xerces/xs/XSTypeDefinition;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    move-object/from16 v4, v22

    invoke-virtual {v7, v1, v13, v4, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->a(Lorg/apache/xerces/impl/dv/XSSimpleType;Ljava/util/Vector;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_14

    :cond_3a
    move-object/from16 v1, p3

    move-object/from16 v4, v22

    :goto_14
    if-eqz v18, :cond_3b

    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/impl/xs/traversers/a;->h(Lorg/apache/xerces/xs/XSTypeDefinition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v13, v4, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->c(Lorg/apache/xerces/impl/dv/XSSimpleType;Ljava/util/Vector;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :cond_3b
    if-eqz v19, :cond_3c

    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/impl/xs/traversers/a;->h(Lorg/apache/xerces/xs/XSTypeDefinition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v13, v4, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->b(Lorg/apache/xerces/impl/dv/XSSimpleType;Ljava/util/Vector;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :cond_3c
    new-instance v0, Lorg/apache/xerces/impl/xs/traversers/a$a;

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->g:Lorg/apache/xerces/impl/dv/XSFacets;

    invoke-direct {v0, v1, v15, v3, v2}, Lorg/apache/xerces/impl/xs/traversers/a$a;-><init>(Lorg/apache/xerces/impl/dv/XSFacets;Lorg/w3c/dom/Element;SS)V

    return-object v0
.end method

.method public p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;
    .locals 7

    iget-object p4, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, p5, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p4

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object p3, p3, v0

    check-cast p3, Ljava/util/Vector;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, -0x1

    if-lt v2, v3, :cond_2

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->d:Z

    if-eqz p0, :cond_1

    new-instance p0, Lcom/sunia/HTREnginev2/mmo;

    invoke-direct {p0, p2, p1}, Lcom/sunia/HTREnginev2/mmo;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    invoke-virtual {p5, p0}, Lcom/sunia/HTREnginev2/tmo;->b(Lcom/sunia/HTREnginev2/mmo;)V

    :cond_1
    new-instance p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-direct {p0, p2, p4}, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_3

    const-string v4, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :goto_1
    iget-object v5, p5, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/traversers/a;->b:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p3, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/xerces/impl/xs/traversers/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\" "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_4
    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->d:Z

    if-eqz p0, :cond_5

    new-instance p0, Lcom/sunia/HTREnginev2/mmo;

    invoke-direct {p0, p2, p1}, Lcom/sunia/HTREnginev2/mmo;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    invoke-virtual {p5, p0}, Lcom/sunia/HTREnginev2/tmo;->b(Lcom/sunia/HTREnginev2/mmo;)V

    :cond_5
    new-instance p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-direct {p0, p2, p4}, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p0
.end method
