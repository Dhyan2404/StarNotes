.class public Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d;->fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/liulishuo/okdownload/DownloadTask;

.field public final synthetic f:I

.field public final synthetic g:J

.field public final synthetic h:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d;


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d;Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$j;->h:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d;

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$j;->e:Lcom/liulishuo/okdownload/DownloadTask;

    iput p3, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$j;->f:I

    iput-wide p4, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$j;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$j;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/DownloadTask;->getListener()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$j;->e:Lcom/liulishuo/okdownload/DownloadTask;

    iget v2, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$j;->f:I

    iget-wide v3, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$d$j;->g:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/liulishuo/okdownload/DownloadListener;->fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    return-void
.end method
