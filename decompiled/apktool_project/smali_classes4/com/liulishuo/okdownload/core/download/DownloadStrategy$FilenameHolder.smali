.class public Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/download/DownloadStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilenameHolder"
.end annotation


# instance fields
.field public volatile a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    check-cast p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p0, p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a:Ljava/lang/String;

    check-cast p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public get()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isFilenameProvidedByConstruct()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->b:Z

    return p0
.end method
