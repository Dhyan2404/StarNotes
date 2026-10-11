.class public final Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$configurationChangedListener$1;
.super Lcom/onyx/galaxy/note/common/view/SimpleComponentCallbacks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/PagePanelPopup$configurationChangedListener$1",
        "Lcom/onyx/galaxy/note/common/view/SimpleComponentCallbacks;",
        "onConfigurationChanged",
        "",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "note_overseasRelease"
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$configurationChangedListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/view/SimpleComponentCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$configurationChangedListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;->access$adjustPosition(Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;)V

    return-void
.end method
