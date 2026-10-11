.class public final Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;->download(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->decompressV2(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object p1, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->setResourceInstalled$default(Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;ZILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;->a(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method
