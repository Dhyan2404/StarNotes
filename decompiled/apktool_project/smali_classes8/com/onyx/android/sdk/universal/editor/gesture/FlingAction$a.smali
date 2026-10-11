.class public final Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->o()V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$a;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$a;->f:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$a;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$a;->f:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$a;->a(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
