.class public Lcom/oplus/ocs/base/common/ConnectionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mErrorCode:I

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/oplus/ocs/base/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/oplus/ocs/base/common/ConnectionResult;->mErrorCode:I

    .line 4
    iput-object p2, p0, Lcom/oplus/ocs/base/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/oplus/ocs/base/common/ConnectionResult;->mErrorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/oplus/ocs/base/common/ConnectionResult;->mErrorCode:I

    invoke-static {p0}, Lcom/oplus/ocs/base/common/constant/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public hasResolution()Z
    .locals 1

    iget v0, p0, Lcom/oplus/ocs/base/common/ConnectionResult;->mErrorCode:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/oplus/ocs/base/utils/e;->a(Ljava/lang/Object;)Lcom/oplus/ocs/base/utils/e$a;

    move-result-object v0

    iget p0, p0, Lcom/oplus/ocs/base/common/ConnectionResult;->mErrorCode:I

    invoke-static {p0}, Lcom/oplus/ocs/base/common/constant/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "statusCode"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/ocs/base/utils/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/oplus/ocs/base/utils/e$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/utils/e$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
