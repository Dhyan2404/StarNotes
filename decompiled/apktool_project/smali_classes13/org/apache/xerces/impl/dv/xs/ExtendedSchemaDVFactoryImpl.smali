.class public Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;
.super Lorg/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;
.source "SourceFile"


# static fields
.field public static c:Lorg/apache/xerces/util/SymbolHash;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lorg/apache/xerces/util/SymbolHash;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    invoke-static {}, Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 13

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    sget-object v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->b1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->createBuiltInTypes(Lorg/apache/xerces/util/SymbolHash;Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    const-string v2, "anyAtomicType"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v11, Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    new-instance v12, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "yearMonthDuration"

    const/16 v4, 0x1b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x2e

    move-object v1, v12

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "yearMonthDuration"

    invoke-virtual {v11, v1, v12}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v11, Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    new-instance v12, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "dayTimeDuration"

    const/16 v4, 0x1c

    const/16 v10, 0x2f

    move-object v1, v12

    invoke-direct/range {v1 .. v10}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v0, "dayTimeDuration"

    invoke-virtual {v11, v0, v12}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBuiltInType(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/XSSimpleType;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/dv/XSSimpleType;

    return-object p0
.end method

.method public getBuiltInTypes()Lorg/apache/xerces/util/SymbolHash;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->c:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolHash;->makeClone()Lorg/apache/xerces/util/SymbolHash;

    move-result-object p0

    return-object p0
.end method
