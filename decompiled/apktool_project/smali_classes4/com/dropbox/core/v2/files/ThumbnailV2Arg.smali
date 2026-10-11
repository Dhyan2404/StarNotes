.class public Lcom/dropbox/core/v2/files/ThumbnailV2Arg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ThumbnailV2Arg$a;,
        Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/v2/files/PathOrLink;

.field public final b:Lcom/dropbox/core/v2/files/ThumbnailFormat;

.field public final c:Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public final d:Lcom/dropbox/core/v2/files/ThumbnailMode;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/PathOrLink;)V
    .locals 3

    .line 10
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    sget-object v2, Lcom/dropbox/core/v2/files/ThumbnailMode;->STRICT:Lcom/dropbox/core/v2/files/ThumbnailMode;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;-><init>(Lcom/dropbox/core/v2/files/PathOrLink;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/dropbox/core/v2/files/ThumbnailMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/PathOrLink;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/dropbox/core/v2/files/ThumbnailMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->a:Lcom/dropbox/core/v2/files/PathOrLink;

    if-eqz p2, :cond_2

    .line 3
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->b:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    if-eqz p3, :cond_1

    .line 4
    iput-object p3, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->c:Lcom/dropbox/core/v2/files/ThumbnailSize;

    if-eqz p4, :cond_0

    .line 5
    iput-object p4, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->d:Lcom/dropbox/core/v2/files/ThumbnailMode;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'mode\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'size\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'format\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'resource\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/dropbox/core/v2/files/PathOrLink;)Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;-><init>(Lcom/dropbox/core/v2/files/PathOrLink;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/dropbox/core/v2/files/ThumbnailFormat;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->b:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    return-object p0
.end method

.method public b()Lcom/dropbox/core/v2/files/ThumbnailMode;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->d:Lcom/dropbox/core/v2/files/ThumbnailMode;

    return-object p0
.end method

.method public c()Lcom/dropbox/core/v2/files/PathOrLink;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->a:Lcom/dropbox/core/v2/files/PathOrLink;

    return-object p0
.end method

.method public d()Lcom/dropbox/core/v2/files/ThumbnailSize;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->c:Lcom/dropbox/core/v2/files/ThumbnailSize;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->a:Lcom/dropbox/core/v2/files/PathOrLink;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->a:Lcom/dropbox/core/v2/files/PathOrLink;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/PathOrLink;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->b:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->b:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->c:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->c:Lcom/dropbox/core/v2/files/ThumbnailSize;

    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->d:Lcom/dropbox/core/v2/files/ThumbnailMode;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->d:Lcom/dropbox/core/v2/files/ThumbnailMode;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$a;->b:Lcom/dropbox/core/v2/files/ThumbnailV2Arg$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->a:Lcom/dropbox/core/v2/files/PathOrLink;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->b:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->c:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;->d:Lcom/dropbox/core/v2/files/ThumbnailMode;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$a;->b:Lcom/dropbox/core/v2/files/ThumbnailV2Arg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
