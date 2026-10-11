.class public final Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/render/RedrawNoteAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/render/RedrawNoteAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postVirtualDocViewInfo$default(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/render/RedrawNoteAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$c;->a(Lcom/onyx/android/sdk/universal/editor/action/render/RedrawNoteAction;)V

    return-void
.end method
