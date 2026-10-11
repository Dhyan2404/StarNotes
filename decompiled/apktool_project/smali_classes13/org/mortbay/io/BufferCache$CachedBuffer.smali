.class public Lorg/mortbay/io/BufferCache$CachedBuffer;
.super Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/BufferCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedBuffer"
.end annotation


# instance fields
.field public g:I

.field public h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->h:Ljava/util/HashMap;

    iput p2, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->g:I

    return-void
.end method


# virtual methods
.method public getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->h:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    return-object p0
.end method

.method public getOrdinal()I
    .locals 0

    iget p0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->g:I

    return p0
.end method

.method public setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->h:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
