.class public final Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0012J\u0006\u0010\u001a\u001a\u00020\u0012J\u000e\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0012J\u0016\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u001f\u001a\u00020\u0016H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;",
        "",
        "()V",
        "canRedo",
        "Landroidx/databinding/ObservableBoolean;",
        "getCanRedo",
        "()Landroidx/databinding/ObservableBoolean;",
        "setCanRedo",
        "(Landroidx/databinding/ObservableBoolean;)V",
        "canUndo",
        "getCanUndo",
        "setCanUndo",
        "enable",
        "getEnable",
        "setEnable",
        "redoCount",
        "",
        "redoing",
        "",
        "undoCount",
        "undoing",
        "destroy",
        "",
        "guardRedoing",
        "guardUndoing",
        "isRedoing",
        "isUndoing",
        "setRedoing",
        "value",
        "setUndoing",
        "updateCount",
        "updateStatus",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private canRedo:Landroidx/databinding/ObservableBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private canUndo:Landroidx/databinding/ObservableBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private enable:Landroidx/databinding/ObservableBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private redoCount:I

.field private redoing:Z

.field private undoCount:I

.field private undoing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->canUndo:Landroidx/databinding/ObservableBoolean;

    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->canRedo:Landroidx/databinding/ObservableBoolean;

    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->enable:Landroidx/databinding/ObservableBoolean;

    return-void
.end method

.method private final updateStatus()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->canUndo:Landroidx/databinding/ObservableBoolean;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->undoCount:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->undoing:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->canRedo:Landroidx/databinding/ObservableBoolean;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->redoCount:I

    if-lez v1, :cond_1

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->redoing:Z

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->undoCount:I

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->redoCount:I

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->undoing:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->redoing:Z

    return-void
.end method

.method public final getCanRedo()Landroidx/databinding/ObservableBoolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->canRedo:Landroidx/databinding/ObservableBoolean;

    return-object p0
.end method

.method public final getCanUndo()Landroidx/databinding/ObservableBoolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->canUndo:Landroidx/databinding/ObservableBoolean;

    return-object p0
.end method

.method public final getEnable()Landroidx/databinding/ObservableBoolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->enable:Landroidx/databinding/ObservableBoolean;

    return-object p0
.end method

.method public final guardRedoing()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->isRedoing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->setRedoing(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final guardUndoing()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->isUndoing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->setUndoing(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isRedoing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->redoing:Z

    return p0
.end method

.method public final isUndoing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->undoing:Z

    return p0
.end method

.method public final setCanRedo(Landroidx/databinding/ObservableBoolean;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableBoolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->canRedo:Landroidx/databinding/ObservableBoolean;

    return-void
.end method

.method public final setCanUndo(Landroidx/databinding/ObservableBoolean;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableBoolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->canUndo:Landroidx/databinding/ObservableBoolean;

    return-void
.end method

.method public final setEnable(Landroidx/databinding/ObservableBoolean;)V
    .locals 1
    .param p1    # Landroidx/databinding/ObservableBoolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->enable:Landroidx/databinding/ObservableBoolean;

    return-void
.end method

.method public final setRedoing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->redoing:Z

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->updateStatus()V

    return-void
.end method

.method public final setUndoing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->undoing:Z

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->updateStatus()V

    return-void
.end method

.method public final updateCount(II)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->undoCount:I

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->redoCount:I

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->updateStatus()V

    return-void
.end method
