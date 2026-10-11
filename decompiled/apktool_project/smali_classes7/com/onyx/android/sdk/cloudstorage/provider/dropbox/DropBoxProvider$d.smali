.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->onDropBoxCredentialEvent(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

.field public final synthetic f:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$d;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$d;->f:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$d;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-static {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->access$getAuthObservable$p(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;)Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$d;->f:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$d;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->access$getAuthObservable$p(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;)Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onComplete()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$d;->a(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V

    return-void
.end method
