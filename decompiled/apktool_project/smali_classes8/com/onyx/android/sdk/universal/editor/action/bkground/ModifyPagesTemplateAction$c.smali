.class public final Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->access$getCloseContentPathSet$p(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->destroyReaderByPathSet(Ljava/util/Set;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$c;->a(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)V

    return-void
.end method
