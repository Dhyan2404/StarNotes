.class public Lorg/apache/xerces/impl/xs/SchemaGrammar$a;
.super Lorg/apache/xerces/impl/xs/XSAttributeDecl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/dv/XSSimpleType;S)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-short p4, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->i:S

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/dv/XSSimpleType;SSLorg/apache/xerces/impl/dv/ValidatedInfo;Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 0

    return-void
.end method

.method public getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
