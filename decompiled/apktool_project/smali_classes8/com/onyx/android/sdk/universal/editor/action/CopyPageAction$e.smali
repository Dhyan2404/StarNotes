.class public final Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "copyArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->access$getContext$p(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;->APPEND:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->prepareBoxAnimation(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e$a;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e$b;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e$c;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e$d;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;->a(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
