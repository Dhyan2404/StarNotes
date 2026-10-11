.class public Lorg/xmlresolver/cache/CacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final entry:Lorg/xmlresolver/catalog/entry/Entry;

.field public expired:Z

.field public final file:Ljava/io/File;

.field public final time:J

.field public final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/catalog/entry/EntryPublic;J)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    .line 13
    iget-object v0, p1, Lorg/xmlresolver/catalog/entry/EntryPublic;->publicId:Ljava/lang/String;

    invoke-static {v0}, Lorg/xmlresolver/utils/PublicId;->encodeURN(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    .line 14
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    .line 15
    iput-wide p2, p0, Lorg/xmlresolver/cache/CacheEntry;->time:J

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/catalog/entry/EntrySystem;J)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    .line 8
    iget-object v0, p1, Lorg/xmlresolver/catalog/entry/Entry;->baseURI:Ljava/net/URI;

    iget-object v1, p1, Lorg/xmlresolver/catalog/entry/EntrySystem;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    .line 9
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    .line 10
    iput-wide p2, p0, Lorg/xmlresolver/cache/CacheEntry;->time:J

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/catalog/entry/EntryUri;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    .line 3
    iget-object v0, p1, Lorg/xmlresolver/catalog/entry/Entry;->baseURI:Ljava/net/URI;

    iget-object v1, p1, Lorg/xmlresolver/catalog/entry/EntryUri;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    .line 5
    iput-wide p2, p0, Lorg/xmlresolver/cache/CacheEntry;->time:J

    return-void
.end method


# virtual methods
.method public contentType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    const-string v0, "contentType"

    invoke-virtual {p0, v0}, Lorg/xmlresolver/catalog/entry/Entry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public etag()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    const-string v0, "etag"

    invoke-virtual {p0, v0}, Lorg/xmlresolver/catalog/entry/Entry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public location()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    const-string v1, "redir"

    invoke-virtual {v0, v1}, Lorg/xmlresolver/catalog/entry/Entry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    iget-object p0, p0, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {p0, v1}, Lorg/xmlresolver/catalog/entry/Entry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
