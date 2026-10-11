.class public Lnet/sf/saxon/event/ReceivingContentHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/DTDHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/event/PipelineConfiguration;

.field public f:Lnet/sf/saxon/event/Receiver;

.field public g:Z

.field public h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

.field public i:Z

.field public j:Lnet/sf/saxon/s9api/Location;

.field public k:[C

.field public l:I

.field public m:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lnet/sf/saxon/om/NamespaceMap;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/NodeName;",
            ">;>;"
        }
    .end annotation
.end field

.field public u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/NodeName;",
            ">;"
        }
    .end annotation
.end field

.field public v:I

.field public w:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->g:Z

    new-instance v1, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-direct {v1, v2}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;-><init>(Lorg/xml/sax/Locator;)V

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    const/16 v1, 0x200

    new-array v1, v1, [C

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->k:[C

    iput v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->l:I

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->m:Ljava/util/Stack;

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->o:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->p:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->q:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->r:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->s:Z

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->t:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->u:Ljava/util/HashMap;

    iput v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->v:I

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->m:Ljava/util/Stack;

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->l:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->k:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Lnet/sf/saxon/str/StringTool;->compress([CIIZ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    iget-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->j:Lnet/sf/saxon/s9api/Location;

    iget-boolean v3, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->r:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x400

    :goto_0
    invoke-interface {v0, p1, v1, v3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iput v2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->l:I

    iput-boolean v2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->r:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NodeName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->u:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->t:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->u:Ljava/util/HashMap;

    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeName;

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {p0, p2}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    invoke-static {p3}, Lnet/sf/saxon/om/NameChecker;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-direct {v1, p0, p1, p2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Parser configuration problem: namespace reporting is not enabled"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Saxon requires an XML parser that reports the QName of each element"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lorg/xml/sax/Attributes;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/AttributeMap;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/xml/sax/ext/Attributes2;

    invoke-interface/range {p1 .. p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v3, :cond_15

    invoke-interface {v1, v13}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v13}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v13}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "xmlns"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0x3a

    const/4 v9, 0x5

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v9, :cond_14

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_1

    goto/16 :goto_a

    :cond_1
    const/4 v6, -0x1

    const/4 v14, 0x1

    const/16 v15, 0x40

    if-eqz v2, :cond_8

    move-object v9, v1

    check-cast v9, Lorg/xml/sax/ext/Attributes2;

    invoke-interface {v9, v13}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v9

    if-nez v9, :cond_8

    iget v9, v0, Lnet/sf/saxon/event/ReceivingContentHandler;->v:I

    if-ne v9, v6, :cond_2

    goto/16 :goto_a

    :cond_2
    if-ne v9, v14, :cond_3

    const/16 v15, 0x48

    :cond_3
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/event/ReceivingContentHandler;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v8

    invoke-virtual {v8, v5}, Lnet/sf/saxon/om/NamePool;->suggestPrefixForURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    iget-object v9, v0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v9}, Lnet/sf/saxon/om/NamespaceMap;->getURIsAsArray()[Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    :goto_1
    array-length v12, v9

    if-ge v6, v12, :cond_5

    aget-object v12, v9, v6

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v8, v0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v8}, Lnet/sf/saxon/om/NamespaceMap;->getPrefixArray()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-nez v8, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lnet/sf/saxon/trans/Err;->abbreviateURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    const-string v12, ""

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "..."

    const-string v12, "."

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_6
    :goto_2
    iget-object v6, v0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v6, v8}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, v0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v6, v8}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "z"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_7
    iget-object v6, v0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v6, v8, v5}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v6

    iput-object v6, v0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/event/ReceivingContentHandler;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v6

    invoke-virtual {v6, v8, v5}, Lnet/sf/saxon/om/NamePool;->suggestPrefix(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {v1, v13}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v4}, Lnet/sf/saxon/event/ReceivingContentHandler;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-interface {v1, v13}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    iget-boolean v8, v0, Lnet/sf/saxon/event/ReceivingContentHandler;->p:Z

    const-string v12, "IDREF"

    const-string v9, "ID"

    const-string v14, "IDREFS"

    if-eqz v8, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_3
    const/4 v9, -0x1

    goto :goto_4

    :sswitch_0
    const-string v8, "ENTITY"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    const/4 v9, 0x6

    goto :goto_4

    :sswitch_1
    const-string v8, "NMTOKENS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    const/4 v9, 0x5

    goto :goto_4

    :sswitch_2
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_3

    :cond_b
    const/4 v9, 0x4

    goto :goto_4

    :sswitch_3
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_3

    :cond_c
    const/4 v9, 0x3

    goto :goto_4

    :sswitch_4
    const-string v8, "ENTITIES"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_3

    :cond_d
    const/4 v9, 0x2

    goto :goto_4

    :sswitch_5
    const-string v8, "NMTOKEN"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_3

    :cond_e
    const/4 v9, 0x1

    goto :goto_4

    :sswitch_6
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_3

    :cond_f
    const/4 v9, 0x0

    :goto_4
    packed-switch v9, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->ENTITY:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_7

    :pswitch_1
    sget-object v6, Lnet/sf/saxon/type/BuiltInListType;->NMTOKENS:Lnet/sf/saxon/type/BuiltInListType;

    goto :goto_7

    :pswitch_2
    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->IDREF:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_7

    :pswitch_3
    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->ID:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_7

    :pswitch_4
    sget-object v6, Lnet/sf/saxon/type/BuiltInListType;->ENTITIES:Lnet/sf/saxon/type/BuiltInListType;

    goto :goto_7

    :pswitch_5
    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->NMTOKEN:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_7

    :pswitch_6
    sget-object v6, Lnet/sf/saxon/type/BuiltInListType;->IDREFS:Lnet/sf/saxon/type/BuiltInListType;

    goto :goto_7

    :cond_10
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_5
    const/16 v16, -0x1

    goto :goto_6

    :sswitch_7
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_5

    :cond_11
    const/16 v16, 0x2

    goto :goto_6

    :sswitch_8
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_5

    :cond_12
    const/16 v16, 0x1

    goto :goto_6

    :sswitch_9
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_5

    :cond_13
    const/16 v16, 0x0

    :goto_6
    packed-switch v16, :pswitch_data_1

    :goto_7
    move v9, v15

    goto :goto_9

    :pswitch_7
    or-int/lit16 v4, v15, 0x1000

    goto :goto_8

    :pswitch_8
    or-int/lit16 v4, v15, 0x800

    :goto_8
    move v9, v4

    :goto_9
    new-instance v12, Lnet/sf/saxon/om/AttributeInfo;

    move-object v4, v12

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_15
    invoke-static {v11}, Lnet/sf/saxon/om/SequenceTool;->attributeMapFromList(Ljava/util/List;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7f89aa25 -> :sswitch_6
        -0x59b00886 -> :sswitch_5
        -0x4ea5c83f -> :sswitch_4
        0x91b -> :sswitch_3
        0x424d978 -> :sswitch_2
        0x23aef819 -> :sswitch_1
        0x7a30d7e3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7f89aa25 -> :sswitch_9
        0x91b -> :sswitch_8
        0x424d978 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public characters([CII)V
    .locals 4

    :goto_0
    iget v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->l:I

    add-int v1, v0, p3

    iget-object v2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->k:[C

    array-length v3, v2

    if-le v1, v3, :cond_0

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->k:[C

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->l:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->l:I

    iget-boolean p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {p1}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->j:Lnet/sf/saxon/s9api/Location;

    :cond_1
    return-void
.end method

.method public comment([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lnet/sf/saxon/event/ReceivingContentHandler;->a(Z)V

    iget-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    const/4 p2, 0x0

    invoke-interface {v0, p1, p0, p2}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endCDATA()V
    .locals 0

    return-void
.end method

.method public endDTD()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->g:Z

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lnet/sf/saxon/event/ReceivingContentHandler;->a(Z)V

    iget-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    iget-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/sf/saxon/trans/QuitParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    :catch_1
    :goto_0
    return-void

    :catch_2
    move-exception v0

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p1, 0x1

    :try_start_0
    iget-boolean p2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->s:Z

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    invoke-direct {p0, p2}, Lnet/sf/saxon/event/ReceivingContentHandler;->a(Z)V

    iget-object p2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    iget v0, p2, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    sub-int/2addr v0, p1

    iput v0, p2, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    iget-object p2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p2}, Lnet/sf/saxon/event/Receiver;->endElement()V
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p3, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->s:Z

    iget-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->m:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->m:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/NamespaceMap;

    iput-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    :catch_1
    move-exception p2

    iget-object p3, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {p2, p3}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->e:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    new-instance p3, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {p3, p2}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p0, p3}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_1
    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->w:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->e:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->e:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getReceiver()Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/ReceivingContentHandler;->characters([CII)V

    :cond_0
    return-void
.end method

.method public isIgnoringIgnorableWhitespace()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->o:Z

    return p0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lnet/sf/saxon/event/ReceivingContentHandler;->a(Z)V

    iget-boolean v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->g:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lnet/sf/saxon/event/ReceivingContentHandler;->comment([CII)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->q:Z

    if-eqz v2, :cond_2

    const-string v2, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->r:Z

    return-void

    :cond_1
    const-string v0, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->r:Z

    return-void

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/value/Whitespace;->removeLeadingWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-interface {v0, p1, p2, p0, v1}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid processing instruction name ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->e:Lnet/sf/saxon/event/PipelineConfiguration;

    iput-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->o:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->p:Z

    iput v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->l:I

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->m:Ljava/util/Stack;

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    iget-object v2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->m:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-direct {v1, v2}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;-><init>(Lorg/xml/sax/Locator;)V

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->q:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->r:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->i:Z

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;-><init>(Lorg/xml/sax/Locator;)V

    iput-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    iget-boolean p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->i:Z

    if-nez p1, :cond_0

    iput-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->j:Lnet/sf/saxon/s9api/Location;

    :cond_0
    return-void
.end method

.method public setIgnoreIgnorableWhitespace(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->o:Z

    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 4

    iput-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->e:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->o:Z

    sget-object v1, Lnet/sf/saxon/lib/Feature;->RETAIN_DTD_ATTRIBUTE_TYPES:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->p:Z

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->isExpandAttributeDefaults()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->v:I

    goto :goto_1

    :cond_1
    sget-object v1, Lnet/sf/saxon/lib/Feature;->MARK_DEFAULTED_ATTRIBUTES:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->v:I

    :cond_2
    :goto_1
    sget-object v1, Lnet/sf/saxon/lib/Feature;->USE_PI_DISABLE_OUTPUT_ESCAPING:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->q:Z

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/lib/ParseOptions;->isLineNumbering()Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->i:Z

    return-void
.end method

.method public setReceiver(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startCDATA()V
    .locals 0

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->g:Z

    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->l:I

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->m:Ljava/util/Stack;

    iget-object v2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    iget-object v2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->e:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-interface {v1, v2}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iget-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {v1}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    iget-object v2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {v2}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v1}, Lnet/sf/saxon/event/Receiver;->open()V

    iget-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v1, v0}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/QuitParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    new-instance v1, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XmlProcessingException;->asWarning()Lnet/sf/saxon/trans/XmlProcessingException;

    move-result-object v1

    invoke-interface {p0, v1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lnet/sf/saxon/event/ReceivingContentHandler;->a(Z)V

    const v7, 0x80040

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/ReceivingContentHandler;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    iget-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {p0, p4, p1}, Lnet/sf/saxon/event/ReceivingContentHandler;->c(Lorg/xml/sax/Attributes;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v4

    iget-object v1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v3

    iget-object v5, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    iget-object v6, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    iget p2, p1, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    add-int/2addr p2, v0

    iput p2, p1, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    iget-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->m:Ljava/util/Stack;

    iget-object p2, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->s:Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->w:Ljava/util/Stack;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->w:Ljava/util/Stack;

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->w:Ljava/util/Stack;

    iget-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    iget v0, v0, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->bind(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->n:Lnet/sf/saxon/om/NamespaceMap;

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p4, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    if-eqz p4, :cond_0

    :try_start_0
    new-instance p4, Ljava/net/URI;

    invoke-direct {p4, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/net/URI;->isAbsolute()Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->h:Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    invoke-virtual {p4}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->getSystemId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-static {p3, p4}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p4

    invoke-virtual {p4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p3, p2}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
