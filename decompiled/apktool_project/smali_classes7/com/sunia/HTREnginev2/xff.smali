.class public final synthetic Lcom/sunia/HTREnginev2/xff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

.field public final synthetic f:Lkotlin/Pair;

.field public final synthetic g:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;Lkotlin/Pair;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xff;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xff;->f:Lkotlin/Pair;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xff;->g:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xff;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xff;->f:Lkotlin/Pair;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xff;->g:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->o(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;Lkotlin/Pair;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method
