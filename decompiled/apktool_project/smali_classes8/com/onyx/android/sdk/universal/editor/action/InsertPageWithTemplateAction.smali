.class public final Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "insertPageArgs",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insertPageArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-void
.end method

.method public static final synthetic access$getInsertPageArgs$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;)Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-object p0
.end method

.method public static final synthetic access$initTemplateRect(Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->l()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$create$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isTemplatePDF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;->initTemplateRectByPreviousPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)Z

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;->initTemplateRectByPreviousPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->m()Z

    return-void
.end method

.method public final m()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualDocModel()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getDefaultTemplate()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentPageSize()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;->scaleToWidth(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;Landroid/graphics/RectF;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
