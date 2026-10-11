.class public abstract Lcom/liulishuo/okdownload/core/listener/DownloadListener3;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canceled(Lcom/liulishuo/okdownload/DownloadTask;)V
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract completed(Lcom/liulishuo/okdownload/DownloadTask;)V
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract error(Lcom/liulishuo/okdownload/DownloadTask;Ljava/lang/Exception;)V
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract started(Lcom/liulishuo/okdownload/DownloadTask;)V
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/cause/EndCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p4, Lcom/liulishuo/okdownload/core/listener/DownloadListener3$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Don\'t support "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadListener3"

    invoke-static {p1, p0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListener3;->warn(Lcom/liulishuo/okdownload/DownloadTask;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p3}, Lcom/liulishuo/okdownload/core/listener/DownloadListener3;->error(Lcom/liulishuo/okdownload/DownloadTask;Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListener3;->canceled(Lcom/liulishuo/okdownload/DownloadTask;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListener3;->completed(Lcom/liulishuo/okdownload/DownloadTask;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final taskStart(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListener3;->started(Lcom/liulishuo/okdownload/DownloadTask;)V

    return-void
.end method

.method public abstract warn(Lcom/liulishuo/okdownload/DownloadTask;)V
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
