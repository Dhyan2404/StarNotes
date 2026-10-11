.class public final Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->access$getContext$p(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;->REMOVE:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;

    invoke-static {p1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->prepareBoxAnimation(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$b;->a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
