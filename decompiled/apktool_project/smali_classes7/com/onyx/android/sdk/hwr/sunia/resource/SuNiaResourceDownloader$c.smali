.class public final Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$c;
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
.field public final synthetic e:Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;

.field public final synthetic f:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$c;->e:Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$c;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$c;->e:Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$c;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->onDownloadError(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
