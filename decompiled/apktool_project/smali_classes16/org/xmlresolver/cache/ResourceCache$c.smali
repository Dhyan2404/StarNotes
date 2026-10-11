.class public Lorg/xmlresolver/cache/ResourceCache$c;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xmlresolver/cache/ResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public e:Z

.field public f:Ljava/net/URI;

.field public final synthetic g:Lorg/xmlresolver/cache/ResourceCache;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/cache/ResourceCache;Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lorg/xmlresolver/cache/ResourceCache$c;->g:Lorg/xmlresolver/cache/ResourceCache;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/xmlresolver/cache/ResourceCache$c;->e:Z

    iput-object p2, p0, Lorg/xmlresolver/cache/ResourceCache$c;->f:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lorg/xmlresolver/cache/ResourceCache$c;->f:Ljava/net/URI;

    return-void
.end method

.method public startDocument()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xmlresolver/cache/ResourceCache$c;->e:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iput-boolean v4, v0, Lorg/xmlresolver/cache/ResourceCache$c;->e:Z

    return-void

    :cond_0
    const-string v3, "catalog"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-boolean v3, v0, Lorg/xmlresolver/cache/ResourceCache$c;->e:Z

    if-eqz v3, :cond_9

    iput-boolean v4, v0, Lorg/xmlresolver/cache/ResourceCache$c;->e:Z

    const-string v3, "name"

    const-string v5, ""

    invoke-interface {v2, v5, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "uri"

    invoke-interface {v2, v5, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "time"

    const-string v15, "http://xmlresolver.org/ns/catalog"

    invoke-interface {v2, v15, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "error"

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, v0, Lorg/xmlresolver/cache/ResourceCache$c;->g:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v0}, Lorg/xmlresolver/cache/ResourceCache;->j(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;

    move-result-object v0

    const-string v1, "Bad numeric value in cache file: %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v7, v1, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const-wide/16 v9, -0x1

    :goto_0
    move-wide v13, v9

    :try_start_1
    invoke-static {v12}, Lorg/xmlresolver/utils/URIUtils;->newURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v11, Ljava/io/File;

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "cache"

    if-nez v6, :cond_3

    iget-object v0, v0, Lorg/xmlresolver/cache/ResourceCache$c;->g:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v0}, Lorg/xmlresolver/cache/ResourceCache;->l(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;

    move-result-object v0

    const-string v1, "Cached resource disappeared: %s"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v7, v1, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v9, -0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "system"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "public"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v9, v4

    :goto_1
    packed-switch v9, :pswitch_data_0

    iget-object v0, v0, Lorg/xmlresolver/cache/ResourceCache$c;->g:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v0}, Lorg/xmlresolver/cache/ResourceCache;->d(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cache entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v7, v1, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string v1, "nature"

    invoke-interface {v2, v5, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "purpose"

    invoke-interface {v2, v5, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/xmlresolver/cache/ResourceCache$c;->g:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v3}, Lorg/xmlresolver/cache/ResourceCache;->m(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheEntryCatalog;

    move-result-object v6

    iget-object v7, v0, Lorg/xmlresolver/cache/ResourceCache$c;->f:Ljava/net/URI;

    move-object v9, v12

    move-object v3, v11

    move-object v11, v1

    move-wide v12, v13

    invoke-virtual/range {v6 .. v13}, Lorg/xmlresolver/cache/CacheEntryCatalog;->addUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlresolver/catalog/entry/EntryUri;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    move-object v3, v11

    const-string v1, "systemId"

    invoke-interface {v2, v5, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache$c;->g:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v1}, Lorg/xmlresolver/cache/ResourceCache;->m(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheEntryCatalog;

    move-result-object v9

    iget-object v10, v0, Lorg/xmlresolver/cache/ResourceCache$c;->f:Ljava/net/URI;

    invoke-virtual/range {v9 .. v14}, Lorg/xmlresolver/cache/CacheEntryCatalog;->addSystem(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlresolver/catalog/entry/EntrySystem;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    move-object v3, v11

    const-string v1, "publicId"

    invoke-interface {v2, v5, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache$c;->g:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v1}, Lorg/xmlresolver/cache/ResourceCache;->m(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheEntryCatalog;

    move-result-object v9

    iget-object v10, v0, Lorg/xmlresolver/cache/ResourceCache$c;->f:Ljava/net/URI;

    invoke-virtual/range {v9 .. v14}, Lorg/xmlresolver/cache/CacheEntryCatalog;->addPublic(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlresolver/catalog/entry/EntryPublic;

    move-result-object v0

    :goto_2
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v4, v1, :cond_8

    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filesize"

    invoke-virtual {v0, v2, v1}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filemodified"

    invoke-virtual {v0, v2, v1}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    iget-object v0, v0, Lorg/xmlresolver/cache/ResourceCache$c;->g:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v0}, Lorg/xmlresolver/cache/ResourceCache;->k(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;

    move-result-object v0

    const-string v1, "Cached URI is invalid: %s"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v7, v1, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a424d97 -> :sswitch_2
        -0x34e38dd1 -> :sswitch_1
        0x1c56c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
