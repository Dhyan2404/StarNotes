.class public Lcom/dropbox/core/v2/files/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/g$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/v2/files/CommitInfo;

.field public final b:D


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/CommitInfo;)V
    .locals 2

    const-wide v0, 0x40cc200000000000L    # 14400.0

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/files/g;-><init>(Lcom/dropbox/core/v2/files/CommitInfo;D)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/CommitInfo;D)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/g;->a:Lcom/dropbox/core/v2/files/CommitInfo;

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpg-double p1, p2, v0

    if-ltz p1, :cond_1

    const-wide v0, 0x40cc200000000000L    # 14400.0

    cmpl-double p1, p2, v0

    if-gtz p1, :cond_0

    .line 3
    iput-wide p2, p0, Lcom/dropbox/core/v2/files/g;->b:D

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'duration\' is larger than 14400.0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'duration\' is smaller than 60.0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'commitInfo\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lcom/dropbox/core/v2/files/CommitInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/g;->a:Lcom/dropbox/core/v2/files/CommitInfo;

    return-object p0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/v2/files/g;->b:D

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/g$a;->b:Lcom/dropbox/core/v2/files/g$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

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

    if-eqz v2, :cond_4

    check-cast p1, Lcom/dropbox/core/v2/files/g;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/g;->a:Lcom/dropbox/core/v2/files/CommitInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/g;->a:Lcom/dropbox/core/v2/files/CommitInfo;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/CommitInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/dropbox/core/v2/files/g;->b:D

    iget-wide p0, p1, Lcom/dropbox/core/v2/files/g;->b:D

    cmpl-double p0, v2, p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/g;->a:Lcom/dropbox/core/v2/files/CommitInfo;

    iget-wide v1, p0, Lcom/dropbox/core/v2/files/g;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/g$a;->b:Lcom/dropbox/core/v2/files/g$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
