.class public final Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;
.super Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction<",
        "Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0007H\u0014J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0000H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005H\u0002J\u0008\u0010\u000e\u001a\u00020\u0005H\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0017\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;",
        "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
        "initArgs",
        "setTextBoxInitArgs",
        "",
        "isStartEditorSuccess",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "o",
        "q",
        "success",
        "p",
        "m",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "f",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBoxView",
        "g",
        "Z",
        "getEditForAll",
        "()Z",
        "editForAll",
        "h",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
        "i",
        "startEditorSuccess",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Z)V",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Z

.field public h:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBoxView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iput-boolean p2, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->g:Z

    return-void
.end method

.method public static final synthetic access$checkEditorState(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->n()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$loadFontInfo(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;)Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->o()Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onEditorStartResult(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;Z)Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->p(Z)Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startEdit(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->q()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction$a;-><init>(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction$b;-><init>(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction$c;-><init>(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction$d;-><init>(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditForAll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->g:Z

    return p0
.end method

.method public final isStartEditorSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->i:Z

    return p0
.end method

.method public final m()Z
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot edit, editor state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorState()Lcom/onyx/android/sdk/textbox/data/EditorState;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isIdleState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->PREPARE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final o()Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->h:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getFontPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "default"

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/base/utils/FontUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FontUtils;->loadFontInfo(Ljava/io/File;)Lcom/onyx/android/sdk/base/data/font/FontInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFontName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->h:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setFontFamily(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    :cond_3
    return-object p0
.end method

.method public final p(Z)Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;
    .locals 3

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->i:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start editor failed, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorState()Lcom/onyx/android/sdk/textbox/data/EditorState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->h:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-boolean v1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->g:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setEditForAll(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->m()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->startEdit(Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final setTextBoxInitArgs(Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;->h:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    return-object p0
.end method
