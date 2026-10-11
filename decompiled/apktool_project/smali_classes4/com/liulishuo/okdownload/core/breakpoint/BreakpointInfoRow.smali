.class public Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->a:I

    const-string v0, "url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->b:Ljava/lang/String;

    const-string v0, "etag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->c:Ljava/lang/String;

    const-string v0, "parent_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->d:Ljava/lang/String;

    const-string v0, "filename"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->e:Ljava/lang/String;

    const-string v0, "task_only_parent_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->f:Z

    const-string v0, "chunked"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->g:Z

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->a:I

    return p0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->b:Ljava/lang/String;

    return-object p0
.end method

.method public isChunked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->g:Z

    return p0
.end method

.method public isTaskOnlyProvidedParentPath()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->f:Z

    return p0
.end method

.method public toInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 7

    new-instance v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->a:I

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->b:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->d:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->f:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->setEtag(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfoRow;->g:Z

    invoke-virtual {v6, p0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->setChunked(Z)V

    return-object v6
.end method
