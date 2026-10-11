.class public final Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;->p(Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$h;->f:Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$h;->f:Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;->access$rotateNotePage(Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$h;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
