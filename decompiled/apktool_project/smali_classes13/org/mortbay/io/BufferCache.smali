.class public Lorg/mortbay/io/BufferCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/io/BufferCache$CachedBuffer;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Lorg/mortbay/util/StringMap;

.field public c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/io/BufferCache;->a:Ljava/util/HashMap;

    new-instance v0, Lorg/mortbay/util/StringMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mortbay/util/StringMap;-><init>(Z)V

    iput-object v0, p0, Lorg/mortbay/io/BufferCache;->b:Lorg/mortbay/util/StringMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/io/BufferCache;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 2

    new-instance v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-direct {v0, p1, p2}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->b:Lorg/mortbay/util/StringMap;

    invoke-virtual {v1, p1, v0}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lorg/mortbay/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int p1, p2, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/io/BufferCache;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public get(I)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lorg/mortbay/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 0

    .line 4
    iget-object p0, p0, Lorg/mortbay/io/BufferCache;->b:Lorg/mortbay/util/StringMap;

    invoke-virtual {p0, p1}, Lorg/mortbay/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    return-object p0
.end method

.method public get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/mortbay/io/BufferCache;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    return-object p0
.end method

.method public getBest([BII)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/BufferCache;->b:Lorg/mortbay/util/StringMap;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/util/StringMap;->getBestEntry([BII)Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrdinal(Lorg/mortbay/io/Buffer;)I
    .locals 1

    instance-of v0, p1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {p1}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;
    .locals 1

    .line 4
    invoke-virtual {p0, p1}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5
    new-instance p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object p0
.end method

.method public lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mortbay/io/BufferCache;->get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2
    instance-of p0, p1, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-eqz p0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance p0, Lorg/mortbay/io/View$CaseInsensitive;

    invoke-direct {p0, p1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CACHE[bufferMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ",stringMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->b:Lorg/mortbay/util/StringMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
