.class public final Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$NotePageSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$NotePageSettingChangedListener;",
        "close",
        "",
        "onCurrentPageChanged",
        "pageIndex",
        "",
        "onCurrentPageLinkCreated",
        "linkBean",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "onShowedAddTocView",
        "onShowedTemplateView",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$dismiss(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    return-void
.end method

.method public onCurrentPageChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$getCloseAction$p(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "closeAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCurrentPageLinkCreated(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "linkBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$dismiss(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    return-void
.end method

.method public onShowedAddTocView()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$dismiss(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    return-void
.end method

.method public onShowedTemplateView()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    const-string v1, "click_galaxy_docsSetting_changeTemplate_0001"

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$reportEvent(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$dismiss(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    return-void
.end method
