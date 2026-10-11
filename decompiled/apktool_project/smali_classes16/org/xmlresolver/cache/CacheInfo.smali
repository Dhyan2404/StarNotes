.class public Lorg/xmlresolver/cache/CacheInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cache:Z

.field public final cacheSize:J

.field public final cacheSpace:J

.field public final deleteWait:J

.field public final maxAge:J

.field public final pattern:Ljava/lang/String;

.field public final uriPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 11

    const-wide/32 v3, 0x93a80

    const-wide/16 v5, 0x3e8

    const-wide/32 v7, 0x9c4000

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1
    invoke-direct/range {v0 .. v10}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;ZJJJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJJJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/xmlresolver/cache/CacheInfo;->pattern:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/cache/CacheInfo;->uriPattern:Ljava/util/regex/Pattern;

    .line 5
    iput-boolean p2, p0, Lorg/xmlresolver/cache/CacheInfo;->cache:Z

    .line 6
    iput-wide p3, p0, Lorg/xmlresolver/cache/CacheInfo;->deleteWait:J

    .line 7
    iput-wide p5, p0, Lorg/xmlresolver/cache/CacheInfo;->cacheSize:J

    .line 8
    iput-wide p7, p0, Lorg/xmlresolver/cache/CacheInfo;->cacheSpace:J

    .line 9
    iput-wide p9, p0, Lorg/xmlresolver/cache/CacheInfo;->maxAge:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/xmlresolver/cache/CacheInfo;->cache:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache include "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/xmlresolver/cache/CacheInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache exclude "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/xmlresolver/cache/CacheInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
