.class public Lorg/xmlresolver/cache/ResourceCache$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xmlresolver/cache/ResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public i:Z

.field public j:I

.field public final synthetic k:Lorg/xmlresolver/cache/ResourceCache;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/cache/ResourceCache;JJJJ)V
    .locals 0

    iput-object p1, p0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/xmlresolver/cache/ResourceCache$a;->i:Z

    iput p1, p0, Lorg/xmlresolver/cache/ResourceCache$a;->j:I

    iput-wide p2, p0, Lorg/xmlresolver/cache/ResourceCache$a;->e:J

    iput-wide p4, p0, Lorg/xmlresolver/cache/ResourceCache$a;->f:J

    iput-wide p6, p0, Lorg/xmlresolver/cache/ResourceCache$a;->g:J

    iput-wide p8, p0, Lorg/xmlresolver/cache/ResourceCache$a;->h:J

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lorg/xmlresolver/cache/ResourceCache$a;->j:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/xmlresolver/cache/ResourceCache$a;->j:I

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->j:I

    const-string v5, "max-age"

    const-string v6, "space"

    const-string v7, "size"

    const-string v8, "delete-wait"

    const-string v9, "http://xmlresolver.org/ns/catalog"

    const/4 v10, 0x1

    const-string v11, ""

    if-nez v4, :cond_1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "cache-control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->i:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    const-string v12, "version"

    invoke-interface {v3, v11, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lorg/xmlresolver/cache/ResourceCache;->e(Lorg/xmlresolver/cache/ResourceCache;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v4}, Lorg/xmlresolver/cache/ResourceCache;->f(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheParser;

    move-result-object v4

    invoke-interface {v3, v11, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lorg/xmlresolver/cache/ResourceCache$a;->e:J

    invoke-virtual {v4, v12, v13, v14}, Lorg/xmlresolver/cache/CacheParser;->parseTimeLong(Ljava/lang/String;J)J

    move-result-wide v18

    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v4}, Lorg/xmlresolver/cache/ResourceCache;->f(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheParser;

    move-result-object v4

    invoke-interface {v3, v11, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lorg/xmlresolver/cache/ResourceCache$a;->f:J

    invoke-virtual {v4, v12, v13, v14}, Lorg/xmlresolver/cache/CacheParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v20

    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v4}, Lorg/xmlresolver/cache/ResourceCache;->f(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheParser;

    move-result-object v4

    invoke-interface {v3, v11, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lorg/xmlresolver/cache/ResourceCache$a;->g:J

    invoke-virtual {v4, v12, v13, v14}, Lorg/xmlresolver/cache/CacheParser;->parseSizeLong(Ljava/lang/String;J)J

    move-result-wide v22

    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v4}, Lorg/xmlresolver/cache/ResourceCache;->f(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheParser;

    move-result-object v4

    invoke-interface {v3, v11, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lorg/xmlresolver/cache/ResourceCache$a;->h:J

    invoke-virtual {v4, v12, v13, v14}, Lorg/xmlresolver/cache/CacheParser;->parseTimeLong(Ljava/lang/String;J)J

    move-result-wide v24

    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    new-instance v12, Lorg/xmlresolver/cache/CacheInfo;

    const-string v16, ".*"

    const/16 v17, 0x1

    move-object v15, v12

    invoke-direct/range {v15 .. v25}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;ZJJJJ)V

    invoke-static {v4, v12}, Lorg/xmlresolver/cache/ResourceCache;->g(Lorg/xmlresolver/cache/ResourceCache;Lorg/xmlresolver/cache/CacheInfo;)Lorg/xmlresolver/cache/CacheInfo;

    :cond_1
    iget-boolean v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->i:Z

    if-eqz v4, :cond_4

    iget v4, v0, Lorg/xmlresolver/cache/ResourceCache$a;->j:I

    if-ne v4, v10, :cond_4

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v1}, Lorg/xmlresolver/cache/ResourceCache;->f(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheParser;

    move-result-object v1

    invoke-interface {v3, v11, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v8, v0, Lorg/xmlresolver/cache/ResourceCache$a;->e:J

    invoke-virtual {v1, v4, v8, v9}, Lorg/xmlresolver/cache/CacheParser;->parseTimeLong(Ljava/lang/String;J)J

    move-result-wide v15

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v1}, Lorg/xmlresolver/cache/ResourceCache;->f(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheParser;

    move-result-object v1

    invoke-interface {v3, v11, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v7, v0, Lorg/xmlresolver/cache/ResourceCache$a;->f:J

    invoke-virtual {v1, v4, v7, v8}, Lorg/xmlresolver/cache/CacheParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v17

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v1}, Lorg/xmlresolver/cache/ResourceCache;->f(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheParser;

    move-result-object v1

    invoke-interface {v3, v11, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v6, v0, Lorg/xmlresolver/cache/ResourceCache$a;->g:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/xmlresolver/cache/CacheParser;->parseSizeLong(Ljava/lang/String;J)J

    move-result-wide v19

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v1}, Lorg/xmlresolver/cache/ResourceCache;->f(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheParser;

    move-result-object v1

    invoke-interface {v3, v11, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lorg/xmlresolver/cache/ResourceCache$a;->h:J

    invoke-virtual {v1, v4, v5, v6}, Lorg/xmlresolver/cache/CacheParser;->parseTimeLong(Ljava/lang/String;J)J

    move-result-wide v21

    const-string v1, "uri"

    invoke-interface {v3, v11, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    const-string v1, "no-cache"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "cache"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v1}, Lorg/xmlresolver/cache/ResourceCache;->i(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;

    move-result-object v1

    const-string v3, "Unexpected element in cache control file: %s"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "error"

    invoke-interface {v1, v4, v3, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v13, :cond_4

    new-instance v1, Lorg/xmlresolver/cache/CacheInfo;

    const/4 v14, 0x1

    move-object v12, v1

    invoke-direct/range {v12 .. v22}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;ZJJJJ)V

    iget-object v2, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v2}, Lorg/xmlresolver/cache/ResourceCache;->h(Lorg/xmlresolver/cache/ResourceCache;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v13, :cond_4

    new-instance v1, Lorg/xmlresolver/cache/CacheInfo;

    const/4 v14, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v22}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;ZJJJJ)V

    iget-object v2, v0, Lorg/xmlresolver/cache/ResourceCache$a;->k:Lorg/xmlresolver/cache/ResourceCache;

    invoke-static {v2}, Lorg/xmlresolver/cache/ResourceCache;->h(Lorg/xmlresolver/cache/ResourceCache;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iget v1, v0, Lorg/xmlresolver/cache/ResourceCache$a;->j:I

    add-int/2addr v1, v10

    iput v1, v0, Lorg/xmlresolver/cache/ResourceCache$a;->j:I

    return-void
.end method
