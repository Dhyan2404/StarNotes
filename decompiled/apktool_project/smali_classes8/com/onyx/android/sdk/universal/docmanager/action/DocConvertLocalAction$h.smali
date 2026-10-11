.class public final Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->x(Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

.field public final synthetic f:Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$h;->e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$h;->f:Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$h;->e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->access$getCompositeDisposable(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$h;->e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$h;->f:Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->access$setConvertToPDFRequest$p(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$h;->a(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
