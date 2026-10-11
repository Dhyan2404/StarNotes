.class public Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field public a:Ljava/net/Proxy;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->a:Ljava/net/Proxy;

    return-object p0
.end method

.method public static synthetic b(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic c(Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->c:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public connectTimeout(I)Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->a:Ljava/net/Proxy;

    return-object p0
.end method

.method public readTimeout(I)Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Configuration;->b:Ljava/lang/Integer;

    return-object p0
.end method
