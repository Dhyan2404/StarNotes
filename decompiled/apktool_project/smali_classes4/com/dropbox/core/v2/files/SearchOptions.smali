.class public Lcom/dropbox/core/v2/files/SearchOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SearchOptions$a;,
        Lcom/dropbox/core/v2/files/SearchOptions$Builder;
    }
.end annotation


# instance fields
.field protected final fileCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/FileCategory;",
            ">;"
        }
    .end annotation
.end field

.field protected final fileExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

.field protected final filenameOnly:Z

.field protected final maxResults:J

.field protected final path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    .line 17
    sget-object v4, Lcom/dropbox/core/v2/files/FileStatus;->ACTIVE:Lcom/dropbox/core/v2/files/FileStatus;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/files/SearchOptions;-><init>(Ljava/lang/String;JLcom/dropbox/core/v2/files/FileStatus;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/dropbox/core/v2/files/FileStatus;ZLjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/dropbox/core/v2/files/FileStatus;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/FileCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    .line 2
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'path\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchOptions;->path:Ljava/lang/String;

    const-wide/16 v0, 0x1

    cmp-long p1, p2, v0

    if-ltz p1, :cond_8

    const-wide/16 v0, 0x3e8

    cmp-long p1, p2, v0

    if-gtz p1, :cond_7

    .line 5
    iput-wide p2, p0, Lcom/dropbox/core/v2/files/SearchOptions;->maxResults:J

    if-eqz p4, :cond_6

    .line 6
    iput-object p4, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

    .line 7
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/SearchOptions;->filenameOnly:Z

    if-eqz p6, :cond_3

    .line 8
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An item in list \'fileExtensions\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    iput-object p6, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileExtensions:Ljava/util/List;

    if-eqz p7, :cond_5

    .line 11
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/files/FileCategory;

    if-eqz p2, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An item in list \'fileCategories\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_5
    iput-object p7, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileCategories:Ljava/util/List;

    return-void

    .line 14
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'fileStatus\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'maxResults\' is larger than 1000L"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'maxResults\' is smaller than 1L"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/files/SearchOptions$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SearchOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

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

    check-cast p1, Lcom/dropbox/core/v2/files/SearchOptions;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchOptions;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchOptions;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-wide v2, p0, Lcom/dropbox/core/v2/files/SearchOptions;->maxResults:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/files/SearchOptions;->maxResults:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchOptions;->fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/SearchOptions;->filenameOnly:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/SearchOptions;->filenameOnly:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileExtensions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchOptions;->fileExtensions:Ljava/util/List;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileCategories:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/SearchOptions;->fileCategories:Ljava/util/List;

    if-eq p0, p1, :cond_6

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getFileCategories()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/FileCategory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileCategories:Ljava/util/List;

    return-object p0
.end method

.method public getFileExtensions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileExtensions:Ljava/util/List;

    return-object p0
.end method

.method public getFileStatus()Lcom/dropbox/core/v2/files/FileStatus;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

    return-object p0
.end method

.method public getFilenameOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/SearchOptions;->filenameOnly:Z

    return p0
.end method

.method public getMaxResults()J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/v2/files/SearchOptions;->maxResults:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/SearchOptions;->path:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchOptions;->path:Ljava/lang/String;

    iget-wide v1, p0, Lcom/dropbox/core/v2/files/SearchOptions;->maxResults:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/SearchOptions;->filenameOnly:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileExtensions:Ljava/util/List;

    iget-object v5, p0, Lcom/dropbox/core/v2/files/SearchOptions;->fileCategories:Ljava/util/List;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/SearchOptions$a;->b:Lcom/dropbox/core/v2/files/SearchOptions$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/SearchOptions$a;->b:Lcom/dropbox/core/v2/files/SearchOptions$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
