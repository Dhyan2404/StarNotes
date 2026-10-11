.class public final synthetic Lcom/sunia/HTREnginev2/yff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

.field public final synthetic f:Lkotlin/Pair;

.field public final synthetic g:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

.field public final synthetic h:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;Lkotlin/Pair;Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yff;->e:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yff;->f:Lkotlin/Pair;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/yff;->g:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/yff;->h:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yff;->e:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yff;->f:Lkotlin/Pair;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/yff;->g:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yff;->h:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {v0, v1, v2, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->n(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;Lkotlin/Pair;Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    return-void
.end method
