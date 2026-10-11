.class public Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/net/Uri;I)Lcom/liulishuo/okdownload/core/file/DownloadOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;

    invoke-direct {p0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    return-object p0
.end method

.method public create(Landroid/content/Context;Ljava/io/File;I)Lcom/liulishuo/okdownload/core/file/DownloadOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    return-object p0
.end method

.method public supportSeek()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
