.class public Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$b;->a:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinish()V
    .locals 1

    const-string p0, "SingleMediaScanner"

    const-string v0, "scan finish!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
