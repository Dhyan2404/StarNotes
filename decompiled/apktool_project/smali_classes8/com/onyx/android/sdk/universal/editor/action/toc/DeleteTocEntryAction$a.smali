.class public final Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/BeginDeleteTocEntryEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;->access$getEntries$p(Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/BeginDeleteTocEntryEvent;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/toc/DeleteTocEntryAction;)V

    return-void
.end method
