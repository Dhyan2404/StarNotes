.class public Lcom/dropbox/core/v2/files/SearchOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SearchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected fileCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/FileCategory;",
            ">;"
        }
    .end annotation
.end field

.field protected fileExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

.field protected filenameOnly:Z

.field protected maxResults:J

.field protected path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->path:Ljava/lang/String;

    const-wide/16 v1, 0x64

    iput-wide v1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->maxResults:J

    sget-object v1, Lcom/dropbox/core/v2/files/FileStatus;->ACTIVE:Lcom/dropbox/core/v2/files/FileStatus;

    iput-object v1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->filenameOnly:Z

    iput-object v0, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileExtensions:Ljava/util/List;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileCategories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/SearchOptions;
    .locals 9

    new-instance v8, Lcom/dropbox/core/v2/files/SearchOptions;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->path:Ljava/lang/String;

    iget-wide v2, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->maxResults:J

    iget-object v4, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->filenameOnly:Z

    iget-object v6, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileExtensions:Ljava/util/List;

    iget-object v7, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileCategories:Ljava/util/List;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/files/SearchOptions;-><init>(Ljava/lang/String;JLcom/dropbox/core/v2/files/FileStatus;ZLjava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method public withFileCategories(Ljava/util/List;)Lcom/dropbox/core/v2/files/SearchOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/FileCategory;",
            ">;)",
            "Lcom/dropbox/core/v2/files/SearchOptions$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/files/FileCategory;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An item in list \'fileCategories\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileCategories:Ljava/util/List;

    return-object p0
.end method

.method public withFileExtensions(Ljava/util/List;)Lcom/dropbox/core/v2/files/SearchOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/files/SearchOptions$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An item in list \'fileExtensions\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileExtensions:Ljava/util/List;

    return-object p0
.end method

.method public withFileStatus(Lcom/dropbox/core/v2/files/FileStatus;)Lcom/dropbox/core/v2/files/SearchOptions$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/dropbox/core/v2/files/FileStatus;->ACTIVE:Lcom/dropbox/core/v2/files/FileStatus;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->fileStatus:Lcom/dropbox/core/v2/files/FileStatus;

    :goto_0
    return-object p0
.end method

.method public withFilenameOnly(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/SearchOptions$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->filenameOnly:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->filenameOnly:Z

    :goto_0
    return-object p0
.end method

.method public withMaxResults(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/SearchOptions$Builder;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->maxResults:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'maxResults\' is larger than 1000L"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'maxResults\' is smaller than 1L"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchOptions$Builder;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'path\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchOptions$Builder;->path:Ljava/lang/String;

    return-object p0
.end method
