.class final Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->m()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $templateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;->$templateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;->$templateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;->$templateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentPageId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->getTemplateFilePath(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->access$getInsertPageArgs$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplatePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
