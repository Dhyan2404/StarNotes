.class public Lnet/sf/saxon/serialize/SerializationParamsHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2010/xslt-xquery-serialization"


# instance fields
.field public a:Ljava/util/Properties;

.field public b:Lnet/sf/saxon/serialize/CharacterMap;

.field public c:Lnet/sf/saxon/s9api/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/serialize/SerializationParamsHandler;->a:Ljava/util/Properties;

    return-void
.end method

.method public static a(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In serialization parameters, attribute @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is missing on element "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs b(Lnet/sf/saxon/om/NodeInfo;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In serialization parameters, attribute @"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must not appear on element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SEPM0017"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public getCharacterMap()Lnet/sf/saxon/serialize/CharacterMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/SerializationParamsHandler;->b:Lnet/sf/saxon/serialize/CharacterMap;

    return-object p0
.end method

.method public getSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;
    .locals 4

    new-instance v0, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/serialize/SerializationParamsHandler;->b:Lnet/sf/saxon/serialize/CharacterMap;

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, ""

    const-string v3, "charMap"

    invoke-direct {v1, v2, v2, v3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sf/saxon/serialize/SerializationParamsHandler;->b:Lnet/sf/saxon/serialize/CharacterMap;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    iget-object v1, p0, Lnet/sf/saxon/serialize/SerializationParamsHandler;->a:Ljava/util/Properties;

    const-string v2, "use-character-maps"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lnet/sf/saxon/serialize/SerializationProperties;

    iget-object p0, p0, Lnet/sf/saxon/serialize/SerializationParamsHandler;->a:Ljava/util/Properties;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    return-object v1
.end method

.method public setLocator(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/serialize/SerializationParamsHandler;->c:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public setSerializationParams(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lnet/sf/saxon/serialize/SerializationParamsHandler;->a:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, v1, Lnet/sf/saxon/serialize/SerializationParamsHandler;->a:Ljava/util/Properties;

    :cond_0
    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/tree/util/Navigator;->getOutermostElement(Lnet/sf/saxon/om/TreeInfo;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    :goto_0
    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v4, "serialization-parameters"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v4, "http://www.w3.org/2010/xslt-xquery-serialization"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v2, v0}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->b(Lnet/sf/saxon/om/NodeInfo;[Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v7, 0x3

    invoke-interface {v2, v7, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-static {v9}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    const-string v15, "SEPM0017"

    if-nez v10, :cond_d

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v14, ""

    if-eqz v10, :cond_2

    move-object v13, v14

    goto :goto_2

    :cond_2
    move-object v13, v0

    :goto_2
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "use-character-maps"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v9, v0}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->b(Lnet/sf/saxon/om/NodeInfo;[Ljava/lang/String;)V

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v9, v7, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    new-instance v9, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v9}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    :goto_3
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v11, "character"

    const-string v12, "map-string"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->b(Lnet/sf/saxon/om/NodeInfo;[Ljava/lang/String;)V

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v13

    const-string v14, "character-map"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    :cond_3
    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    :cond_4
    invoke-static {v10, v11}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->a(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v12}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->a(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v12, v11}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v13

    const-wide/16 v16, 0x1

    cmp-long v11, v13, v16

    if-nez v11, :cond_6

    invoke-virtual {v12}, Lnet/sf/saxon/value/StringValue;->getContent()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v11

    invoke-virtual {v9, v11, v10}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In the serialization parameters, the character map contains two entries for the character \\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x10000

    add-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SEPM0018"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In the serialization parameters, the value of @character in the character map must be a single Unicode character"

    invoke-direct {v0, v1, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid child of use-character-maps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-static {v2}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v10

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-direct {v0, v10, v9}, Lnet/sf/saxon/serialize/CharacterMap;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/z/IntHashMap;)V

    iput-object v0, v1, Lnet/sf/saxon/serialize/SerializationParamsHandler;->b:Lnet/sf/saxon/serialize/CharacterMap;

    goto :goto_6

    :cond_9
    const-string v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->b(Lnet/sf/saxon/om/NodeInfo;[Ljava/lang/String;)V

    invoke-static {v9, v0}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->a(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v10, v1, Lnet/sf/saxon/serialize/SerializationParamsHandler;->a:Ljava/util/Properties;

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v18
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v13

    move-object v3, v13

    move-object v13, v0

    move-object v5, v14

    move-object/from16 v14, v16

    move-object v7, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    :try_start_1
    invoke-static/range {v10 .. v16}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setSerializationProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZLnet/sf/saxon/Configuration;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v13

    move-object v5, v14

    move-object v7, v15

    :goto_4
    const-string v10, "XQST0109"

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "SEPM0016"

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_5

    :cond_a
    throw v0

    :cond_b
    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_6
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x3

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown serialization parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lnet/sf/saxon/trans/Err;->depict(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lnet/sf/saxon/serialize/SerializationParamsHandler;->c:Lnet/sf/saxon/s9api/Location;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw v0

    :cond_d
    move-object v7, v15

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serialization parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is in no namespace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicated serialization parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SEPM0019"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void

    :cond_10
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Serialization params: element namespace must be http://www.w3.org/2010/xslt-xquery-serialization"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Serialization params: element name must be \'serialization-parameters"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Serialization params: node must be a document or element node"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
