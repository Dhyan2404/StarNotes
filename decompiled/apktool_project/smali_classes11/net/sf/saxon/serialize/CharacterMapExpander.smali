.class public Lnet/sf/saxon/serialize/CharacterMapExpander;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/serialize/CharacterMap;

.field public f:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/CharacterMapExpander;->f:Z

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p3, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/serialize/CharacterMapExpander;->e:Lnet/sf/saxon/serialize/CharacterMap;

    iget-boolean v1, p0, Lnet/sf/saxon/serialize/CharacterMapExpander;->f:Z

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/serialize/CharacterMap;->map(Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    if-eq v0, p1, :cond_0

    or-int/lit16 p1, p3, 0x100

    and-int/lit8 p3, p1, -0x5

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, v0, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public getCharacterMap()Lnet/sf/saxon/serialize/CharacterMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/CharacterMapExpander;->e:Lnet/sf/saxon/serialize/CharacterMap;

    return-object p0
.end method

.method public setCharacterMap(Lnet/sf/saxon/serialize/CharacterMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/serialize/CharacterMapExpander;->e:Lnet/sf/saxon/serialize/CharacterMap;

    return-void
.end method

.method public setUseNullMarkers(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/CharacterMapExpander;->f:Z

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Lnet/sf/saxon/om/AttributeMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lnet/sf/saxon/serialize/CharacterMapExpander;->e:Lnet/sf/saxon/serialize/CharacterMap;

    iget-boolean v6, v0, Lnet/sf/saxon/serialize/CharacterMapExpander;->f:Z

    invoke-virtual {v5, v4, v6}, Lnet/sf/saxon/serialize/CharacterMap;->map(Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    if-eq v5, v4, :cond_0

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v4

    or-int/lit16 v4, v4, 0x100

    and-int/lit8 v11, v4, -0x5

    new-instance v4, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v7

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v10

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v12, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-static {v1}, Lnet/sf/saxon/om/SequenceTool;->attributeMapFromList(Ljava/util/List;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v15

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    invoke-interface/range {v12 .. v18}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
