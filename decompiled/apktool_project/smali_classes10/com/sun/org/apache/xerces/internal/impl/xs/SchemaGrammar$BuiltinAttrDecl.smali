.class Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuiltinAttrDecl"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;S)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-short p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fScope:S

    return-void
.end method


# virtual methods
.method public getAnnotation()Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)V
    .locals 0

    return-void
.end method
