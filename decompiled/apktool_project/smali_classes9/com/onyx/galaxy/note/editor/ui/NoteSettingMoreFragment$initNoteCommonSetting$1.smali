.class public final Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;",
        "onChangeTheme",
        "",
        "view",
        "Landroid/view/View;",
        "onMoreSettings",
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeTheme(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_OTHER_SETTINGS:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->isLeftSideShortcut(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    :goto_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->noteCommonSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;

    const-string v2, "noteCommonSetting"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->reverse()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "editorBundle"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_2
    invoke-direct {v1, v2, v0, v3}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    const-string p1, "click_galaxy_docsSetting_changeTheme_0001"

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$reportEvent(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onMoreSettings()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/onyx/galaxy/note/settings/ui/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "menuName"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    const-string v0, "click_galaxy_systemSetting_0001"

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$reportEvent(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Ljava/lang/String;)V

    return-void
.end method
