.class public Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;
.super Lcom/liulishuo/okdownload/core/IdentifiedTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockTaskForCompare"
.end annotation


# instance fields
.field public final e:I

.field public final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;-><init>()V

    .line 2
    iput p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->e:I

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->f:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/liulishuo/okdownload/core/IdentifiedTask;->EMPTY_FILE:Ljava/io/File;

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->g:Ljava/io/File;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->h:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->i:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(ILcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p2    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;-><init>()V

    .line 8
    iput p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->e:I

    .line 9
    invoke-static {p2}, Lcom/liulishuo/okdownload/DownloadTask;->a(Lcom/liulishuo/okdownload/DownloadTask;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->i:Ljava/io/File;

    .line 11
    invoke-static {p2}, Lcom/liulishuo/okdownload/DownloadTask;->b(Lcom/liulishuo/okdownload/DownloadTask;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->g:Ljava/io/File;

    .line 12
    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->e:I

    return p0
.end method

.method public getParentFile()Ljava/io/File;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->i:Ljava/io/File;

    return-object p0
.end method

.method public getProvidedPathFile()Ljava/io/File;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->g:Ljava/io/File;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->f:Ljava/lang/String;

    return-object p0
.end method
