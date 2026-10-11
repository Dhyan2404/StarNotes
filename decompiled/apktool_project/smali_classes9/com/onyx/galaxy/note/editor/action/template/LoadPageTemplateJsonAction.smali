.class public final Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008*\u0010+J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0004\u001a\u00020\u0000H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u001b\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0012\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016R\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010\'\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u000e\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "n",
        "m",
        "",
        "h",
        "I",
        "pageIndex",
        "",
        "i",
        "Z",
        "isLoadDefaultPage",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "j",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "getCoverTemplateJsonBean",
        "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "setCoverTemplateJsonBean",
        "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V",
        "coverTemplateJsonBean",
        "k",
        "getPaperTemplateJsonBean",
        "setPaperTemplateJsonBean",
        "paperTemplateJsonBean",
        "Lcom/onyx/galaxy/note/category/data/TemplateChangeType;",
        "Lcom/onyx/galaxy/note/category/data/TemplateChangeType;",
        "getChangeType",
        "()Lcom/onyx/galaxy/note/category/data/TemplateChangeType;",
        "setChangeType",
        "(Lcom/onyx/galaxy/note/category/data/TemplateChangeType;)V",
        "changeType",
        "getHasPictureOrPDF",
        "()Z",
        "setHasPictureOrPDF",
        "(Z)V",
        "hasPictureOrPDF",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZ)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:I

.field public final i:Z

.field public j:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZ)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput p2, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->h:I

    .line 4
    iput-boolean p3, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->i:Z

    .line 5
    sget-object p1, Lcom/onyx/galaxy/note/category/data/TemplateChangeType;->CHANGE_ALL:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->l:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZ)V

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;)Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->l()Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getChangeType()Lcom/onyx/galaxy/note/category/data/TemplateChangeType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->l:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    return-object p0
.end method

.method public final getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->j:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public final getHasPictureOrPDF()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->m:Z

    return p0
.end method

.method public final getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->k:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public final l()Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->n()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->m()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->m:Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    sget-object v2, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->pageConfigToTemplateJson(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->getTemplateResourceType(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->isPictureOrPDF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->m:Z

    :cond_2
    return-object p0
.end method

.method public final m()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->h:I

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getCoverPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->pageConfigToTemplateJson(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->j:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->pageConfigToTemplateJson(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iput-object v3, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->k:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateChangeType;->CHANGE_COVER:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->l:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    :cond_3
    if-nez v1, :cond_4

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateChangeType;->CHANGE_ALL:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->l:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    :cond_4
    return-void
.end method

.method public final n()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualDocModel()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->getDefaultTemplate(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->k:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-void
.end method

.method public final setChangeType(Lcom/onyx/galaxy/note/category/data/TemplateChangeType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/TemplateChangeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->l:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    return-void
.end method

.method public final setCoverTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->j:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-void
.end method

.method public final setHasPictureOrPDF(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->m:Z

    return-void
.end method

.method public final setPaperTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->k:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-void
.end method
