.class public Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d;->taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/liulishuo/okdownload/DownloadTask;

.field public final synthetic f:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d;


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d;Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$c;->f:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d;

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$c;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$c;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/DownloadTask;->getListener()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$c;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {v0, p0}, Lcom/liulishuo/okdownload/DownloadListener;->taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V

    return-void
.end method
