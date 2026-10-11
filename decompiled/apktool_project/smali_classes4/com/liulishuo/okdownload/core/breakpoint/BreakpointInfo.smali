.class public Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public i:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->a:I

    .line 3
    iput-object p2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->d:Ljava/io/File;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    .line 6
    invoke-static {p4}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->h:Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1, p4}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->h:Z

    .line 11
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->e:Ljava/io/File;

    :goto_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->a:I

    .line 14
    iput-object p2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->d:Ljava/io/File;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    .line 17
    invoke-static {p4}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    new-instance p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1, p4}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    .line 20
    :goto_0
    iput-boolean p5, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->h:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->h:Z

    return p0
.end method

.method public addBlock(Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 7

    new-instance v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->a:I

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->h:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->i:Z

    iput-boolean v0, v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->i:Z

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    iget-object v1, v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->copy()Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method public copyWithReplaceId(I)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 7

    new-instance v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->h:Z

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->i:Z

    iput-boolean p1, v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->i:Z

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    iget-object v0, v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->copy()Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method public copyWithReplaceIdAndUrl(ILjava/lang/String;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 7

    new-instance v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->h:Z

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->i:Z

    iput-boolean p1, v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->i:Z

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    iget-object p2, v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->copy()Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method public getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    return-object p0
.end method

.method public getBlockCount()I
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->e:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->d:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->e:Ljava/io/File;

    :cond_1
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->e:Ljava/io/File;

    return-object p0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFilenameHolder()Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->a:I

    return p0
.end method

.method public getTotalLength()J
    .locals 6

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    instance-of v5, v4, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->getContentLength()J

    move-result-wide v4

    add-long/2addr v0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public getTotalOffset()J
    .locals 6

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    instance-of v5, v4, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide v4

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public isChunked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->i:Z

    return p0
.end method

.method public isLastBlock(I)Z
    .locals 1

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameFrom(Lcom/liulishuo/okdownload/DownloadTask;)Z
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->d:Ljava/io/File;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v3}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->h:Z

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->isFilenameFromResponse()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public isSingleBlock()Z
    .locals 1

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetBlockInfos()V
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public resetInfo()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public reuseBlocks(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setChunked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->i:Z

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] url["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] etag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] taskOnlyProvidedParentPath["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] parent path["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] filename["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->f:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] block(s):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
