.class public final Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initEditText$2",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener;",
        "onFocusChanged",
        "",
        "hasFocus",
        "",
        "onTitleChanged",
        "newTitle",
        "",
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initEditText$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initEditText$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    const-string p1, "click_galaxy_docsSetting_rename_0001"

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$reportEvent(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initEditText$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->access$getListener$p(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener;->onTitleChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
