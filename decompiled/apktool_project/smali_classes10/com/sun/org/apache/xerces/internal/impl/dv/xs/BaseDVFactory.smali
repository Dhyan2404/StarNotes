.class public Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BaseDVFactory;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;
.source "SourceFile"


# static fields
.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static fBaseTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const/16 v1, 0x35

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BaseDVFactory;->createBuiltInTypes(Lcom/sun/org/apache/xerces/internal/util/SymbolHash;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;-><init>()V

    return-void
.end method

.method public static createBuiltInTypes(Lcom/sun/org/apache/xerces/internal/util/SymbolHash;)V
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;-><init>()V

    sget-object v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v2, "anySimpleType"

    invoke-virtual {v0, v2, v12}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "string"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v2, v13

    move-object v3, v12

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "string"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "boolean"

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x3

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "boolean"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "decimal"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x4

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "decimal"

    invoke-virtual {v0, v2, v15}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "anyURI"

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x12

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "anyURI"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "base64Binary"

    const/16 v5, 0x10

    const/16 v11, 0x11

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "base64Binary"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "dateTime"

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/16 v11, 0x8

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "dateTime"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "time"

    const/16 v5, 0x8

    const/16 v11, 0x9

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "time"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "date"

    const/16 v5, 0x9

    const/16 v11, 0xa

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "date"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gYearMonth"

    const/16 v5, 0xa

    const/16 v11, 0xb

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "gYearMonth"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gYear"

    const/16 v5, 0xb

    const/16 v11, 0xc

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "gYear"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gMonthDay"

    const/16 v5, 0xc

    const/16 v11, 0xd

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "gMonthDay"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gDay"

    const/16 v5, 0xd

    const/16 v11, 0xe

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "gDay"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gMonth"

    const/16 v5, 0xe

    const/16 v11, 0xf

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "gMonth"

    invoke-virtual {v0, v2, v13}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "integer"

    const/16 v17, 0x18

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1e

    move-object v14, v2

    invoke-direct/range {v14 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v3, "integer"

    invoke-virtual {v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v11, "0"

    iput-object v11, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "nonPositiveInteger"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/4 v9, 0x0

    const/16 v10, 0x1f

    move-object v3, v12

    move-object v4, v2

    invoke-direct/range {v3 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/16 v13, 0x20

    const/4 v14, 0x0

    invoke-virtual {v12, v1, v13, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v3, "nonPositiveInteger"

    invoke-virtual {v0, v3, v12}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "-1"

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "negativeInteger"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/16 v10, 0x20

    move-object v3, v12

    invoke-direct/range {v3 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v12, v1, v13, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v3, "negativeInteger"

    invoke-virtual {v0, v3, v12}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "9223372036854775807"

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v3, "-9223372036854775808"

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "long"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/16 v10, 0x21

    move-object v3, v12

    invoke-direct/range {v3 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/16 v3, 0x120

    invoke-virtual {v12, v1, v3, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v4, "long"

    invoke-virtual {v0, v4, v12}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "2147483647"

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v4, "-2147483648"

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "int"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v21, 0x0

    const/16 v22, 0x22

    move-object v15, v4

    move-object/from16 v16, v12

    invoke-direct/range {v15 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v4, v1, v3, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v5, "int"

    invoke-virtual {v0, v5, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "32767"

    iput-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v5, "-32768"

    iput-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "short"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x23

    move-object v15, v5

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v5, v1, v3, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v4, "short"

    invoke-virtual {v0, v4, v5}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "127"

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v4, "-128"

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "byte"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x24

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v4, v1, v3, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v3, "byte"

    invoke-virtual {v0, v3, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v11, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "nonNegativeInteger"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/16 v10, 0x25

    move-object v3, v11

    move-object v4, v2

    invoke-direct/range {v3 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    const/16 v2, 0x100

    invoke-virtual {v11, v1, v2, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v3, "nonNegativeInteger"

    invoke-virtual {v0, v3, v11}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "18446744073709551615"

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "unsignedLong"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x26

    move-object v15, v3

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v3, v1, v13, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v4, "unsignedLong"

    invoke-virtual {v0, v4, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "4294967295"

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "unsignedInt"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x27

    move-object v15, v4

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v4, v1, v13, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v3, "unsignedInt"

    invoke-virtual {v0, v3, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "65535"

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "unsignedShort"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x28

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v3, v1, v13, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v4, "unsignedShort"

    invoke-virtual {v0, v4, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "255"

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "unsignedByte"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x29

    move-object v15, v4

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v4, v1, v13, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v3, "unsignedByte"

    invoke-virtual {v0, v3, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "1"

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "positiveInteger"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x2a

    move-object v15, v3

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V

    invoke-virtual {v3, v1, v2, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V

    const-string v1, "positiveInteger"

    invoke-virtual {v0, v1, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createTypeList(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 7

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
    .locals 6

    array-length p0, p4

    new-array v4, p0, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    invoke-static {p4, v0, v4, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;S[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    return-object p0
.end method

.method public getBuiltInType(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    return-object p0
.end method

.method public getBuiltInTypes()Lcom/sun/org/apache/xerces/internal/util/SymbolHash;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->makeClone()Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    move-result-object p0

    return-object p0
.end method
