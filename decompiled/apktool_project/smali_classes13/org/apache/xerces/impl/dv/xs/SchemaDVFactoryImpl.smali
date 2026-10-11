.class public Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;
.super Lorg/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;
.source "SourceFile"


# static fields
.field public static final c:Lorg/apache/xerces/util/SymbolHash;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lorg/apache/xerces/util/SymbolHash;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    invoke-static {}, Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    sget-object v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->createBuiltInTypes(Lorg/apache/xerces/util/SymbolHash;Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    return-void
.end method


# virtual methods
.method public getBuiltInType(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/XSSimpleType;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/dv/XSSimpleType;

    return-object p0
.end method

.method public getBuiltInTypes()Lorg/apache/xerces/util/SymbolHash;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object p0

    return-object p0
.end method
