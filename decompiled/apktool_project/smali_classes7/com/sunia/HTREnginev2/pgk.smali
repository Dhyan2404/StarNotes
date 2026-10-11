.class public final synthetic Lcom/sunia/HTREnginev2/pgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pgk;->e:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pgk;->e:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->b(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V

    return-void
.end method
