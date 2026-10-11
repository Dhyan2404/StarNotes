.class public Lorg/apache/xmlbeans/impl/schema/StscTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionMaster;,
        Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FORM_QUALIFIED:Ljava/lang/String; = "qualified"

.field private static final WSDL_ARRAYTYPE_NAME:Ljavax/xml/namespace/QName;

.field public static final XPATH_REGEXP:Lorg/apache/xmlbeans/impl/regex/RegularExpression;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "arrayType"

    const-string v1, "http://schemas.xmlsoap.org/wsdl/"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->WSDL_ARRAYTYPE_NAME:Ljavax/xml/namespace/QName;

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    const-string v1, "(\\.//)?((((child::)?((\\i\\c*:)?(\\i\\c*|\\*)))|\\.)/)*((((child::)?((\\i\\c*:)?(\\i\\c*|\\*)))|\\.)|((attribute::|@)((\\i\\c*:)?(\\i\\c*|\\*))))(\\|(\\.//)?((((child::)?((\\i\\c*:)?(\\i\\c*|\\*)))|\\.)/)*((((child::)?((\\i\\c*:)?(\\i\\c*|\\*)))|\\.)|((attribute::|@)((\\i\\c*:)?(\\i\\c*|\\*)))))*"

    const-string v2, "X"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->XPATH_REGEXP:Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAllDefinitions([Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)V
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getRedefines()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getRedefineObjects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;

    invoke-direct {v7, v8, v9}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;-><init>(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionMaster;

    new-array v4, v3, [Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;

    invoke-direct {v2, v4}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionMaster;-><init>([Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v4

    array-length v5, v0

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_22

    aget-object v7, v0, v6

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->sizeOfNotationArray()I

    move-result v10

    if-lez v10, :cond_2

    const/16 v10, 0x33

    invoke-interface {v8, v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getNotationArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;

    move-result-object v11

    const-string v12, "Schema <notation> is not yet supported for this release."

    invoke-virtual {v4, v12, v10, v11}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    :cond_2
    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_3

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    move-object v9, v10

    move v10, v3

    :goto_3
    if-nez v9, :cond_4

    const-string v9, ""

    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_5

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->isEmptySchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    invoke-interface {v8}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v9, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->registerContribution(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->addNewContainer(Ljava/lang/String;)V

    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getComplexTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;

    move-result-object v13

    array-length v14, v13

    move v15, v3

    :goto_4
    if-ge v15, v14, :cond_c

    aget-object v16, v13, v15

    invoke-interface/range {v16 .. v16}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11, v7}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionMaster;->getComplexTypeRedefinitions(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)[Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;

    move-result-object v11

    array-length v3, v11

    move-object/from16 v17, v16

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v3, :cond_8

    move/from16 v16, v3

    aget-object v3, v11, v0

    move/from16 v18, v5

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->redefineComplexType(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;

    move-result-object v3

    move-object/from16 v5, v17

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v3

    goto :goto_6

    :cond_7
    move-object/from16 v5, v17

    :goto_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v16

    move/from16 v5, v18

    goto :goto_5

    :cond_8
    move/from16 v18, v5

    move-object/from16 v5, v17

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    invoke-static {v5, v9, v10, v0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateGlobalComplexType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addGlobalType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_8
    if-ltz v3, :cond_b

    invoke-interface {v12, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;

    if-lez v3, :cond_a

    const/4 v11, 0x1

    goto :goto_9

    :cond_a
    const/4 v11, 0x0

    :goto_9
    invoke-static {v5, v9, v10, v11}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateGlobalComplexType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addGlobalType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    add-int/lit8 v3, v3, -0x1

    move-object v0, v5

    goto :goto_8

    :cond_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v18

    goto :goto_4

    :cond_c
    move/from16 v18, v5

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getSimpleTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_12

    aget-object v11, v0, v5

    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13, v7}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionMaster;->getSimpleTypeRedefinitions(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)[Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v14, :cond_e

    move-object/from16 v16, v0

    aget-object v0, v13, v15

    move/from16 v17, v3

    if-eqz v0, :cond_d

    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->redefineSimpleType(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;

    move-result-object v0

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v11, v0

    :cond_d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move/from16 v3, v17

    goto :goto_b

    :cond_e
    move-object/from16 v16, v0

    move/from16 v17, v3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    :goto_c
    invoke-static {v11, v9, v10, v0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateGlobalSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addGlobalType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    :goto_d
    if-ltz v3, :cond_11

    invoke-interface {v12, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;

    if-lez v3, :cond_10

    const/4 v13, 0x1

    goto :goto_e

    :cond_10
    const/4 v13, 0x0

    :goto_e
    invoke-static {v11, v9, v10, v13}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateGlobalSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v11

    invoke-virtual {v4, v11, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addGlobalType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    add-int/lit8 v3, v3, -0x1

    move-object v0, v11

    goto :goto_d

    :cond_11
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    move/from16 v3, v17

    goto :goto_a

    :cond_12
    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getElementArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v3, :cond_13

    aget-object v11, v0, v5

    invoke-static {v11, v9, v10}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateDocumentType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v13

    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-virtual {v4, v13, v11}, Lorg/apache/xmlbeans/impl/schema/StscState;->addDocumentType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Ljavax/xml/namespace/QName;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_13
    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getAttributeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_14

    aget-object v11, v0, v5

    invoke-static {v11, v9, v10}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateAttributeType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v13

    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-virtual {v4, v13, v11}, Lorg/apache/xmlbeans/impl/schema/StscState;->addAttributeType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Ljavax/xml/namespace/QName;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_14
    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v3, :cond_1a

    aget-object v11, v0, v5

    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13, v7}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionMaster;->getModelGroupRedefinitions(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)[Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_12
    if-ge v15, v14, :cond_16

    move-object/from16 v16, v0

    aget-object v0, v13, v15

    move/from16 v17, v3

    if-eqz v0, :cond_15

    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->redefineModelGroup(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;

    move-result-object v0

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v11, v0

    :cond_15
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move/from16 v3, v17

    goto :goto_12

    :cond_16
    move-object/from16 v16, v0

    move/from16 v17, v3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_13

    :cond_17
    const/4 v0, 0x0

    :goto_13
    invoke-static {v11, v9, v10, v0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateModelGroup(Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addModelGroup(Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    :goto_14
    if-ltz v3, :cond_19

    invoke-interface {v12, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;

    if-lez v3, :cond_18

    const/4 v13, 0x1

    goto :goto_15

    :cond_18
    const/4 v13, 0x0

    :goto_15
    invoke-static {v11, v9, v10, v13}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateModelGroup(Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    move-result-object v11

    invoke-virtual {v4, v11, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addModelGroup(Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;)V

    add-int/lit8 v3, v3, -0x1

    move-object v0, v11

    goto :goto_14

    :cond_19
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    move/from16 v3, v17

    goto :goto_11

    :cond_1a
    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getAttributeGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v3, :cond_20

    aget-object v11, v0, v5

    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13, v7}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionMaster;->getAttributeGroupRedefinitions(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)[Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_17
    if-ge v15, v14, :cond_1c

    move-object/from16 v16, v0

    aget-object v0, v13, v15

    move-object/from16 v17, v2

    if-eqz v0, :cond_1b

    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->redefineAttributeGroup(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;

    move-result-object v0

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v11, v0

    :cond_1b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto :goto_17

    :cond_1c
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_18

    :cond_1d
    const/4 v0, 0x0

    :goto_18
    invoke-static {v11, v9, v10, v0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateAttributeGroup(Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroup;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->addAttributeGroup(Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    :goto_19
    if-ltz v11, :cond_1f

    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;

    if-lez v11, :cond_1e

    move v15, v13

    goto :goto_1a

    :cond_1e
    const/4 v15, 0x0

    :goto_1a
    invoke-static {v14, v9, v10, v15}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateAttributeGroup(Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroup;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    move-result-object v14

    invoke-virtual {v4, v14, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addAttributeGroup(Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V

    add-int/lit8 v11, v11, -0x1

    move-object v0, v14

    goto :goto_19

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto :goto_16

    :cond_20
    move-object/from16 v17, v2

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getAnnotationArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_21

    aget-object v5, v0, v3

    invoke-virtual {v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v7

    invoke-static {v7, v8, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->addAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_21
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move/from16 v5, v18

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->complainAboutMissingDefinitions()V

    goto :goto_1c

    :cond_23
    return-void
.end method

.method public static buildBigInt(Lorg/apache/xmlbeans/XmlAnySimpleType;)Ljava/math/BigInteger;
    .locals 5

    const-string v0, "nonNegativeInteger"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-gez v4, :cond_1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v3

    const-string v4, "invalid-value"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1

    :cond_1
    return-object v3

    :catch_0
    move-exception v3

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "invalid-value-detail"

    invoke-virtual {v4, v2, v0, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1
.end method

.method public static buildNnInteger(Lorg/apache/xmlbeans/XmlAnySimpleType;)Lorg/apache/xmlbeans/XmlNonNegativeInteger;
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->buildBigInt(Lorg/apache/xmlbeans/XmlAnySimpleType;)Ljava/math/BigInteger;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNonNegativeIntegerImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/values/XmlNonNegativeIntegerImpl;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBigIntegerValue(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setImmutable()V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const-string v1, "Internal error processing number"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildPosInteger(Lorg/apache/xmlbeans/XmlAnySimpleType;)Lorg/apache/xmlbeans/XmlPositiveInteger;
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->buildBigInt(Lorg/apache/xmlbeans/XmlAnySimpleType;)Ljava/math/BigInteger;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlPositiveIntegerImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/values/XmlPositiveIntegerImpl;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBigIntegerValue(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setImmutable()V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const-string v1, "Internal error processing number"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static checkRecursiveGroupReference([Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Lorg/apache/xmlbeans/SchemaType;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    :goto_0
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isDocumentType()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getGroupReferenceContext()[Ljavax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v3, v0

    array-length v4, p0

    if-ne v3, v4, :cond_6

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_4

    aget-object v5, p0, v4

    if-nez v5, :cond_2

    aget-object v6, v0, v4

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v5, :cond_5

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    return-object p2

    :cond_6
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :cond_7
    :goto_3
    return-object v1
.end method

.method private static checkXPathSyntax(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->removeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->XPATH_REGEXP:Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static copyGlobalAttributeToLocalAttribute(Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;)V
    .locals 11

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->getTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->getUse()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->getDefaultText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->_defaultValue:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->isFixed()Z

    move-result v7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->getWSDLArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->init(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;ILjava/lang/String;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/XmlValueRef;ZLorg/apache/xmlbeans/soap/SOAPArrayType;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    return-void
.end method

.method public static copyGlobalElementToLocalElement(Lorg/apache/xmlbeans/SchemaGlobalElement;Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;)V
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setNameAndTypeRef(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->isNillable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setNillable(Z)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->isFixed()Z

    move-result v1

    move-object v2, p0

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setDefault(Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;)V

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->getIdentityConstraintRefs()[Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaLocalElement;->blockExtension()Z

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaLocalElement;->blockRestriction()Z

    move-result v1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaLocalElement;->blockSubstitution()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setBlock(ZZZ)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaLocalElement;->isAbstract()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setAbstract(Z)V

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaParticle;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionRules(Lorg/apache/xmlbeans/QNameSet;Z)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaAnnotated;->getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    return-void
.end method

.method public static findAttributeFormDefault(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->type:Lorg/apache/xmlbeans/SchemaType;

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->xgetAttributeFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_2

    :try_start_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public static findElementFormDefault(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->type:Lorg/apache/xmlbeans/SchemaType;

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->xgetElementFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_2

    :try_start_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method private static findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->sourceNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :try_start_0
    const-class v0, Lorg/apache/xmlbeans/SchemaBookmark;

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlCursor;->getBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    instance-of p0, v0, Lorg/apache/xmlbeans/SchemaBookmark;

    if-eqz p0, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/SchemaBookmark;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaBookmark;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private static isEmptySchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
.end method

.method private static isReservedTypeName(Ljavax/xml/namespace/QName;)Z
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->get()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findType(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static removeWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translateAnonymousSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ")",
            "Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    new-instance v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleType(Z)V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p6}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p2

    invoke-virtual {v8, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOuterSchemaTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v8, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUserData(Ljava/lang/Object;)V

    invoke-interface {p5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8
.end method

.method public static translateAttribute(Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaAttributeModel;Z)Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;",
            "Lorg/apache/xmlbeans/SchemaType;",
            "Lorg/apache/xmlbeans/SchemaAttributeModel;",
            "Z)",
            "Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v9, p6

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v10

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getRef()Ljavax/xml/namespace/QName;

    move-result-object v3

    const/4 v11, 0x0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "src-attribute.3.1a"

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->uriMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetRef()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v5

    invoke-virtual {v10, v6, v2, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetRef()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v5

    invoke-virtual {v10, v6, v2, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :goto_0
    move-object v2, v11

    :cond_1
    if-nez v3, :cond_2

    if-nez v2, :cond_2

    const-string v1, "src-attribute.3.1b"

    invoke-virtual {v10, v1, v11, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v11

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "name"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetName()Lorg/apache/xmlbeans/XmlNCName;

    move-result-object v6

    const-string v7, "invalid-value"

    invoke-virtual {v10, v7, v5, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_3
    if-eqz p7, :cond_4

    new-instance v5, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;

    invoke-direct {v5}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v5, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-virtual {v5, v0, v8, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Z)V

    :goto_1
    move-object v12, v5

    const/4 v13, 0x2

    const/4 v5, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_c

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getType()Ljavax/xml/namespace/QName;

    move-result-object v1

    const-string v2, "src-attribute.3.2"

    if-eqz v1, :cond_5

    const-string v1, "type"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetType()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v6

    invoke-virtual {v10, v2, v1, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_5
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "<simpleType>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v6

    invoke-virtual {v10, v2, v1, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_6
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "form"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v6

    invoke-virtual {v10, v2, v1, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_7
    if-eqz v4, :cond_8

    move-object v1, v8

    goto :goto_2

    :cond_8
    move-object v1, v11

    :goto_2
    invoke-virtual {v10, v3, v1, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    move-result-object v1

    if-nez v1, :cond_9

    const/4 v1, 0x3

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetRef()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v0

    invoke-virtual {v10, v3, v1, v0, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    return-object v11

    :cond_9
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaLocalAttribute;->getUse()I

    move-result v2

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getDefaultText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v6, v5

    goto :goto_3

    :cond_a
    move-object v6, v11

    goto :goto_3

    :cond_b
    move-object v6, v11

    move v1, v14

    :goto_3
    move-object v15, v3

    goto/16 :goto_b

    :cond_c
    if-eqz p7, :cond_11

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v3

    const-string v6, "qualified"

    if-eqz v3, :cond_d

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_e
    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findAttributeFormDefault(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v5

    goto :goto_4

    :cond_f
    move v1, v14

    :goto_4
    if-eqz v1, :cond_10

    invoke-static {v2, v8}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    goto :goto_5

    :cond_10
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLN(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    goto :goto_5

    :cond_11
    invoke-static {v2, v8}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    :goto_5
    move-object v15, v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getType()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getType()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-eqz v4, :cond_12

    move-object v2, v8

    goto :goto_6

    :cond_12
    move-object v2, v11

    :goto_6
    invoke-virtual {v10, v1, v2, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getType()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetType()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v3

    invoke-virtual {v10, v2, v14, v3, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    goto :goto_7

    :cond_13
    move-object v1, v11

    :cond_14
    :goto_7
    invoke-virtual {v15}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetName()Lorg/apache/xmlbeans/XmlNCName;

    move-result-object v3

    const-string v6, "no-xsi"

    invoke-virtual {v10, v6, v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_15
    invoke-virtual {v15}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v15}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "no-xmlns"

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetName()Lorg/apache/xmlbeans/XmlNCName;

    move-result-object v3

    invoke-virtual {v10, v2, v11, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_16
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v2

    if-eqz v1, :cond_17

    if-eqz v2, :cond_17

    const-string v3, "src-attribute.4"

    invoke-virtual {v10, v3, v11, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move-object v7, v11

    goto :goto_8

    :cond_17
    move-object v7, v2

    :goto_8
    if-eqz v7, :cond_19

    new-instance v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v10, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-virtual {v6, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContainerField(Lorg/apache/xmlbeans/SchemaField;)V

    if-nez p5, :cond_18

    move-object v1, v11

    goto :goto_9

    :cond_18
    invoke-interface/range {p5 .. p5}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    :goto_9
    invoke-virtual {v6, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOuterSchemaTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    move-object/from16 v1, p4

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleType(Z)V

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v14, v6

    move-object/from16 v6, v16

    move-object v11, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-static {v1, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-static {v11}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUserData(Ljava/lang/Object;)V

    move-object v4, v14

    goto :goto_a

    :cond_19
    move-object v4, v1

    :goto_a
    if-nez v4, :cond_1a

    if-eqz v9, :cond_1a

    invoke-interface {v9, v15}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-interface {v9, v15}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    :cond_1a
    move v2, v13

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    if-nez v4, :cond_1b

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :cond_1b
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "Attributes must have a simple type (not complex)."

    const/16 v4, 0x2e

    invoke-virtual {v10, v3, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :cond_1c
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->isSetUse()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetUse()Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateUseCode(Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;)I

    move-result v2

    if-eq v2, v13, :cond_1d

    if-nez v1, :cond_1d

    move v5, v2

    const/4 v2, 0x0

    goto :goto_c

    :cond_1d
    move-object/from16 v18, v5

    move v5, v2

    move-object/from16 v2, v18

    :goto_c
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->isSetDefault()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->isSetFixed()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_d

    :cond_1e
    move v14, v1

    move-object v6, v2

    const/4 v3, 0x0

    goto :goto_10

    :cond_1f
    :goto_d
    if-eqz v1, :cond_20

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->isSetFixed()Z

    move-result v1

    if-nez v1, :cond_20

    const/16 v1, 0x9

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetFixed()Lorg/apache/xmlbeans/XmlString;

    move-result-object v2

    const-string v3, "A use of a fixed attribute definition must also be fixed"

    invoke-virtual {v10, v3, v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    :cond_20
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->isSetFixed()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->isSetDefault()Z

    move-result v2

    if-eqz v2, :cond_21

    if-eqz v1, :cond_21

    const-string v1, "src-attribute.1"

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetFixed()Lorg/apache/xmlbeans/XmlString;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    const/4 v14, 0x0

    goto :goto_e

    :cond_21
    move v14, v1

    :goto_e
    if-eqz v14, :cond_22

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getFixed()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_22
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->getDefault()Ljava/lang/String;

    move-result-object v1

    :goto_f
    if-eqz v6, :cond_23

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v1, "au-value_constraint"

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetFixed()Lorg/apache/xmlbeans/XmlString;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_10

    :cond_23
    const/4 v3, 0x0

    move-object v6, v1

    :goto_10
    if-nez p7, :cond_24

    move-object v1, v12

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->setFilename(Ljava/lang/String;)V

    :cond_24
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    :try_start_0
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->WSDL_ARRAYTYPE_NAME:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    if-eqz v2, :cond_25

    :try_start_1
    new-instance v1, Lorg/apache/xmlbeans/soap/SOAPArrayType;

    new-instance v7, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-direct {v7, v0}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    invoke-direct {v1, v2, v7}, Lorg/apache/xmlbeans/soap/SOAPArrayType;-><init>(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)V
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v1

    goto :goto_11

    :catch_0
    const-string v1, "soaparray"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v1, v2, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_25
    move-object v9, v3

    :goto_11
    invoke-virtual {v10, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object v10

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v12

    move-object v2, v15

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p0

    move v8, v14

    invoke-virtual/range {v1 .. v11}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->init(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;ILjava/lang/String;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/XmlValueRef;ZLorg/apache/xmlbeans/soap/SOAPArrayType;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    return-object v12

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_26

    :try_start_3
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_12
    throw v3
.end method

.method public static translateAttributeGroup(Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroup;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;
    .locals 10

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const-string v2, "attribute group"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "missing-name"

    invoke-virtual {v0, v3, v2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v3

    new-instance v9, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    invoke-direct {v9, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-static {v3, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object v7

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findAttributeFormDefault(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v3

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    if-nez v3, :cond_1

    move-object v5, v1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v9

    move-object v1, v4

    move-object v2, p1

    move v3, p2

    move-object v4, v5

    move v5, p3

    move-object v6, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->init(Ljavax/xml/namespace/QName;Ljava/lang/String;ZLjava/lang/String;ZLorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->setFilename(Ljava/lang/String;)V

    return-object v9
.end method

.method private static translateAttributeType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 8

    new-instance v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAttributeType(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFilename(Ljava/lang/String;)V

    return-object v7
.end method

.method private static translateDocumentType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 8

    new-instance v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDocumentType(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFilename(Ljava/lang/String;)V

    return-object v7
.end method

.method public static translateElement(Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ")",
            "Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v5, p3

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v10

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->isSetSubstitutionGroup()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getSubstitutionGroup()Ljavax/xml/namespace/QName;

    move-result-object v1

    move-object/from16 v2, p6

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->findDocumentType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    :cond_0
    move-object v12, v1

    goto :goto_0

    :cond_1
    move-object v12, v11

    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getRef()Ljavax/xml/namespace/QName;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetRef()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v3

    const-string v4, "src-element.2.1a"

    invoke-virtual {v10, v4, v1, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move-object v1, v11

    :cond_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    const-string v1, "src-element.2.1b"

    invoke-virtual {v10, v1, v11, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v11

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "name"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetName()Lorg/apache/xmlbeans/XmlNCName;

    move-result-object v4

    const-string v6, "invalid-value"

    invoke-virtual {v10, v6, v3, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_4
    const/4 v13, 0x4

    const/4 v14, 0x1

    if-eqz v2, :cond_12

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getType()Ljavax/xml/namespace/QName;

    move-result-object v1

    const-string v3, "src-element.2.2"

    if-eqz v1, :cond_5

    const-string v1, "type"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetType()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v4

    invoke-virtual {v10, v3, v1, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_5
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "<simpleType>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v4

    invoke-virtual {v10, v3, v1, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_6
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "<complexType>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;

    move-result-object v4

    invoke-virtual {v10, v3, v1, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_7
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "form"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v4

    invoke-virtual {v10, v3, v1, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_8
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->sizeOfKeyArray()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "<key>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v3, v1, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_9
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->sizeOfKeyrefArray()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "<keyref>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v3, v1, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_a
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->sizeOfUniqueArray()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "<unique>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v3, v1, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_b
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->isSetDefault()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "default"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetDefault()Lorg/apache/xmlbeans/XmlString;

    move-result-object v4

    invoke-virtual {v10, v3, v1, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_c
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->isSetFixed()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "fixed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetFixed()Lorg/apache/xmlbeans/XmlString;

    move-result-object v4

    invoke-virtual {v10, v3, v1, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_d
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->isSetBlock()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "block"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetBlock()Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;

    move-result-object v4

    invoke-virtual {v10, v3, v1, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_e
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->isSetNillable()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "nillable"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetNillable()Lorg/apache/xmlbeans/XmlBoolean;

    move-result-object v4

    invoke-virtual {v10, v3, v1, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_f
    if-eqz v9, :cond_10

    move-object v1, v8

    goto :goto_1

    :cond_10
    move-object v1, v11

    :goto_1
    invoke-virtual {v10, v2, v1, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalElement(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetRef()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v0

    invoke-virtual {v10, v2, v14, v0, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    return-object v11

    :cond_11
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;-><init>()V

    invoke-virtual {v2, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setUserData(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->copyGlobalElementToLocalElement(Lorg/apache/xmlbeans/SchemaGlobalElement;Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;)V

    return-object v2

    :cond_12
    instance-of v2, v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalElement;

    const-string v15, "restriction"

    const-string v7, "extension"

    const-string v6, "#all"

    if-eqz v2, :cond_17

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v3

    const-string v13, "qualified"

    if-eqz v3, :cond_13

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_14
    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findElementFormDefault(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v14

    goto :goto_2

    :cond_15
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_16

    invoke-static {v1, v8}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    goto/16 :goto_6

    :cond_16
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLN(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    goto/16 :goto_6

    :cond_17
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;

    invoke-virtual {v10, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    if-eqz v12, :cond_19

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getSubstitutionGroup()Ljavax/xml/namespace/QName;

    move-result-object v3

    if-eqz v9, :cond_18

    move-object v13, v8

    goto :goto_3

    :cond_18
    move-object v13, v11

    :goto_3
    invoke-virtual {v10, v3, v13, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalElement(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->getRef()Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->setSubstitutionGroup(Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;)V

    :cond_19
    invoke-static {v1, v8}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    move-object/from16 v3, p6

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSubstitutionGroupMembers()[Ljavax/xml/namespace/QName;

    move-result-object v3

    new-instance v13, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v13}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    invoke-virtual {v13, v1}, Lorg/apache/xmlbeans/QNameSetBuilder;->add(Ljavax/xml/namespace/QName;)V

    array-length v11, v3

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v11, :cond_1a

    aget-object v4, v3, v14

    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->addSubstitutionGroupMember(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v13, v4}, Lorg/apache/xmlbeans/QNameSetBuilder;->add(Ljavax/xml/namespace/QName;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_1a
    invoke-static {v13}, Lorg/apache/xmlbeans/QNameSet;->forSpecification(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionRules(Lorg/apache/xmlbeans/QNameSet;Z)V

    sget-object v3, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionNotes(Lorg/apache/xmlbeans/QNameSet;Z)V

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getFinal()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1b

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_1b
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1d

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_5

    :cond_1c
    const/4 v3, 0x0

    goto :goto_5

    :cond_1d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2, v4, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->setFinal(ZZ)V

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getAbstract()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setAbstract(Z)V

    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->setFilename(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v8, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Z)V

    :goto_6
    move-object v11, v1

    move-object v13, v2

    invoke-virtual {v10, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setUserData(Ljava/lang/Object;)V

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getType()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getType()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-eqz v9, :cond_1e

    move-object v2, v8

    goto :goto_7

    :cond_1e
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v10, v1, v2, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v1

    if-nez v1, :cond_1f

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getType()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetType()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v14, 0x1

    invoke-virtual {v10, v2, v4, v3, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    goto :goto_8

    :cond_1f
    const/4 v4, 0x0

    goto :goto_8

    :cond_20
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_8
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;

    move-result-object v2

    if-nez v2, :cond_21

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v2

    const/4 v3, 0x1

    goto :goto_9

    :cond_21
    move v3, v4

    :goto_9
    if-eqz v1, :cond_22

    if-eqz v2, :cond_22

    const-string v14, "src-element.3"

    const/4 v4, 0x0

    invoke-virtual {v10, v14, v4, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    const/4 v14, 0x0

    goto :goto_a

    :cond_22
    move-object v14, v2

    :goto_a
    if-eqz v14, :cond_27

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/StscState;->getCurrentProcessing()[Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v1

    array-length v2, v1

    new-array v4, v2, [Ljavax/xml/namespace/QName;

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v2, :cond_24

    move/from16 v17, v2

    aget-object v2, v1, v5

    move-object/from16 v18, v1

    instance-of v1, v2, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    if-eqz v1, :cond_23

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    aput-object v1, v4, v5

    :cond_23
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    move-object/from16 v1, v18

    goto :goto_b

    :cond_24
    move-object/from16 v1, p6

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-static {v4, v11, v1}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->checkRecursiveGroupReference([Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-eqz v1, :cond_25

    goto :goto_d

    :cond_25
    new-instance v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v10, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-virtual {v5, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContainerField(Lorg/apache/xmlbeans/SchemaField;)V

    if-nez p6, :cond_26

    const/4 v1, 0x0

    goto :goto_c

    :cond_26
    invoke-interface/range {p6 .. p6}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    :goto_c
    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOuterSchemaTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v5, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setGroupReferenceContext([Ljavax/xml/namespace/QName;)V

    move-object/from16 v1, p5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleType(Z)V

    const/16 v17, 0x0

    move-object v1, v5

    move-object v2, v14

    move-object/from16 v3, p1

    const/16 v16, 0x0

    move/from16 v4, p2

    move-object/from16 v19, v5

    move-object/from16 v5, p3

    move-object/from16 v18, v15

    move-object v15, v6

    move-object/from16 v6, p4

    move-object/from16 v20, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-static {v1, v14}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-static {v14}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUserData(Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_e

    :cond_27
    :goto_d
    move-object/from16 v20, v7

    move-object/from16 v18, v15

    const/16 v16, 0x0

    move-object v15, v6

    :goto_e
    if-nez v1, :cond_29

    if-eqz v12, :cond_29

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getSubstitutionGroup()Ljavax/xml/namespace/QName;

    move-result-object v2

    if-eqz v9, :cond_28

    move-object v4, v8

    goto :goto_f

    :cond_28
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v10, v2, v4, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalElement(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    :cond_29
    if-nez v1, :cond_2a

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :cond_2a
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    :try_start_0
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->WSDL_ARRAYTYPE_NAME:Ljavax/xml/namespace/QName;

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    if-eqz v3, :cond_2b

    :try_start_1
    new-instance v4, Lorg/apache/xmlbeans/soap/SOAPArrayType;

    new-instance v2, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-direct {v2, v0}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    invoke-direct {v4, v3, v2}, Lorg/apache/xmlbeans/soap/SOAPArrayType;-><init>(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)V
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    :catch_0
    const-string v2, "soaparray"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v2, v3, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_2b
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v13, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setWsdlArrayType(Lorg/apache/xmlbeans/soap/SOAPArrayType;)V

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->isSetFixed()Z

    move-result v4

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->isSetDefault()Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v4, :cond_2c

    const-string v2, "src-element.1"

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetFixed()Lorg/apache/xmlbeans/XmlString;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move/from16 v4, v16

    :cond_2c
    const/4 v2, 0x4

    invoke-virtual {v13, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v13, v11, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setNameAndTypeRef(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getNillable()Z

    move-result v1

    invoke-virtual {v13, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setNillable(Z)V

    if-eqz v4, :cond_2d

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getFixed()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_2d
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getDefault()Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-virtual {v13, v1, v4, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setDefault(Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;)V

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getBlock()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2e

    invoke-virtual {v1, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_12

    :cond_2e
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_30

    check-cast v1, Ljava/util/List;

    move-object/from16 v2, v20

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v2, v18

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "substitution"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_12

    :cond_2f
    move/from16 v1, v16

    goto :goto_12

    :cond_30
    move/from16 v1, v16

    move v2, v1

    move v4, v2

    :goto_12
    invoke-virtual {v13, v4, v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setBlock(ZZZ)V

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->sizeOfKeyArray()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->sizeOfKeyrefArray()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->sizeOfUniqueArray()I

    move-result v2

    add-int/2addr v1, v2

    new-array v2, v1, [Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getKeyArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

    move-result-object v3

    move/from16 v4, v16

    move v5, v4

    move v6, v5

    :goto_13
    array-length v7, v3

    if-ge v4, v7, :cond_32

    aget-object v7, v3, v4

    invoke-static {v7, v8, v9}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateIdentityConstraint(Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    move-result-object v7

    aput-object v7, v2, v5

    if-eqz v7, :cond_31

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setConstraintCategory(I)V

    goto :goto_14

    :cond_31
    const/4 v10, 0x1

    move v6, v10

    :goto_14
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_32
    const/4 v10, 0x1

    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getUniqueArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

    move-result-object v3

    move/from16 v4, v16

    :goto_15
    array-length v7, v3

    if-ge v4, v7, :cond_34

    aget-object v7, v3, v4

    invoke-static {v7, v8, v9}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateIdentityConstraint(Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    move-result-object v7

    aput-object v7, v2, v5

    if-eqz v7, :cond_33

    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setConstraintCategory(I)V

    goto :goto_16

    :cond_33
    move v6, v10

    :goto_16
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_34
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->getKeyrefArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;

    move-result-object v0

    move/from16 v4, v16

    :goto_17
    array-length v3, v0

    if-ge v4, v3, :cond_36

    aget-object v3, v0, v4

    invoke-static {v3, v8, v9}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateIdentityConstraint(Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    move-result-object v3

    aput-object v3, v2, v5

    if-eqz v3, :cond_35

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setConstraintCategory(I)V

    goto :goto_18

    :cond_35
    move v6, v10

    :goto_18
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_36
    if-nez v6, :cond_38

    new-array v0, v1, [Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move/from16 v4, v16

    :goto_19
    if-ge v4, v1, :cond_37

    aget-object v3, v2, v4

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->getRef()Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move-result-object v3

    aput-object v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_37
    invoke-virtual {v13, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V

    :cond_38
    return-object v13

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_39

    :try_start_3
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1a

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_1a
    throw v3
.end method

.method private static translateGlobalComplexType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 10

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "global type"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "missing-name"

    invoke-virtual {v0, p2, p1, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v2

    :cond_0
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "name"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->xgetName()Lorg/apache/xmlbeans/XmlNCName;

    move-result-object v4

    const-string v5, "invalid-value"

    invoke-virtual {v0, v5, v3, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_1
    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->isReservedTypeName(Ljavax/xml/namespace/QName;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "reserved-type-name"

    invoke-virtual {v0, p2, p1, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v2

    :cond_2
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v9, p3

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFilename(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setName(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUserData(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static translateGlobalSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 10

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "global type"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "missing-name"

    invoke-virtual {v0, p2, p1, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v2

    :cond_0
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "name"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->xgetName()Lorg/apache/xmlbeans/XmlNCName;

    move-result-object v4

    const-string v5, "invalid-value"

    invoke-virtual {v0, v5, v3, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_1
    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->isReservedTypeName(Ljavax/xml/namespace/QName;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "reserved-type-name"

    invoke-virtual {v0, p2, p1, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v2

    :cond_2
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleType(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v9, p3

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFilename(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setName(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUserData(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static translateIdentityConstraint(Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;
    .locals 8

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;->getSelector()Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;->getSelector()Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;->getXpath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->checkXPathSyntax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;->getSelector()Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;->xgetXpath()Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector$Xpath;

    move-result-object p0

    const-string p2, "c-selector-xpath"

    invoke-virtual {v0, p2, p1, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v2

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;->getFieldArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;->getXpath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->checkXPathSyntax(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;->getXpath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;->xgetXpath()Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field$Xpath;

    move-result-object p1

    const-string p2, "c-fields-xpaths"

    invoke-virtual {v0, p2, p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setName(Ljavax/xml/namespace/QName;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;->getSelector()Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;->getXpath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setSelector(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setUserData(Ljava/lang/Object;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v5

    :try_start_0
    invoke-interface {v5, p2}, Lorg/apache/xmlbeans/XmlCursor;->getAllNamespaces(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    const-string v5, ""

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setNSMap(Ljava/util/Map;)V

    array-length p2, v1

    new-array v5, p2, [Ljava/lang/String;

    :goto_2
    if-ge v4, p2, :cond_4

    aget-object v6, v1, v4

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;->getXpath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setFields([Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->buildPaths()V
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addIdConstraint(Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setFilename(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->findIdConstraint(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invalid-xpath"

    invoke-virtual {v0, p2, p1, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v5, :cond_5

    :try_start_3
    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1
.end method

.method public static translateModelGroup(Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;
    .locals 11

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const-string v2, "model group"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "missing-name"

    invoke-virtual {v0, v3, v2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v3

    new-instance v10, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    invoke-direct {v10, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-static {v3, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object v8

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findElementFormDefault(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findAttributeFormDefault(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    move-result-object v4

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    if-nez v3, :cond_1

    move-object v6, v1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_0
    if-nez v4, :cond_2

    move-object v7, v1

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->getUserData(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v10

    move-object v1, v5

    move-object v2, p1

    move v3, p2

    move-object v4, v6

    move-object v5, v7

    move v6, p3

    move-object v7, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->init(Ljavax/xml/namespace/QName;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->findFilename(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->setFilename(Ljava/lang/String;)V

    return-object v10
.end method

.method public static translateUseCode(Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;)I
    .locals 2

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "optional"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "required"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v1, "prohibited"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static uriMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
