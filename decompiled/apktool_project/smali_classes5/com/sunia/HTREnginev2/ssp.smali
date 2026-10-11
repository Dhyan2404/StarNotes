.class public final synthetic Lcom/sunia/HTREnginev2/ssp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/app/blob/BlobStoreManager;)J
    .locals 2

    invoke-virtual {p0}, Landroid/app/blob/BlobStoreManager;->getRemainingLeaseQuotaBytes()J

    move-result-wide v0

    return-wide v0
.end method
