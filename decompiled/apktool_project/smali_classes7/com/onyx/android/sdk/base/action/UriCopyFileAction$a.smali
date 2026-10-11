.class public final Lcom/onyx/android/sdk/base/action/UriCopyFileAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/action/UriCopyFileAction;->create()Lio/reactivex/rxjava3/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/base/action/UriCopyFileAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/action/UriCopyFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/base/action/UriCopyFileAction$a;->e:Lcom/onyx/android/sdk/base/action/UriCopyFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/base/action/UriCopyFileAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/action/UriCopyFileAction$a;->c(Lcom/onyx/android/sdk/base/action/UriCopyFileAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final c(Lcom/onyx/android/sdk/base/action/UriCopyFileAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/action/UriCopyFileAction;->access$copyFile(Lcom/onyx/android/sdk/base/action/UriCopyFileAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/action/UriCopyFileAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/action/UriCopyFileAction$a;->b(Lcom/onyx/android/sdk/base/action/UriCopyFileAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/base/action/UriCopyFileAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/action/UriCopyFileAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/action/UriCopyFileAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/action/UriCopyFileAction$a;->e:Lcom/onyx/android/sdk/base/action/UriCopyFileAction;

    new-instance p1, Lcom/sunia/HTREnginev2/byn;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/byn;-><init>(Lcom/onyx/android/sdk/base/action/UriCopyFileAction;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
