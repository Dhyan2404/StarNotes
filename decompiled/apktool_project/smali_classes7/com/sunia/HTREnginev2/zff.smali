.class public final synthetic Lcom/sunia/HTREnginev2/zff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lkotlin/Pair;

.field public final synthetic f:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;


# direct methods
.method public synthetic constructor <init>(Lkotlin/Pair;Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zff;->e:Lkotlin/Pair;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zff;->f:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zff;->e:Lkotlin/Pair;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zff;->f:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->m(Lkotlin/Pair;Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;)V

    return-void
.end method
