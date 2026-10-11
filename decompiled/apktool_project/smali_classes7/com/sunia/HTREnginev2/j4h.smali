.class public final synthetic Lcom/sunia/HTREnginev2/j4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j4h;->e:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j4h;->e:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;

    check-cast p1, Lcom/google/api/services/drive/model/File;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->a(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;Lcom/google/api/services/drive/model/File;)Z

    move-result p0

    return p0
.end method
