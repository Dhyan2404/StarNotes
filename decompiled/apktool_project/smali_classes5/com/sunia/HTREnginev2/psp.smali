.class public final synthetic Lcom/sunia/HTREnginev2/psp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/app/blob/BlobStoreManager;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/app/blob/BlobStoreManager;->getLeasedBlobs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
