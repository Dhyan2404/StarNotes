.class public final Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->access$getName$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->access$getMaxLength$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->access$getCheckDuplicate$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->access$getOverflowName$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$c;->a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
