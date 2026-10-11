.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudAnnotationAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016R\u0014\u0010\u000c\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudAnnotationAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "create",
        "fileBean",
        "upload",
        "ensureFolderCreated",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "getProvider",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "webDavProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;",
        "cloudAnnotation",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "webDavProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudAnnotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudAnnotationAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    return-void
.end method

.method public static final synthetic access$createCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudAnnotationAction;->createCloudFile()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createLocalFile(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudAnnotationAction;->createLocalFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$c;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$d;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public ensureFolderCreated(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    return-object p0
.end method

.method public upload(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$e;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveAnnotationAction$e;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
