.class public final Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;->u()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction$n;->e:Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction$n;->e:Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/SelectPastedPageEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction$n;->e:Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;->access$getPastedPageIds$p(Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/SelectPastedPageEvent;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction$n;->a(Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
