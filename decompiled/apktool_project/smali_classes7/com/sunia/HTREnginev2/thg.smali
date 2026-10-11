.class public final synthetic Lcom/sunia/HTREnginev2/thg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->a(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
