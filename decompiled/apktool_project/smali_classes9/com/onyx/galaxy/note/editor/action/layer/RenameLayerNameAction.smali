.class public final Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "newName",
        "",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "layerInfo",
        "i",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Ljava/lang/String;)V",
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
.field public final h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$checkDuplicated(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLayerInfo$p(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    return-object p0
.end method

.method public static final synthetic access$getNewName$p(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setNewName$p(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->i:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v2

    const-string v3, "create(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/onyx/android/sdk/universal/R$string;->rename:I

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object v0

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$integer;->custom_template_max_length:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setMaxLength(IZ)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setEditTextContent(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;

    invoke-direct {v1, p0, v2}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->create()Lcom/onyx/android/sdk/ui/NameEditDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object v2
.end method

.method public final l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/layer/LoadNotePageLayersAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/LoadNotePageLayersAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$a;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
