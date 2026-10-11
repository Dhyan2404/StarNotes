.class public Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:[Lorg/apache/xerces/impl/dv/XSSimpleType;

.field public static final ATTIDX_ABSTRACT:I = 0x0

.field public static final ATTIDX_AFORMDEFAULT:I

.field public static final ATTIDX_BASE:I

.field public static final ATTIDX_BLOCK:I

.field public static final ATTIDX_BLOCKDEFAULT:I

.field public static final ATTIDX_DEFAULT:I

.field public static final ATTIDX_EFORMDEFAULT:I

.field public static final ATTIDX_ENUMNSDECLS:I

.field public static final ATTIDX_FINAL:I

.field public static final ATTIDX_FINALDEFAULT:I

.field public static final ATTIDX_FIXED:I

.field public static final ATTIDX_FORM:I

.field public static final ATTIDX_FROMDEFAULT:I

.field public static final ATTIDX_ID:I

.field public static final ATTIDX_ISRETURNED:I

.field public static final ATTIDX_ITEMTYPE:I

.field public static final ATTIDX_MAXOCCURS:I

.field public static final ATTIDX_MEMBERTYPES:I

.field public static final ATTIDX_MINOCCURS:I

.field public static final ATTIDX_MIXED:I

.field public static final ATTIDX_NAME:I

.field public static final ATTIDX_NAMESPACE:I

.field public static final ATTIDX_NAMESPACE_LIST:I

.field public static final ATTIDX_NILLABLE:I

.field public static final ATTIDX_NONSCHEMA:I

.field public static final ATTIDX_PROCESSCONTENTS:I

.field public static final ATTIDX_PUBLIC:I

.field public static final ATTIDX_REF:I

.field public static final ATTIDX_REFER:I

.field public static final ATTIDX_SCHEMALOCATION:I

.field public static final ATTIDX_SOURCE:I

.field public static final ATTIDX_SUBSGROUP:I

.field public static final ATTIDX_SYSTEM:I

.field public static final ATTIDX_TARGETNAMESPACE:I

.field public static final ATTIDX_TYPE:I

.field public static final ATTIDX_USE:I

.field public static final ATTIDX_VALUE:I

.field public static final ATTIDX_VERSION:I

.field public static final ATTIDX_XML_LANG:I

.field public static final ATTIDX_XPATH:I

.field public static B:[Z = null

.field public static final C:I = 0xa

.field public static final D:I = 0xa

.field protected static final DT_ANYURI:I = 0x0

.field protected static final DT_BLOCK:I = -0x1

.field protected static final DT_BLOCK1:I = -0x2

.field protected static final DT_BOOLEAN:I = -0xf

.field protected static final DT_COUNT:I = 0x9

.field protected static final DT_FINAL:I = -0x3

.field protected static final DT_FINAL1:I = -0x4

.field protected static final DT_FINAL2:I = -0x5

.field protected static final DT_FORM:I = -0x6

.field protected static final DT_ID:I = 0x1

.field protected static final DT_LANGUAGE:I = 0x8

.field protected static final DT_MAXOCCURS:I = -0x7

.field protected static final DT_MAXOCCURS1:I = -0x8

.field protected static final DT_MEMBERTYPES:I = -0x9

.field protected static final DT_MINOCCURS1:I = -0xa

.field protected static final DT_NAMESPACE:I = -0xb

.field protected static final DT_NCNAME:I = 0x5

.field protected static final DT_NONNEGINT:I = -0x10

.field protected static final DT_POSINT:I = -0x11

.field protected static final DT_PROCESSCONTENTS:I = -0xc

.field protected static final DT_QNAME:I = 0x2

.field protected static final DT_STRING:I = 0x3

.field protected static final DT_TOKEN:I = 0x4

.field protected static final DT_USE:I = -0xd

.field protected static final DT_WHITESPACE:I = -0xe

.field protected static final DT_XPATH:I = 0x6

.field protected static final DT_XPATH1:I = 0x7

.field public static E:[Ljava/lang/Object; = null

.field public static final c:Ljava/lang/String; = "element_n"

.field public static final d:Ljava/lang/String; = "element_r"

.field public static final e:Ljava/lang/String; = "attribute_n"

.field public static final f:Ljava/lang/String; = "attribute_r"

.field public static g:I

.field public static final h:Lorg/apache/xerces/impl/xs/util/XIntPool;

.field public static final i:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final j:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final k:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final l:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final m:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final n:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final o:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final p:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final q:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final r:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final s:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final t:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final u:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final v:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final w:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final x:Lorg/apache/xerces/impl/xs/util/XInt;

.field public static final y:Ljava/util/Hashtable;

.field public static final z:Ljava/util/Hashtable;


# instance fields
.field public a:[[Ljava/lang/Object;

.field public b:I

.field protected fNamespaceList:Ljava/util/Vector;

.field protected fNonSchemaAttrs:Ljava/util/Hashtable;

.field protected fSchemaHandler:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

.field protected fSeen:[Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 61

    const/4 v0, 0x0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    sput v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    add-int/lit8 v3, v2, 0x1

    sput v2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    add-int/lit8 v4, v3, 0x1

    sput v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    add-int/lit8 v5, v4, 0x1

    sput v4, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    add-int/lit8 v6, v5, 0x1

    sput v5, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    add-int/lit8 v7, v6, 0x1

    sput v6, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    add-int/lit8 v8, v7, 0x1

    sput v7, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    add-int/lit8 v9, v8, 0x1

    sput v8, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    add-int/lit8 v10, v9, 0x1

    sput v9, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    add-int/lit8 v11, v10, 0x1

    sput v10, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    add-int/lit8 v12, v11, 0x1

    sput v11, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    add-int/lit8 v13, v12, 0x1

    sput v12, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    add-int/lit8 v14, v13, 0x1

    sput v13, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    add-int/lit8 v15, v14, 0x1

    sput v14, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    add-int/lit8 v1, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    move/from16 v17, v15

    add-int/lit8 v15, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    move/from16 v18, v1

    add-int/lit8 v1, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    add-int/lit8 v19, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    move/from16 v20, v1

    add-int/lit8 v1, v19, 0x1

    sput v19, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    add-int/lit8 v19, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    move/from16 v21, v1

    add-int/lit8 v1, v19, 0x1

    sput v19, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    move/from16 v19, v15

    add-int/lit8 v15, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    move/from16 v22, v1

    add-int/lit8 v1, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    move/from16 v23, v15

    add-int/lit8 v15, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    move/from16 v24, v1

    add-int/lit8 v1, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    move/from16 v25, v15

    add-int/lit8 v15, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    move/from16 v26, v1

    add-int/lit8 v1, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    move/from16 v27, v15

    add-int/lit8 v15, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    move/from16 v28, v1

    add-int/lit8 v1, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    move/from16 v29, v15

    add-int/lit8 v15, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    move/from16 v30, v1

    add-int/lit8 v1, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    move/from16 v31, v15

    add-int/lit8 v15, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    add-int/lit8 v32, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    move/from16 v33, v15

    add-int/lit8 v15, v32, 0x1

    sput v32, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    move/from16 v32, v1

    add-int/lit8 v1, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    move/from16 v34, v15

    add-int/lit8 v15, v1, 0x1

    sput v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    add-int/lit8 v35, v15, 0x1

    sput v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    add-int/lit8 v36, v35, 0x1

    sput v35, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    add-int/lit8 v35, v36, 0x1

    sput v35, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->g:I

    sput v36, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    move/from16 v35, v15

    new-instance v15, Lorg/apache/xerces/impl/xs/util/XIntPool;

    invoke-direct {v15}, Lorg/apache/xerces/impl/xs/util/XIntPool;-><init>()V

    sput-object v15, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->h:Lorg/apache/xerces/impl/xs/util/XIntPool;

    move/from16 v36, v1

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v16

    sput-object v16, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->i:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x0

    move/from16 v37, v14

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    sput-object v14, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->j:Lorg/apache/xerces/impl/xs/util/XInt;

    move/from16 v38, v13

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v13

    sput-object v13, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->k:Lorg/apache/xerces/impl/xs/util/XInt;

    move/from16 v40, v12

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v12

    sput-object v12, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->l:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v41

    sput-object v41, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->m:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v42

    sput-object v42, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->n:Lorg/apache/xerces/impl/xs/util/XInt;

    move-object/from16 v43, v12

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v12

    sput-object v12, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->o:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v44

    sput-object v44, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->p:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v42

    sput-object v42, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->q:Lorg/apache/xerces/impl/xs/util/XInt;

    move-object/from16 v44, v12

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v12

    sput-object v12, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->r:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v16

    sput-object v16, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->s:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v42

    sput-object v42, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->t:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v45

    sput-object v45, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->u:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v45

    sput-object v45, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->v:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v45

    sput-object v45, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->w:Lorg/apache/xerces/impl/xs/util/XInt;

    const/4 v1, -0x1

    invoke-virtual {v15, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v45

    sput-object v45, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->x:Lorg/apache/xerces/impl/xs/util/XInt;

    new-instance v1, Ljava/util/Hashtable;

    move-object/from16 v46, v12

    const/16 v12, 0x1d

    invoke-direct {v1, v12}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->y:Ljava/util/Hashtable;

    new-instance v12, Ljava/util/Hashtable;

    move-object/from16 v47, v1

    const/16 v1, 0x4f

    invoke-direct {v12, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v12, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->z:Ljava/util/Hashtable;

    const/16 v1, 0x9

    move-object/from16 v48, v12

    new-array v12, v1, [Lorg/apache/xerces/impl/dv/XSSimpleType;

    sput-object v12, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->A:[Lorg/apache/xerces/impl/dv/XSSimpleType;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    move-object/from16 v49, v15

    const-string v15, "anyURI"

    invoke-virtual {v1, v15}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v15

    check-cast v15, Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/16 v39, 0x0

    aput-object v15, v12, v39

    const-string v15, "ID"

    invoke-virtual {v1, v15}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v15

    check-cast v15, Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/16 v16, 0x1

    aput-object v15, v12, v16

    const-string v15, "QName"

    invoke-virtual {v1, v15}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v15

    check-cast v15, Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/16 v42, 0x2

    aput-object v15, v12, v42

    const-string v15, "string"

    invoke-virtual {v1, v15}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v15

    check-cast v15, Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/16 v41, 0x3

    aput-object v15, v12, v41

    const-string v15, "token"

    invoke-virtual {v1, v15}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v15

    check-cast v15, Lorg/apache/xerces/impl/dv/XSSimpleType;

    move/from16 v50, v11

    const/4 v11, 0x4

    aput-object v15, v12, v11

    const-string v15, "NCName"

    invoke-virtual {v1, v15}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v15

    check-cast v15, Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/4 v11, 0x5

    aput-object v15, v12, v11

    aget-object v15, v12, v41

    const/4 v11, 0x6

    aput-object v15, v12, v11

    aput-object v15, v12, v11

    const-string v15, "language"

    invoke-virtual {v1, v15}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/16 v15, 0x8

    aput-object v1, v12, v15

    const/16 v1, 0x30

    new-array v1, v1, [Lcom/sunia/HTREnginev2/hgk;

    new-instance v12, Lcom/sunia/HTREnginev2/hgk;

    sget-object v15, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move/from16 v51, v10

    const/16 v10, -0xf

    move/from16 v52, v9

    const/4 v9, 0x0

    invoke-direct {v12, v15, v10, v9, v11}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v12, v1, v9

    new-instance v9, Lcom/sunia/HTREnginev2/hgk;

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    const/4 v10, -0x6

    invoke-direct {v9, v12, v10, v0, v14}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/4 v0, 0x1

    aput-object v9, v1, v0

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v53, v12

    const/4 v12, 0x2

    invoke-direct {v0, v9, v12, v2, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v0, v1, v12

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    invoke-direct {v0, v9, v12, v2, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    const/4 v12, -0x1

    invoke-direct {v0, v2, v12, v3, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v45, 0x4

    aput-object v0, v1, v45

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/4 v12, -0x2

    invoke-direct {v0, v2, v12, v3, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    const/4 v12, -0x1

    invoke-direct {v0, v3, v12, v4, v13}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/4 v4, 0x6

    aput-object v0, v1, v4

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    const/4 v12, 0x3

    invoke-direct {v0, v4, v12, v5, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/4 v5, 0x7

    aput-object v0, v1, v5

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    const/4 v5, -0x6

    invoke-direct {v0, v12, v5, v6, v14}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v5, 0x8

    aput-object v0, v1, v5

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/4 v6, -0x3

    invoke-direct {v0, v5, v6, v7, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x9

    aput-object v0, v1, v6

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/4 v6, -0x4

    invoke-direct {v0, v5, v6, v7, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0xa

    aput-object v0, v1, v6

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    const/4 v14, -0x5

    invoke-direct {v0, v7, v14, v8, v13}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v8, 0xb

    aput-object v0, v1, v8

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v13, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    move/from16 v14, v52

    const/4 v8, 0x3

    invoke-direct {v0, v13, v8, v14, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v8, 0xc

    aput-object v0, v1, v8

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/16 v6, -0xf

    invoke-direct {v0, v13, v6, v14, v11}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0xd

    aput-object v0, v1, v6

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v14, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    move/from16 v6, v51

    const/4 v8, -0x6

    invoke-direct {v0, v14, v8, v6, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0xe

    aput-object v0, v1, v6

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v8, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    move/from16 v6, v50

    move-object/from16 v50, v7

    const/4 v7, 0x1

    invoke-direct {v0, v8, v7, v6, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0xf

    aput-object v0, v1, v6

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    move/from16 v7, v40

    move-object/from16 v40, v12

    const/4 v12, 0x2

    invoke-direct {v0, v6, v12, v7, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x10

    aput-object v0, v1, v7

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/4 v7, -0x7

    move-object/from16 v54, v6

    move-object/from16 v10, v49

    move-object/from16 v49, v3

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v6

    move/from16 v3, v38

    invoke-direct {v0, v12, v7, v3, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x11

    aput-object v0, v1, v6

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/4 v7, -0x8

    move-object/from16 v55, v9

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v9

    invoke-direct {v0, v12, v7, v3, v9}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    const/16 v7, -0x9

    move/from16 v9, v37

    const/4 v3, 0x0

    invoke-direct {v0, v6, v7, v9, v3}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    const/16 v9, -0x10

    move-object/from16 v56, v6

    move/from16 v6, v17

    invoke-direct {v0, v7, v9, v6, v3}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v3, 0x14

    aput-object v0, v1, v3

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/16 v3, -0xa

    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v10

    invoke-direct {v0, v7, v3, v6, v10}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v3, 0x15

    aput-object v0, v1, v3

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    move/from16 v9, v18

    const/16 v10, -0xf

    invoke-direct {v0, v6, v10, v9, v11}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v18, 0x16

    aput-object v0, v1, v18

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/4 v3, 0x0

    invoke-direct {v0, v6, v10, v9, v3}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v9, 0x17

    aput-object v0, v1, v9

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v10, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    move/from16 v9, v19

    move-object/from16 v19, v6

    const/4 v6, 0x5

    invoke-direct {v0, v10, v6, v9, v3}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x18

    aput-object v0, v1, v6

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v6, -0xb

    move/from16 v3, v20

    move-object/from16 v20, v7

    move-object/from16 v7, v44

    invoke-direct {v0, v9, v6, v3, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x19

    aput-object v0, v1, v6

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v9, v7, v3, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v3, 0x1a

    aput-object v0, v1, v3

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    move/from16 v7, v21

    const/16 v3, -0xf

    invoke-direct {v0, v6, v3, v7, v11}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v3, 0x1b

    aput-object v0, v1, v3

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    const/16 v11, -0xc

    move/from16 v3, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v43

    invoke-direct {v0, v7, v11, v3, v9}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v3, 0x1c

    aput-object v0, v1, v3

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    move-object/from16 v43, v7

    move/from16 v11, v23

    const/4 v3, 0x4

    const/4 v7, 0x0

    invoke-direct {v0, v9, v3, v11, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v3, 0x1d

    aput-object v0, v1, v3

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move/from16 v11, v24

    move-object/from16 v24, v9

    const/4 v9, 0x2

    invoke-direct {v0, v3, v9, v11, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v11, 0x1e

    aput-object v0, v1, v11

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v11, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    move-object/from16 v57, v12

    move/from16 v12, v25

    invoke-direct {v0, v11, v9, v12, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v9, 0x1f

    aput-object v0, v1, v9

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    move/from16 v9, v26

    move-object/from16 v26, v11

    const/4 v11, 0x0

    invoke-direct {v0, v12, v11, v9, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v58, 0x20

    aput-object v0, v1, v58

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    invoke-direct {v0, v12, v11, v9, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v9, 0x21

    aput-object v0, v1, v9

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    move-object/from16 v59, v12

    move/from16 v12, v27

    invoke-direct {v0, v9, v11, v12, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v12, 0x22

    aput-object v0, v1, v12

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    move/from16 v11, v28

    move-object/from16 v28, v9

    const/4 v9, 0x2

    invoke-direct {v0, v12, v9, v11, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v9, 0x23

    aput-object v0, v1, v9

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v11, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    move/from16 v9, v29

    move-object/from16 v29, v12

    const/4 v12, 0x0

    invoke-direct {v0, v11, v12, v9, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v9, 0x24

    aput-object v0, v1, v9

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    move-object/from16 v60, v11

    move/from16 v11, v30

    invoke-direct {v0, v9, v12, v11, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v11, 0x25

    aput-object v0, v1, v11

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    move/from16 v11, v31

    move-object/from16 v31, v9

    const/4 v9, 0x2

    invoke-direct {v0, v12, v9, v11, v7}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v9, 0x26

    aput-object v0, v1, v9

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v11, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    const/16 v9, -0xd

    move/from16 v7, v32

    move-object/from16 v32, v6

    move-object/from16 v6, v46

    invoke-direct {v0, v11, v9, v7, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v6, 0x27

    aput-object v0, v1, v6

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    move-object/from16 v46, v5

    move/from16 v9, v33

    const/16 v5, -0x10

    const/4 v6, 0x0

    invoke-direct {v0, v7, v5, v9, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v5, 0x28

    aput-object v0, v1, v5

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/16 v5, -0x11

    invoke-direct {v0, v7, v5, v9, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v5, 0x29

    aput-object v0, v1, v5

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/4 v5, 0x3

    invoke-direct {v0, v7, v5, v9, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v5, 0x2a

    aput-object v0, v1, v5

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/16 v5, -0xe

    invoke-direct {v0, v7, v5, v9, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v5, 0x2b

    aput-object v0, v1, v5

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    move/from16 v5, v34

    move-object/from16 v34, v7

    const/4 v7, 0x4

    invoke-direct {v0, v9, v7, v5, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v5, 0x2c

    aput-object v0, v1, v5

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    move/from16 v5, v36

    move-object/from16 v36, v9

    const/16 v9, 0x8

    invoke-direct {v0, v7, v9, v5, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v5, 0x2d

    aput-object v0, v1, v5

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    move/from16 v5, v35

    move-object/from16 v35, v7

    const/4 v7, 0x6

    invoke-direct {v0, v9, v7, v5, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v7, 0x2e

    aput-object v0, v1, v7

    new-instance v0, Lcom/sunia/HTREnginev2/hgk;

    const/4 v7, 0x7

    invoke-direct {v0, v9, v7, v5, v6}, Lcom/sunia/HTREnginev2/hgk;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/16 v5, 0x2f

    aput-object v0, v1, v5

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v6

    aget-object v0, v1, v7

    invoke-virtual {v6, v4, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xc

    aget-object v7, v1, v0

    invoke-virtual {v6, v13, v7}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xf

    aget-object v7, v1, v0

    invoke-virtual {v6, v8, v7}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x18

    aget-object v7, v1, v0

    invoke-virtual {v6, v10, v7}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x26

    aget-object v7, v1, v0

    invoke-virtual {v6, v12, v7}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    move-object/from16 v7, v47

    invoke-virtual {v7, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v6

    aget-object v5, v1, v0

    invoke-virtual {v6, v4, v5}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xc

    aget-object v5, v1, v0

    invoke-virtual {v6, v13, v5}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xe

    aget-object v5, v1, v0

    invoke-virtual {v6, v14, v5}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xf

    aget-object v5, v1, v0

    invoke-virtual {v6, v8, v5}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x18

    aget-object v5, v1, v0

    invoke-virtual {v6, v10, v5}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x26

    aget-object v5, v1, v0

    invoke-virtual {v6, v12, v5}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x27

    aget-object v5, v1, v0

    invoke-virtual {v6, v11, v5}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const-string v0, "attribute_n"

    move-object/from16 v5, v48

    invoke-virtual {v5, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v6

    move-object/from16 v48, v9

    const/4 v0, 0x7

    aget-object v9, v1, v0

    invoke-virtual {v6, v4, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xc

    aget-object v9, v1, v0

    invoke-virtual {v6, v13, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xf

    aget-object v9, v1, v0

    invoke-virtual {v6, v8, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x1e

    aget-object v9, v1, v0

    invoke-virtual {v6, v3, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x27

    aget-object v0, v1, v0

    invoke-virtual {v6, v11, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const-string v0, "attribute_r"

    invoke-virtual {v5, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v6

    const/4 v0, 0x0

    aget-object v9, v1, v0

    invoke-virtual {v6, v15, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/4 v0, 0x4

    aget-object v9, v1, v0

    invoke-virtual {v6, v2, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/4 v0, 0x7

    aget-object v9, v1, v0

    invoke-virtual {v6, v4, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x9

    aget-object v9, v1, v0

    move-object/from16 v0, v46

    invoke-virtual {v6, v0, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0xc

    aget-object v11, v1, v9

    invoke-virtual {v6, v13, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0xf

    aget-object v11, v1, v9

    invoke-virtual {v6, v8, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x18

    aget-object v11, v1, v9

    invoke-virtual {v6, v10, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x1b

    aget-object v11, v1, v9

    move-object/from16 v9, v32

    invoke-virtual {v6, v9, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v11, 0x23

    aget-object v11, v1, v11

    move-object/from16 v0, v29

    invoke-virtual {v6, v0, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x26

    aget-object v11, v1, v0

    invoke-virtual {v6, v12, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v7, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v6

    const/4 v0, 0x4

    aget-object v11, v1, v0

    invoke-virtual {v6, v2, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v6, v4, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xc

    aget-object v0, v1, v0

    invoke-virtual {v6, v13, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xe

    aget-object v0, v1, v0

    invoke-virtual {v6, v14, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xf

    aget-object v4, v1, v0

    invoke-virtual {v6, v8, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x11

    aget-object v4, v1, v0

    move-object/from16 v0, v57

    invoke-virtual {v6, v0, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v4, 0x14

    aget-object v11, v1, v4

    move-object/from16 v4, v20

    invoke-virtual {v6, v4, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v11, 0x18

    aget-object v14, v1, v11

    invoke-virtual {v6, v10, v14}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v11, 0x1b

    aget-object v11, v1, v11

    invoke-virtual {v6, v9, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x26

    aget-object v9, v1, v9

    invoke-virtual {v6, v12, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const-string v9, "element_n"

    invoke-virtual {v5, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v9

    const/16 v6, 0xf

    aget-object v11, v1, v6

    invoke-virtual {v9, v8, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v6, 0x11

    aget-object v11, v1, v6

    invoke-virtual {v9, v0, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v6, 0x14

    aget-object v11, v1, v6

    invoke-virtual {v9, v4, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v6, 0x1e

    aget-object v11, v1, v6

    invoke-virtual {v9, v3, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const-string v6, "element_r"

    invoke-virtual {v5, v6, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x6

    invoke-static {v6}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v9

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v9, v15, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/4 v6, 0x5

    aget-object v11, v1, v6

    invoke-virtual {v9, v2, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v2, 0x9

    aget-object v2, v1, v2

    move-object/from16 v6, v46

    invoke-virtual {v9, v6, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v2, 0xf

    aget-object v11, v1, v2

    invoke-virtual {v9, v8, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v11, v1, v18

    move-object/from16 v12, v19

    invoke-virtual {v9, v12, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v11, 0x18

    aget-object v14, v1, v11

    invoke-virtual {v9, v10, v14}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v14, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v7, v14, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v15

    aget-object v9, v1, v2

    invoke-virtual {v15, v8, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v9, v1, v11

    invoke-virtual {v15, v10, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x1d

    aget-object v9, v1, v9

    move-object/from16 v11, v24

    invoke-virtual {v15, v11, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x24

    aget-object v9, v1, v9

    move-object/from16 v11, v60

    invoke-virtual {v15, v11, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v7, v9, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x2

    invoke-static {v9}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v11

    aget-object v15, v1, v2

    invoke-virtual {v11, v8, v15}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v15, v1, v18

    invoke-virtual {v11, v12, v15}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    invoke-virtual {v5, v14, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v14

    aget-object v11, v1, v2

    invoke-virtual {v14, v8, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v11, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    invoke-virtual {v5, v11, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v11

    const/4 v14, 0x3

    aget-object v15, v1, v14

    move-object/from16 v14, v55

    invoke-virtual {v11, v14, v15}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v15, v1, v2

    invoke-virtual {v11, v8, v15}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v15, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v5, v15, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v11

    aget-object v15, v1, v9

    invoke-virtual {v11, v14, v15}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v14, v1, v2

    invoke-virtual {v11, v8, v14}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v14, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v5, v14, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v11

    aget-object v9, v1, v2

    invoke-virtual {v11, v8, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x1e

    aget-object v14, v1, v9

    invoke-virtual {v11, v3, v14}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v9, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x3

    invoke-static {v11}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v14

    aget-object v11, v1, v2

    invoke-virtual {v14, v8, v11}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v11, 0x19

    aget-object v15, v1, v11

    move-object/from16 v11, v22

    invoke-virtual {v14, v11, v15}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v15, 0x1c

    aget-object v2, v1, v15

    move-object/from16 v15, v43

    invoke-virtual {v14, v15, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v5, v2, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v14

    const/16 v18, 0xf

    aget-object v2, v1, v18

    invoke-virtual {v14, v8, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v2, 0x17

    aget-object v2, v1, v2

    invoke-virtual {v14, v12, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    invoke-virtual {v5, v2, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v12

    aget-object v14, v1, v18

    invoke-virtual {v12, v8, v14}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v14, 0x18

    aget-object v2, v1, v14

    invoke-virtual {v12, v10, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    invoke-virtual {v7, v9, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v9

    aget-object v2, v1, v18

    invoke-virtual {v9, v8, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v2, v1, v14

    invoke-virtual {v9, v10, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v7, v2, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v9

    aget-object v12, v1, v18

    invoke-virtual {v9, v8, v12}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v12, 0x11

    aget-object v14, v1, v12

    invoke-virtual {v9, v0, v14}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v12, 0x14

    aget-object v14, v1, v12

    invoke-virtual {v9, v4, v14}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v12, 0x1e

    aget-object v12, v1, v12

    invoke-virtual {v9, v3, v12}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    invoke-virtual {v5, v2, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v9, v1, v18

    invoke-virtual {v3, v8, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x12

    aget-object v9, v1, v9

    invoke-virtual {v3, v0, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x15

    aget-object v9, v1, v9

    invoke-virtual {v3, v4, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v5, v9, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v2, v1, v18

    invoke-virtual {v3, v8, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v2, 0x11

    aget-object v9, v1, v2

    invoke-virtual {v3, v0, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x14

    aget-object v12, v1, v9

    invoke-virtual {v3, v4, v12}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v5, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v5, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v12, v1, v18

    invoke-virtual {v3, v8, v12}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v2, v1, v2

    invoke-virtual {v3, v0, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v0, v1, v9

    invoke-virtual {v3, v4, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x19

    aget-object v0, v1, v0

    invoke-virtual {v3, v11, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x1c

    aget-object v0, v1, v0

    invoke-virtual {v3, v15, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v2

    const/16 v0, 0xf

    aget-object v3, v1, v0

    invoke-virtual {v2, v8, v3}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v3, 0x18

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v5, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    invoke-virtual {v5, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v4

    aget-object v2, v1, v0

    invoke-virtual {v4, v8, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v2, v1, v3

    invoke-virtual {v4, v10, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v2, 0x1f

    aget-object v2, v1, v2

    move-object/from16 v3, v26

    invoke-virtual {v4, v3, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v8, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v4, 0x2e

    aget-object v4, v1, v4

    move-object/from16 v9, v48

    invoke-virtual {v3, v9, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v2, v1, v0

    invoke-virtual {v3, v8, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v2, 0x2f

    aget-object v2, v1, v2

    invoke-virtual {v3, v9, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v8, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v0

    const/16 v2, 0x22

    aget-object v3, v1, v2

    move-object/from16 v4, v28

    invoke-virtual {v0, v4, v3}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v7, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v0, v1, v2

    invoke-virtual {v3, v4, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x2d

    aget-object v2, v1, v0

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    const/16 v2, 0xa

    aget-object v4, v1, v2

    invoke-virtual {v3, v6, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v4, 0xf

    aget-object v9, v1, v4

    invoke-virtual {v3, v8, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v9, 0x18

    aget-object v9, v1, v9

    invoke-virtual {v3, v10, v9}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v9, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v7, v9, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v10

    aget-object v2, v1, v2

    invoke-virtual {v10, v6, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v2, v1, v4

    invoke-virtual {v10, v8, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    invoke-virtual {v5, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v2

    aget-object v6, v1, v4

    invoke-virtual {v2, v8, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v6, 0x10

    aget-object v6, v1, v6

    move-object/from16 v9, v54

    invoke-virtual {v2, v9, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v8, v3}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v3, 0x13

    aget-object v3, v1, v3

    move-object/from16 v4, v56

    invoke-virtual {v2, v4, v3}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    move-object/from16 v6, v53

    invoke-virtual {v3, v6, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/4 v4, 0x6

    aget-object v4, v1, v4

    move-object/from16 v6, v49

    invoke-virtual {v3, v6, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v2, v1, v2

    move-object/from16 v4, v40

    invoke-virtual {v3, v4, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v2, 0xb

    aget-object v2, v1, v2

    move-object/from16 v4, v50

    invoke-virtual {v3, v4, v2}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v2, 0xf

    aget-object v4, v1, v2

    invoke-virtual {v3, v8, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v4, 0x25

    aget-object v4, v1, v4

    move-object/from16 v6, v31

    invoke-virtual {v3, v6, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v4, 0x2c

    aget-object v4, v1, v4

    move-object/from16 v6, v36

    invoke-virtual {v3, v6, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v4, 0x2d

    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v0, v1, v2

    invoke-virtual {v3, v8, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v0, v1, v58

    move-object/from16 v4, v59

    invoke-virtual {v3, v4, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v6, v1, v2

    invoke-virtual {v3, v8, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v6, 0x1a

    aget-object v6, v1, v6

    invoke-virtual {v3, v11, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v6, 0x21

    aget-object v6, v1, v6

    invoke-virtual {v3, v4, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v7, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v0, v1, v2

    invoke-virtual {v3, v8, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x28

    aget-object v0, v1, v0

    move-object/from16 v2, v34

    invoke-virtual {v3, v2, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0xd

    aget-object v4, v1, v0

    invoke-virtual {v3, v13, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    const/16 v0, 0xf

    aget-object v4, v1, v0

    invoke-virtual {v3, v8, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v4, 0x29

    aget-object v4, v1, v4

    invoke-virtual {v3, v2, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v4, 0xd

    aget-object v6, v1, v4

    invoke-virtual {v3, v13, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v4

    aget-object v6, v1, v0

    invoke-virtual {v4, v8, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v6, 0x2a

    aget-object v7, v1, v6

    invoke-virtual {v4, v2, v7}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v8, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v4, v1, v6

    invoke-virtual {v3, v2, v4}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v4

    aget-object v6, v1, v0

    invoke-virtual {v4, v8, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v6, 0x2b

    aget-object v6, v1, v6

    invoke-virtual {v4, v2, v6}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v6, 0xd

    aget-object v7, v1, v6

    invoke-virtual {v4, v13, v7}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/sunia/HTREnginev2/mae;->b(I)Lcom/sunia/HTREnginev2/mae;

    move-result-object v3

    aget-object v0, v1, v0

    invoke-virtual {v3, v8, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    const/16 v0, 0x2a

    aget-object v0, v1, v0

    invoke-virtual {v3, v2, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    aget-object v0, v1, v6

    invoke-virtual {v3, v13, v0}, Lcom/sunia/HTREnginev2/mae;->c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->g:I

    new-array v1, v0, [Z

    sput-object v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->B:[Z

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->E:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->g:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    const/16 v1, 0xa

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a:[[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->b:I

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    return-void
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_a

    if-nez p1, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0xd

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ne p1, v7, :cond_4

    :goto_1
    if-lt v0, v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move p1, v0

    move v8, v7

    :goto_3
    if-lt p1, v1, :cond_5

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v5, :cond_6

    if-eq v9, v4, :cond_6

    if-eq v9, v3, :cond_6

    if-eq v9, v6, :cond_6

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v8, v0

    goto :goto_7

    :cond_6
    :goto_5
    add-int/lit8 v9, v1, -0x1

    if-lt p1, v9, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v10, p1, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v5, :cond_9

    if-eq v11, v4, :cond_9

    if-eq v11, v3, :cond_9

    if-eq v11, v6, :cond_9

    :goto_6
    if-ge p1, v9, :cond_8

    if-nez v8, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    :goto_7
    add-int/2addr p1, v7

    goto :goto_3

    :cond_9
    move p1, v10

    goto :goto_5

    :cond_a
    :goto_8
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public final b([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/sunia/HTREnginev2/tmo;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    const-string v1, "nonNegativeInteger"

    const-string v2, "positiveInteger"

    const/4 v3, 0x0

    if-nez p3, :cond_0

    return-object v3

    :cond_0
    invoke-static/range {p3 .. p3}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "union"

    const-string v7, "list"

    const-string v9, "0"

    const-string v10, "extension"

    const-string v11, "1"

    const-string v12, "restriction"

    const-string v14, "#all"

    const-string v15, "cvc-datatype-valid.1.2.1"

    const-string v13, "cvc-datatype-valid.1.2.3"

    const-string v8, " \n\t\r"

    const-string v3, "cvc-enumeration-valid"

    move-object/from16 v16, v2

    const/4 v2, 0x0

    packed-switch p4, :pswitch_data_0

    const/4 v9, 0x0

    move-object v3, v9

    goto/16 :goto_f

    :pswitch_0
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_4
    const-string v3, "substitution"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(#all | List of (extension | restriction | substitution))"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_3

    :cond_6
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_9
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(#all | List of (extension | restriction))"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_2
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    or-int/lit8 v2, v2, 0x10

    goto :goto_2

    :cond_c
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    :cond_d
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_e
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(#all | List of (list | union | restriction))"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_3
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_3
    const/16 v13, 0x1f

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_10

    :goto_5
    move v13, v2

    :goto_6
    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->h:Lorg/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v13}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    goto/16 :goto_f

    :cond_10
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    or-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    or-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_12
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit8 v2, v2, 0x10

    goto :goto_4

    :cond_13
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    or-int/lit8 v2, v2, 0x8

    goto :goto_4

    :cond_14
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(#all | List of (extension | restriction | list | union))"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_4
    const-string v0, "qualified"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->i:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_15
    const-string v0, "unqualified"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->j:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_16
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(qualified | unqualified)"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_5
    const-string v1, "unbounded"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->x:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_17
    const/16 v4, -0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->b([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/sunia/HTREnginev2/tmo;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(nonNegativeInteger | unbounded)"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_6
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :goto_7
    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->h:Lorg/apache/xerces/impl/xs/util/XIntPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    goto/16 :goto_f

    :cond_18
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(1)"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :try_start_1
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_9

    :cond_19
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->A:[Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, v5, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    const/4 v7, 0x0

    invoke-interface {v3, v2, v4, v7}, Lorg/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/QName;

    iget-object v3, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v4, :cond_1a

    iget-object v3, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_1a

    iget-boolean v3, v5, Lcom/sunia/HTREnginev2/tmo;->i:Z

    if-eqz v3, :cond_1a

    iget-object v3, v5, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iput-object v3, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :cond_1a
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(List of QName)"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cvc-datatype-valid.1.2.2"

    invoke-direct {v0, v2, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_8
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->h:Lorg/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    goto/16 :goto_f

    :cond_1b
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_7

    :cond_1c
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(0 | 1)"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_9
    const-string v1, "##any"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->o:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_1d
    const-string v1, "##other"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->q:Lorg/apache/xerces/impl/xs/util/XInt;

    iget-object v1, v5, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v1, p1, v2

    :goto_9
    move-object v3, v0

    goto/16 :goto_f

    :cond_1e
    sget-object v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->p:Lorg/apache/xerces/impl/xs/util/XInt;

    iget-object v3, v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_a
    :try_start_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4
    :try_end_2
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v4, :cond_20

    iget-object v2, v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v2, p1, v0

    move-object v3, v1

    goto/16 :goto_f

    :cond_20
    :try_start_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v7, "##local"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    const/4 v7, 0x0

    :goto_b
    const/4 v9, 0x0

    goto :goto_c

    :cond_21
    const-string v7, "##targetNamespace"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    iget-object v7, v5, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    goto :goto_b

    :cond_22
    sget-object v7, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->A:[Lorg/apache/xerces/impl/dv/XSSimpleType;

    aget-object v7, v7, v2

    iget-object v8, v5, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    const/4 v9, 0x0

    invoke-interface {v7, v4, v8, v9}, Lorg/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v7, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_c
    iget-object v4, v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "((##any | ##other) | List of (anyURI | (##targetNamespace | ##local)) )"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_a
    const-string v0, "strict"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->l:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_23
    const-string v0, "lax"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->m:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_24
    const-string v0, "skip"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->n:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_25
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(lax | skip | strict)"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_b
    const-string v0, "optional"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->r:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_26
    const-string v0, "required"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->s:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_27
    const-string v0, "prohibited"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->t:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_28
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(optional | prohibited | required)"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_c
    const-string v0, "preserve"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->u:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_29
    const-string v0, "replace"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->v:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_2a
    const-string v0, "collapse"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->w:Lorg/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_f

    :cond_2b
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "(preserve | replace | collapse)"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_d
    const-string v0, "false"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_e

    :cond_2c
    const-string v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_d

    :cond_2d
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "boolean"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2e
    :goto_d
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_f

    :cond_2f
    :goto_e
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_f

    :pswitch_e
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_30

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_30

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_30
    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->h:Lorg/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    if-ltz v0, :cond_31

    goto :goto_f

    :cond_31
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_3
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_f
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_32

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_32
    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->h:Lorg/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lorg/apache/xerces/impl/xs/util/XInt;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    if-lez v0, :cond_33

    goto :goto_f

    :cond_33
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    move-object/from16 v1, v16

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_4
    move-object/from16 v1, v16

    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :goto_f
    return-object v3

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;Z)[Ljava/lang/Object;
    .locals 20

    .line 2
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const/4 v10, 0x0

    if-nez v8, :cond_0

    return-object v10

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getAttrs(Lorg/w3c/dom/Element;)[Lorg/w3c/dom/Attr;

    move-result-object v11

    iget-object v0, v9, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v7, v8, v11, v0}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->resolveNamespace(Lorg/w3c/dom/Element;[Lorg/w3c/dom/Attr;Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "s4s-elt-schema-ns"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_1
    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->y:Ljava/util/Hashtable;

    if-nez p2, :cond_5

    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->z:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-static {v8, v1}, Lorg/apache/xerces/util/DOMUtil;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "element_r"

    goto :goto_0

    :cond_2
    const-string v1, "element_n"

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-static {v8, v1}, Lorg/apache/xerces/util/DOMUtil;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "attribute_r"

    goto :goto_0

    :cond_4
    const-string v1, "attribute_n"

    goto :goto_0

    :cond_5
    move-object v1, v12

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/sunia/HTREnginev2/mae;

    if-nez v13, :cond_6

    const-string v0, "s4s-elt-invalid"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v10

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->getAvailableArray()[Ljava/lang/Object;

    move-result-object v14

    sget-object v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->B:[Z

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    sget v2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->g:I

    const/4 v15, 0x0

    invoke-static {v0, v15, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v11

    move v5, v15

    :goto_1
    const/4 v0, 0x1

    if-lt v5, v6, :cond_a

    iget-object v1, v13, Lcom/sunia/HTREnginev2/mae;->a:[Lcom/sunia/HTREnginev2/hgk;

    const-wide/16 v2, 0x0

    :goto_2
    array-length v4, v1

    if-lt v15, v4, :cond_8

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v14, v0

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v14, v0

    if-eqz v1, :cond_7

    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v2, v14, v1

    check-cast v2, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    aget-object v3, v14, v0

    check-cast v3, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    if-le v2, v3, :cond_7

    aget-object v2, v14, v1

    aget-object v3, v14, v0

    filled-new-array {v12, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "p-props-correct.2.1"

    invoke-virtual {v7, v3, v2, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    aget-object v0, v14, v0

    aput-object v0, v14, v1

    :cond_7
    return-object v14

    :cond_8
    aget-object v4, v1, v15

    iget-object v5, v4, Lcom/sunia/HTREnginev2/hgk;->d:Ljava/lang/Object;

    if-eqz v5, :cond_9

    iget-object v6, v7, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    iget v4, v4, Lcom/sunia/HTREnginev2/hgk;->c:I

    aget-boolean v6, v6, v4

    if-nez v6, :cond_9

    aput-object v5, v14, v4

    shl-int v4, v0, v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_a
    aget-object v1, v11, v5

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getValue(Lorg/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v3

    const-string v15, "xml"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getPrefix(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const-string v15, "xmlns"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    move-object v2, v10

    goto :goto_4

    :cond_d
    :goto_3
    move/from16 v17, v5

    move/from16 v19, v6

    move-object/from16 v18, v11

    goto/16 :goto_8

    :cond_e
    :goto_4
    const/4 v1, 0x2

    const-string v15, "s4s-att-not-allowed"

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_11

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    filled-new-array {v12, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v15, v0, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_f
    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v14, v0

    if-nez v2, :cond_10

    new-instance v2, Ljava/util/Vector;

    const/4 v15, 0x4

    invoke-direct {v2, v15, v1}, Ljava/util/Vector;-><init>(II)V

    aput-object v2, v14, v0

    :cond_10
    aget-object v1, v14, v0

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aget-object v0, v14, v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_11
    invoke-virtual {v13, v4}, Lcom/sunia/HTREnginev2/mae;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/hgk;

    move-result-object v2

    if-nez v2, :cond_12

    filled-new-array {v12, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v15, v0, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_12
    iget-object v15, v7, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    iget v1, v2, Lcom/sunia/HTREnginev2/hgk;->c:I

    aput-boolean v0, v15, v1

    :try_start_0
    iget v0, v2, Lcom/sunia/HTREnginev2/hgk;->b:I

    if-ltz v0, :cond_15

    const/4 v15, 0x3

    if-eq v0, v15, :cond_14

    const/4 v15, 0x6

    if-eq v0, v15, :cond_14

    const/4 v15, 0x7

    if-eq v0, v15, :cond_14

    sget-object v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->A:[Lorg/apache/xerces/impl/dv/XSSimpleType;

    aget-object v0, v1, v0

    iget-object v1, v9, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v0, v3, v1, v10}, Lorg/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    iget v1, v2, Lcom/sunia/HTREnginev2/hgk;->b:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_13

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/xni/QName;

    iget-object v3, v1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v15, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v15, :cond_13

    iget-object v3, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_13

    iget-boolean v3, v9, Lcom/sunia/HTREnginev2/tmo;->i:Z

    if-eqz v3, :cond_13

    iget-object v3, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iput-object v3, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :cond_13
    iget v1, v2, Lcom/sunia/HTREnginev2/hgk;->c:I

    aput-object v0, v14, v1

    goto :goto_5

    :cond_14
    aput-object v3, v14, v1
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_5
    move/from16 v17, v5

    move/from16 v19, v6

    move-object/from16 v18, v11

    goto :goto_7

    :cond_15
    move v15, v1

    move-object/from16 v1, p0

    move-object v10, v2

    move-object v2, v14

    move-object/from16 v17, v3

    move-object v3, v4

    move-object/from16 v18, v11

    move-object v11, v4

    move-object/from16 v4, v17

    move/from16 v17, v5

    move v5, v0

    move/from16 v19, v6

    move-object/from16 v6, p3

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->b([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/sunia/HTREnginev2/tmo;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v14, v15
    :try_end_1
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v10, v2

    move/from16 v17, v5

    move/from16 v19, v6

    move-object/from16 v18, v11

    move-object v11, v4

    :goto_6
    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-att-invalid-value"

    invoke-virtual {v7, v1, v0, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v10, Lcom/sunia/HTREnginev2/hgk;->d:Ljava/lang/Object;

    if-eqz v0, :cond_16

    iget v1, v10, Lcom/sunia/HTREnginev2/hgk;->c:I

    aput-object v0, v14, v1

    :cond_16
    :goto_7
    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p4, :cond_17

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    new-instance v1, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v2, v9, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v1, v2}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    aput-object v1, v14, v0

    :cond_17
    :goto_8
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v11, v18

    move/from16 v6, v19

    const/4 v10, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1
.end method

.method public checkNonSchemaAttributes(Lorg/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/dv/XSSimpleType;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    :goto_1
    if-lt v6, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7, v8, v8}, Lorg/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Lorg/apache/xerces/impl/dv/DatatypeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v3, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "s4s-att-invalid-value"

    invoke-virtual {p0, v7, v5, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1
.end method

.method public getAvailableArray()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a:[[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->b:I

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v1, 0xa

    new-array v0, v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a:[[Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a:[[Ljava/lang/Object;

    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget v2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->g:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a:[[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->b:I

    aget-object v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->b:I

    const/4 p0, 0x0

    aput-object p0, v0, v1

    sget-object p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->E:[Ljava/lang/Object;

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->g:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v2, p0

    return-object v2
.end method

.method public reset(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public resolveNamespace(Lorg/w3c/dom/Element;[Lorg/w3c/dom/Attr;Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 5

    invoke-virtual {p3}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getValue(Lorg/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    move-object v4, v1

    :cond_3
    invoke-virtual {p3, v2, v4}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p2}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_0
    iget p2, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->b:I

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    array-length p2, p1

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->g:I

    if-ne p2, v0, :cond_3

    sget p2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    aget-object v0, p1, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, p1, p2

    sget p2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object p2, p1, p2

    if-eqz p2, :cond_2

    check-cast p2, Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    :cond_2
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->a:[[Ljava/lang/Object;

    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->b:I

    aput-object p1, p2, v0

    :cond_3
    :goto_0
    return-void
.end method
