.class public Lorg/xmlresolver/loaders/XmlLoader$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xmlresolver/loaders/XmlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Lorg/xmlresolver/logging/ResolverLogger;

.field public f:Lorg/xml/sax/Locator;

.field public final g:Lorg/xmlresolver/ResolverConfiguration;

.field public final h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/xmlresolver/catalog/entry/Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lorg/xmlresolver/catalog/entry/EntryCatalog;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "group"

    const-string v2, "public"

    const-string v3, "system"

    const-string v4, "rewriteSystem"

    const-string v5, "delegatePublic"

    const-string v6, "delegateSystem"

    const-string v7, "uri"

    const-string v8, "rewriteURI"

    const-string v9, "delegateURI"

    const-string v10, "nextCatalog"

    const-string v11, "uriSuffix"

    const-string v12, "systemSuffix"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/xmlresolver/loaders/XmlLoader$a;->l:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "doctype"

    const-string v2, "document"

    const-string v3, "dtddecl"

    const-string v4, "entity"

    const-string v5, "linktype"

    const-string v6, "notation"

    const-string v7, "sgmldecl"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/xmlresolver/loaders/XmlLoader$a;->m:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Z)V
    .locals 3

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->f:Lorg/xml/sax/Locator;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->h:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->i:Ljava/util/Stack;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->j:Ljava/util/Stack;

    iput-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iput-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->g:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->e:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lorg/xmlresolver/catalog/entry/EntryCatalog;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "id"

    const-string v4, ""

    invoke-interface {v2, v4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "name"

    invoke-interface {v2, v4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "uri"

    invoke-interface {v2, v4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "catalog"

    invoke-interface {v2, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v5, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->j:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URI;

    const-string v6, "xml:base"

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/xmlresolver/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    :cond_0
    move-object v12, v5

    iget-object v5, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->i:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    new-instance v5, Lorg/xmlresolver/catalog/entry/EntryNull;

    iget-object v6, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->g:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v5, v6}, Lorg/xmlresolver/catalog/entry/EntryNull;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v11, "uriSuffix"

    const-string v14, "system"

    const-string v15, "public"

    move/from16 v16, v13

    const/16 v17, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "dtddecl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "nextCatalog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v17, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "doctype"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "notation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "delegateSystem"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0xe

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "delegatePublic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "linktype"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v17, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "document"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "delegateURI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "group"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x8

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_0

    :cond_c
    const/16 v17, 0x7

    goto :goto_0

    :sswitch_c
    const-string v3, "rewriteURI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    :cond_d
    const/16 v17, 0x6

    goto :goto_0

    :sswitch_d
    const-string v3, "systemSuffix"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_0

    :cond_e
    const/16 v17, 0x5

    goto :goto_0

    :sswitch_e
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_0

    :cond_f
    const/16 v17, 0x4

    goto :goto_0

    :sswitch_f
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_0

    :cond_10
    const/16 v17, 0x3

    goto :goto_0

    :sswitch_10
    const-string v3, "sgmldecl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_0

    :cond_11
    const/16 v17, 0x2

    goto :goto_0

    :sswitch_11
    const-string v3, "entity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_0

    :cond_12
    const/16 v17, 0x1

    goto :goto_0

    :sswitch_12
    const-string v3, "rewriteSystem"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_0

    :cond_13
    const/16 v17, 0x0

    :goto_0
    const-string v3, "uriStartString"

    const-string v6, "rewritePrefix"

    const-string v13, "systemIdStartString"

    move-object/from16 v18, v5

    const-string v5, "publicId"

    packed-switch v17, :pswitch_data_0

    move/from16 v13, v16

    move-object/from16 v5, v18

    :goto_1
    const/4 v14, 0x0

    goto/16 :goto_6

    :pswitch_0
    invoke-interface {v2, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v3, v12, v7, v1, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addDtdDecl(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDtddecl;

    move-result-object v5

    goto :goto_2

    :pswitch_1
    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v1, v12, v7, v10}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addNextCatalog(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryNextCatalog;

    move-result-object v5

    goto :goto_2

    :pswitch_2
    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v1, v12, v7, v8, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addDoctype(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDoctype;

    move-result-object v5

    goto :goto_2

    :pswitch_3
    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v1, v12, v7, v8, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addNotation(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryNotation;

    move-result-object v5

    goto :goto_2

    :pswitch_4
    invoke-interface {v2, v4, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v3, v12, v7, v1, v10}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addDelegateSystem(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;

    move-result-object v5

    goto :goto_2

    :pswitch_5
    invoke-interface {v2, v4, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v3, v12, v7, v1, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addUriSuffix(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryUriSuffix;

    move-result-object v5

    goto :goto_2

    :pswitch_6
    const-string v1, "publicIdStartString"

    invoke-interface {v2, v4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v5, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-object v6, v12

    move-object v9, v10

    move/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addDelegatePublic(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;

    move-result-object v5

    :goto_2
    move/from16 v13, v16

    goto :goto_1

    :pswitch_7
    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v1, v12, v7, v8, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addLinktype(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryLinktype;

    move-result-object v5

    goto :goto_2

    :pswitch_8
    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v1, v12, v7, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addDocument(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDocument;

    move-result-object v5

    goto :goto_2

    :pswitch_9
    invoke-interface {v2, v4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v3, v12, v7, v1, v10}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addDelegateUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDelegateUri;

    move-result-object v5

    goto :goto_2

    :pswitch_a
    const-string v3, "prefer"

    invoke-interface {v2, v4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->e:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prefer on "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is neither \'system\' nor \'public\': "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    new-array v3, v14, [Ljava/lang/Object;

    const-string v6, "error"

    invoke-interface {v5, v6, v1, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_14
    const/4 v14, 0x0

    :goto_3
    move v13, v4

    goto :goto_4

    :cond_15
    const/4 v14, 0x0

    move/from16 v13, v16

    :goto_4
    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v1, v12, v7, v13}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addGroup(Ljava/net/URI;Ljava/lang/String;Z)Lorg/xmlresolver/catalog/entry/EntryGroup;

    move-result-object v5

    goto/16 :goto_6

    :pswitch_b
    const/4 v14, 0x0

    const-string v1, "nature"

    const-string v3, "http://www.rddl.org/"

    invoke-interface {v2, v3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "purpose"

    invoke-interface {v2, v3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v5, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-object v6, v12

    invoke-virtual/range {v5 .. v11}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryUri;

    move-result-object v5

    goto :goto_5

    :pswitch_c
    const/4 v14, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v4, v12, v7, v1, v3}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addRewriteUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryRewriteUri;

    move-result-object v5

    goto :goto_5

    :pswitch_d
    const/4 v14, 0x0

    const-string v1, "systemIdSuffix"

    invoke-interface {v2, v4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v3, v12, v7, v1, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addSystemSuffix(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntrySystemSuffix;

    move-result-object v5

    goto :goto_5

    :pswitch_e
    const/4 v14, 0x0

    const-string v1, "systemId"

    invoke-interface {v2, v4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v3, v12, v7, v1, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addSystem(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntrySystem;

    move-result-object v5

    goto :goto_5

    :pswitch_f
    const/4 v14, 0x0

    invoke-interface {v2, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v5, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-object v6, v12

    move/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addPublic(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlresolver/catalog/entry/EntryPublic;

    move-result-object v5

    :goto_5
    move/from16 v13, v16

    goto :goto_6

    :pswitch_10
    const/4 v14, 0x0

    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v1, v12, v7, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addSgmlDecl(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntrySgmldecl;

    move-result-object v5

    goto :goto_5

    :pswitch_11
    const/4 v14, 0x0

    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v1, v12, v7, v8, v9}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addEntity(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryEntity;

    move-result-object v5

    goto :goto_5

    :pswitch_12
    const/4 v14, 0x0

    invoke-interface {v2, v4, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {v4, v12, v7, v1, v3}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->addRewriteSystem(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;

    move-result-object v5

    goto :goto_5

    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_17

    const-string v1, "http://xmlresolver.org/ns/catalog"

    invoke-interface {v2, v14}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v2, v14}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v14}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->h:Ljava/util/Stack;

    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->j:Ljava/util/Stack;

    invoke-virtual {v1, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lorg/xmlresolver/loaders/XmlLoader$a;->i:Ljava/util/Stack;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c1cc925 -> :sswitch_12
        -0x4d621c1d -> :sswitch_11
        -0x4d15dde3 -> :sswitch_10
        -0x3a424d97 -> :sswitch_f
        -0x34e38dd1 -> :sswitch_e
        -0x28f949a0 -> :sswitch_d
        -0x265ae3c0 -> :sswitch_c
        0x1c56c -> :sswitch_b
        0x5e0f67f -> :sswitch_a
        0x7bec1a7 -> :sswitch_9
        0x335cd11b -> :sswitch_8
        0x473cb234 -> :sswitch_7
        0x48fb844e -> :sswitch_6
        0x4c3de7dd -> :sswitch_5
        0x4e5a4414 -> :sswitch_4
        0x5e145c02 -> :sswitch_3
        0x6d02b872 -> :sswitch_2
        0x71b2c5a6 -> :sswitch_1
        0x7591787e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->h:Ljava/util/Stack;

    new-instance v1, Lorg/xmlresolver/catalog/entry/EntryNull;

    iget-object v2, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->g:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v1, v2}, Lorg/xmlresolver/catalog/entry/EntryNull;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->i:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->h:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->j:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->i:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/xmlresolver/loaders/XmlLoader;->getLoaderResolver()Lorg/xmlresolver/Resolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/Resolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->f:Lorg/xml/sax/Locator;

    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->setLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const-string v1, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    const-string v2, "error"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "catalog"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "id"

    const-string p3, ""

    invoke-interface {p4, p3, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "prefer"

    invoke-interface {p4, p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->i:Ljava/util/Stack;

    const-string v1, "public"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->e:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefer on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is neither \'system\' nor \'public\': "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, p2, p3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance p2, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iget-object p3, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->g:Lorg/xmlresolver/ResolverConfiguration;

    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    iget-object v1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p2, p3, v0, p1, v1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    iput-object p2, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iget-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->h:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->f:Lorg/xml/sax/Locator;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    invoke-virtual {p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->setLocator(Lorg/xml/sax/Locator;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->e:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Catalog document is not an XML Catalog (ignored): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v2, p2, p3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iget-object p2, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->g:Lorg/xmlresolver/ResolverConfiguration;

    iget-object p3, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->j:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/net/URI;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v3}, Lorg/xmlresolver/catalog/entry/EntryCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->k:Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iget-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->h:Ljava/util/Stack;

    new-instance p2, Lorg/xmlresolver/catalog/entry/EntryNull;

    iget-object p3, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->g:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {p2, p3}, Lorg/xmlresolver/catalog/entry/EntryNull;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->j:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URI;

    const-string p2, "xml:base"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/xmlresolver/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    :cond_3
    iget-object p2, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->j:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->i:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    iget-object p3, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->h:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {p3}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object p3

    sget-object v0, Lorg/xmlresolver/catalog/entry/Entry$Type;->NULL:Lorg/xmlresolver/catalog/entry/Entry$Type;

    if-ne p3, v0, :cond_5

    invoke-virtual {p0}, Lorg/xmlresolver/loaders/XmlLoader$a;->c()V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "Unexpected catalog element (ignored): "

    if-eqz p3, :cond_8

    sget-object p1, Lorg/xmlresolver/loaders/XmlLoader$a;->l:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lorg/xmlresolver/loaders/XmlLoader$a;->m:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->e:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v2, p2, p3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/xmlresolver/loaders/XmlLoader$a;->c()V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p0, p2, p4}, Lorg/xmlresolver/loaders/XmlLoader$a;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_2

    :cond_8
    const-string p3, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lorg/xmlresolver/loaders/XmlLoader$a;->m:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p2, p4}, Lorg/xmlresolver/loaders/XmlLoader$a;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader$a;->e:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v2, p2, p3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/xmlresolver/loaders/XmlLoader$a;->c()V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lorg/xmlresolver/loaders/XmlLoader$a;->c()V

    :goto_2
    return-void
.end method
