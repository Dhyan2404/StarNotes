.class public final Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;->l(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;->access$getTemplateJsonBean$p(Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion;->updateCoverPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$b;->a(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
