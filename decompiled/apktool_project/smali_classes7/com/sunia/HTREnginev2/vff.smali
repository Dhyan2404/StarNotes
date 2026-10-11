.class public final synthetic Lcom/sunia/HTREnginev2/vff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vff;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vff;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vff;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vff;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;->m(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    return-void
.end method
