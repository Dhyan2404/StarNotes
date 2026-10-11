.class public Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;
.source "SourceFile"


# static fields
.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;


# instance fields
.field protected fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->createBuiltInTypes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    return-void
.end method

.method public static createBuiltInTypes()V
    .locals 28

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;-><init>()V

    sget-object v11, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v2, "anySimpleType"

    invoke-virtual {v1, v2, v11}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "string"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v1, v12

    move-object v2, v11

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v2, "string"

    invoke-virtual {v1, v2, v12}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "boolean"

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x3

    move-object v1, v14

    move-object v2, v11

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "boolean"

    invoke-virtual {v13, v1, v14}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "decimal"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x4

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v2, "decimal"

    invoke-virtual {v1, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "anyURI"

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x12

    move-object v1, v15

    move-object v2, v11

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "anyURI"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "base64Binary"

    const/16 v4, 0x10

    const/16 v10, 0x11

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "base64Binary"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "duration"

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v10, 0x7

    move-object v1, v14

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v2, "duration"

    invoke-virtual {v1, v2, v14}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "dateTime"

    const/4 v4, 0x7

    const/16 v10, 0x8

    move-object v1, v15

    move-object v2, v11

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "dateTime"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "time"

    const/16 v4, 0x8

    const/16 v10, 0x9

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "time"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "date"

    const/16 v4, 0x9

    const/16 v10, 0xa

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "date"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "gYearMonth"

    const/16 v4, 0xa

    const/16 v10, 0xb

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "gYearMonth"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "gYear"

    const/16 v4, 0xb

    const/16 v10, 0xc

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "gYear"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "gMonthDay"

    const/16 v4, 0xc

    const/16 v10, 0xd

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "gMonthDay"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "gDay"

    const/16 v4, 0xd

    const/16 v10, 0xe

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "gDay"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "gMonth"

    const/16 v4, 0xe

    const/16 v10, 0xf

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "gMonth"

    invoke-virtual {v14, v1, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "integer"

    const/16 v18, 0x18

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1e

    move-object v15, v1

    move-object/from16 v16, v13

    invoke-direct/range {v15 .. v24}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "integer"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v10, "0"

    iput-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "nonPositiveInteger"

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    const/4 v8, 0x0

    const/16 v9, 0x1f

    move-object v2, v13

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/16 v14, 0x20

    const/4 v15, 0x0

    invoke-virtual {v13, v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "nonPositiveInteger"

    invoke-virtual {v2, v3, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "-1"

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "negativeInteger"

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    const/16 v9, 0x20

    move-object v2, v13

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v13, v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "negativeInteger"

    invoke-virtual {v2, v3, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "9223372036854775807"

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v2, "-9223372036854775808"

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "long"

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    const/16 v9, 0x21

    move-object v2, v13

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/16 v2, 0x120

    invoke-virtual {v13, v0, v2, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v4, "long"

    invoke-virtual {v3, v4, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "2147483647"

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v3, "-2147483648"

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "int"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x0

    const/16 v23, 0x22

    move-object/from16 v16, v3

    move-object/from16 v17, v13

    invoke-direct/range {v16 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v3, v0, v2, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v5, "int"

    invoke-virtual {v4, v5, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "32767"

    iput-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v4, "-32768"

    iput-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "short"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x23

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v4, v0, v2, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v5, "short"

    invoke-virtual {v3, v5, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "127"

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v3, "-128"

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "byte"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x24

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v3, v0, v2, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v4, "byte"

    invoke-virtual {v2, v4, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v10, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "nonNegativeInteger"

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    const/16 v9, 0x25

    move-object v2, v10

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/16 v1, 0x100

    invoke-virtual {v10, v0, v1, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "nonNegativeInteger"

    invoke-virtual {v2, v3, v10}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "18446744073709551615"

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "unsignedLong"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x26

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v2, v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v4, "unsignedLong"

    invoke-virtual {v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "4294967295"

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "unsignedInt"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x27

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v3, v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v4, "unsignedInt"

    invoke-virtual {v2, v4, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "65535"

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "unsignedShort"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x28

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v2, v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v4, "unsignedShort"

    invoke-virtual {v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "255"

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "unsignedByte"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x29

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v3, v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v4, "unsignedByte"

    invoke-virtual {v2, v4, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "1"

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "positiveInteger"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x2a

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v2, v0, v1, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "positiveInteger"

    invoke-virtual {v1, v3, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "float"

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x5

    move-object v1, v14

    move-object v2, v11

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "float"

    invoke-virtual {v13, v1, v14}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "double"

    const/4 v4, 0x5

    const/4 v10, 0x6

    move-object v1, v14

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "double"

    invoke-virtual {v13, v1, v14}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "hexBinary"

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x10

    move-object v1, v14

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "hexBinary"

    invoke-virtual {v13, v1, v14}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "NOTATION"

    const/16 v4, 0x14

    const/16 v10, 0x14

    move-object v1, v14

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "NOTATION"

    invoke-virtual {v13, v1, v14}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x1

    iput-short v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpace:S

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "normalizedString"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/4 v9, 0x0

    const/16 v10, 0x15

    move-object v3, v2

    move-object v4, v12

    invoke-direct/range {v3 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/16 v12, 0x10

    invoke-virtual {v2, v0, v12, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "normalizedString"

    invoke-virtual {v1, v3, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x2

    iput-short v14, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpace:S

    new-instance v10, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "token"

    const-string v4, "http://www.w3.org/2001/XMLSchema"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x16

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v10, v0, v12, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v2, "token"

    invoke-virtual {v1, v2, v10}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpace:S

    const-string v1, "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*"

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "language"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v2, 0x17

    move-object v3, v1

    move-object v4, v10

    move-object/from16 v16, v10

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/16 v2, 0x18

    invoke-virtual {v1, v0, v2, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "language"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpace:S

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "Name"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/16 v10, 0x19

    move-object v3, v1

    move-object/from16 v4, v16

    invoke-direct/range {v3 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v1, v0, v12, v15, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "Name"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpace:S

    new-instance v10, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v19, "NCName"

    const-string v20, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1a

    move-object/from16 v17, v10

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v24}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/4 v1, 0x3

    invoke-virtual {v10, v0, v12, v15, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSS)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v2, "NCName"

    invoke-virtual {v1, v2, v10}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v8, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "QName"

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x13

    move-object v1, v8

    move-object v2, v11

    move-object v11, v8

    move/from16 v8, v17

    move-object v12, v9

    move/from16 v9, v18

    move-object/from16 v27, v10

    move/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v1, "QName"

    invoke-virtual {v12, v1, v11}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v19, "ID"

    const/16 v20, 0x15

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1b

    move-object/from16 v17, v2

    move-object/from16 v18, v27

    invoke-direct/range {v17 .. v26}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v3, "ID"

    invoke-virtual {v1, v3, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v19, "IDREF"

    const/16 v20, 0x16

    const/16 v26, 0x1c

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v26}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v2, "IDREF"

    invoke-virtual {v1, v2, v8}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minLength:I

    new-instance v18, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v5, 0x0

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, v18

    invoke-direct/range {v4 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;ZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v19, "IDREFS"

    const-string v20, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    invoke-virtual {v1, v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "IDREFS"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v19, "ENTITY"

    const/16 v20, 0x17

    const/16 v23, 0x0

    const/16 v26, 0x1d

    move-object/from16 v17, v8

    move-object/from16 v18, v27

    invoke-direct/range {v17 .. v26}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v2, "ENTITY"

    invoke-virtual {v1, v2, v8}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minLength:I

    new-instance v18, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    move-object/from16 v4, v18

    invoke-direct/range {v4 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;ZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v19, "ENTITIES"

    const-string v20, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    invoke-virtual {v1, v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "ENTITIES"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpace:S

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "NMTOKEN"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    move-object v3, v1

    move-object/from16 v4, v16

    invoke-direct/range {v3 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v15, v13}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSS)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "NMTOKEN"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minLength:I

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v5, 0x0

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v2

    move-object v8, v1

    invoke-direct/range {v4 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;ZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "NMTOKENS"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v2

    invoke-direct/range {v4 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    invoke-virtual {v1, v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v2, "NMTOKENS"

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createTypeList(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 7

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->getSimpleTypeDecl()Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v0

    move-object v4, p4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->setListValues(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-object v4, p4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;ZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    return-object p0
.end method

.method public createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 7

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->getSimpleTypeDecl()Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v0

    move-object v1, p4

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->setRestrictionValues(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-object v1, p4

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    return-object p0
.end method

.method public createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 7

    array-length v0, p4

    new-array v5, v0, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v1, 0x0

    invoke-static {p4, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->getSimpleTypeDecl()Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;S[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    return-object p0
.end method

.method public getBuiltInType(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    return-object p0
.end method

.method public getBuiltInTypes()Lcom/sun/org/apache/xerces/internal/util/SymbolHash;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->makeClone()Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    move-result-object p0

    return-object p0
.end method

.method public setDeclPool(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    return-void
.end method
