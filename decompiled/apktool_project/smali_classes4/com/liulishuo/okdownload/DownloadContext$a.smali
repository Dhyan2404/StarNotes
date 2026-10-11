.class public Lcom/liulishuo/okdownload/DownloadContext$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/okdownload/DownloadContext;->start(Lcom/liulishuo/okdownload/DownloadListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/liulishuo/okdownload/DownloadListener;

.field public final synthetic g:Lcom/liulishuo/okdownload/DownloadContext;


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadContext;Ljava/util/List;Lcom/liulishuo/okdownload/DownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext$a;->g:Lcom/liulishuo/okdownload/DownloadContext;

    iput-object p2, p0, Lcom/liulishuo/okdownload/DownloadContext$a;->e:Ljava/util/List;

    iput-object p3, p0, Lcom/liulishuo/okdownload/DownloadContext$a;->f:Lcom/liulishuo/okdownload/DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadContext$a;->g:Lcom/liulishuo/okdownload/DownloadContext;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/DownloadContext;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadContext$a;->g:Lcom/liulishuo/okdownload/DownloadContext;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->isAutoCallbackToUIThread()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/liulishuo/okdownload/DownloadContext;->a(Lcom/liulishuo/okdownload/DownloadContext;Z)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadContext$a;->f:Lcom/liulishuo/okdownload/DownloadListener;

    invoke-virtual {v1, v2}, Lcom/liulishuo/okdownload/DownloadTask;->execute(Lcom/liulishuo/okdownload/DownloadListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
