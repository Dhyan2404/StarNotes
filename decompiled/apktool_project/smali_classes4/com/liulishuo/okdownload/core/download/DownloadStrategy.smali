.class public Lcom/liulishuo/okdownload/core/download/DownloadStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/download/DownloadStrategy$ResumeAvailableResponseCheck;,
        Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "DownloadStrategy"

.field public static final d:J = 0x100000L

.field public static final e:J = 0x500000L

.field public static final f:J = 0x3200000L

.field public static final g:J = 0x6400000L

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Landroid/net/ConnectivityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ".*\\\\|/([^\\\\|/|?]*)\\??"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->b:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public determineBlockCount(Lcom/liulishuo/okdownload/DownloadTask;J)I
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getSetConnectionCount()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getSetConnectionCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-wide/32 p0, 0x100000

    cmp-long p0, p2, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/32 p0, 0x500000

    cmp-long p0, p2, p0

    if-gez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-wide/32 p0, 0x3200000

    cmp-long p0, p2, p0

    if-gez p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-wide/32 p0, 0x6400000

    cmp-long p0, p2, p0

    if-gez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0
.end method

.method public determineFilename(Ljava/lang/String;Lcom/liulishuo/okdownload/DownloadTask;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/liulishuo/okdownload/core/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can\'t find valid filename."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p1
.end method

.method public getPreconditionFailedCause(IZLcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Ljava/lang/String;)Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 0
    .param p3    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object p0

    const/16 p3, 0x19c

    if-ne p1, p3, :cond_0

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_PRECONDITION_FAILED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p4}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_ETAG_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_1
    const/16 p0, 0xc9

    if-ne p1, p0, :cond_2

    if-eqz p2, :cond_2

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_CREATED_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_2
    const/16 p0, 0xcd

    if-ne p1, p0, :cond_3

    if-eqz p2, :cond_3

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_RESET_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public inspectAnotherSameInfo(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;J)Z
    .locals 5
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->isFilenameFromResponse()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->findAnotherInfoFromCompare(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getId()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->remove(I)V

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v1

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->reuseIdledSameInfoThresholdBytes()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gtz p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v1

    cmp-long p0, v1, p3

    if-eqz p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p2, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->reuseBlocks(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Reuse another same info: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadStrategy"

    invoke-static {p1, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v0
.end method

.method public inspectFilenameFromResume(Ljava/lang/String;Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getFilenameHolder()Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public inspectNetworkAvailable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/Util;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->a:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->b:Landroid/net/ConnectivityManager;

    :cond_2
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->b:Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lcom/liulishuo/okdownload/core/Util;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/net/UnknownHostException;

    const-string v0, "network is not available!"

    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inspectNetworkOnWifi(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/Util;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->a:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->isWifiRequired()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->b:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/OkDownload;->context()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->b:Landroid/net/ConnectivityManager;

    :cond_2
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->b:Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lcom/liulishuo/okdownload/core/Util;->isNetworkNotOnWifiType(Landroid/net/ConnectivityManager;)Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lcom/liulishuo/okdownload/core/exception/NetworkPolicyException;

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/exception/NetworkPolicyException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "required for access network state but don\'t have the permission of Manifest.permission.ACCESS_NETWORK_STATE, please declare this permission first on your AndroidManifest, so we can handle the case of downloading required wifi state."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isServerCanceled(IZ)Z
    .locals 2

    const/16 p0, 0xce

    const/4 v0, 0x1

    const/16 v1, 0xc8

    if-eq p1, p0, :cond_0

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isUseMultiBlock(Z)Z
    .locals 0

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory()Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;

    move-result-object p0

    invoke-interface {p0}, Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;->supportSeek()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public resumeAvailableResponseCheck(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;ILcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/download/DownloadStrategy$ResumeAvailableResponseCheck;
    .locals 0

    new-instance p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$ResumeAvailableResponseCheck;

    invoke-direct {p0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$ResumeAvailableResponseCheck;-><init>(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;ILcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    return-object p0
.end method

.method public reuseIdledSameInfoThresholdBytes()J
    .locals 2

    const-wide/16 v0, 0x2800

    return-wide v0
.end method

.method public validFilenameFromResponse(Ljava/lang/String;Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->determineFilename(Ljava/lang/String;Lcom/liulishuo/okdownload/DownloadTask;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getFilenameHolder()Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFilenameHolder()Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a(Ljava/lang/String;)V

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public validFilenameFromStore(Lcom/liulishuo/okdownload/DownloadTask;)Z
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;

    move-result-object p0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->getResponseFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFilenameHolder()Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public validInfoOnCompleted(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V
    .locals 9
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;->getAfterCompleted(I)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p2

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/liulishuo/okdownload/core/Util;->isUriContentScheme(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/liulishuo/okdownload/core/Util;->getSizeFromContentUri(Landroid/net/Uri;)J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file is not ready on valid info for task on complete state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DownloadStrategy"

    invoke-static {v0, p2}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    const-wide/16 v3, 0x0

    move-object v2, p2

    move-wide v5, v7

    invoke-direct/range {v2 .. v8}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;-><init>(JJJ)V

    invoke-virtual {p0, p2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->addBlock(Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;)V

    :cond_2
    invoke-static {p1, p0}, Lcom/liulishuo/okdownload/DownloadTask$TaskHideWrapper;->setBreakpointInfo(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    return-void
.end method
