.class public final synthetic Lcom/sunia/HTREnginev2/oxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

.field public final synthetic f:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oxn;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/oxn;->f:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oxn;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oxn;->f:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;->m(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;)V

    return-void
.end method
