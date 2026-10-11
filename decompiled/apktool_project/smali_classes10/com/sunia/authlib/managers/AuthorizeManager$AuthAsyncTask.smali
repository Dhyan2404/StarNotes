.class Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/authlib/managers/AuthorizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sunia/authlib/bean/VerifyData;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field requestCode:I

.field verifyData:Lcom/sunia/authlib/bean/VerifyData;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;->requestCode:I

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/sunia/authlib/bean/VerifyData;)Ljava/lang/Integer;
    .locals 3

    .line 2
    invoke-static {}, Lcom/sunia/authlib/managers/AuthorizeManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;->verifyData:Lcom/sunia/authlib/bean/VerifyData;

    .line 4
    invoke-virtual {p1}, Lcom/sunia/authlib/bean/VerifyData;->getDeviceIdType()Lcom/sunia/authlib/bean/DeviceIdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/authlib/bean/DeviceIdType;->getValue()I

    move-result v0

    iget p0, p0, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;->requestCode:I

    invoke-static {p1, v0, p0}, Lcom/sunia/authlib/nativelibs/AuthorizeLib;->Authorize(Lcom/sunia/authlib/bean/VerifyData;II)I

    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/sunia/authlib/bean/VerifyData;

    invoke-virtual {p0, p1}, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;->doInBackground([Lcom/sunia/authlib/bean/VerifyData;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/sunia/authlib/managers/AuthorizeManager;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCancelled "

    invoke-static {p0, p1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/sunia/authlib/managers/AuthorizeManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfab

    if-ne v0, v1, :cond_0

    const-string v0, "Error:Get Mac failed"

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfaa

    if-ne v0, v1, :cond_1

    const-string v0, "Error: Failed to get  deviceid"

    goto :goto_0

    :cond_1
    const-string v0, "Error:"

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;->requestCode:I

    iget-object p0, p0, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;->verifyData:Lcom/sunia/authlib/bean/VerifyData;

    iget-object p0, p0, Lcom/sunia/authlib/bean/VerifyData;->savePath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v2, ""

    invoke-static {p1, v0, v2, v1, p0}, Lcom/sunia/authlib/managers/AuthorizeManager;->onCallback(ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-static {}, Lcom/sunia/authlib/managers/AuthorizeManager;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onPreExecute "

    invoke-static {p0, v0}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
