.class public Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner$ScanListener;
    }
.end annotation


# instance fields
.field public a:Landroid/media/MediaScannerConnection;

.field public b:Ljava/lang/String;

.field public c:Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner$ScanListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner$ScanListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;->c:Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner$ScanListener;

    new-instance p2, Landroid/media/MediaScannerConnection;

    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {p2}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;->a:Landroid/media/MediaScannerConnection;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;->c:Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner$ScanListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner$ScanListener;->onScanFinish()V

    :cond_0
    return-void
.end method
