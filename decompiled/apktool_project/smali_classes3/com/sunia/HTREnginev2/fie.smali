.class public final synthetic Lcom/sunia/HTREnginev2/fie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/canhub/cropper/CropImageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/canhub/cropper/CropImageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fie;->a:Lcom/canhub/cropper/CropImageActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fie;->a:Lcom/canhub/cropper/CropImageActivity;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->E(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V

    return-void
.end method
