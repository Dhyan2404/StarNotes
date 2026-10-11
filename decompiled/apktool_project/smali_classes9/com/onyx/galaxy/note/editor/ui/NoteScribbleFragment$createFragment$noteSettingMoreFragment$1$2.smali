.class public final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->G0(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$2",
        "Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;",
        "onTitleChanged",
        "",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener$DefaultImpls;->onFocusChanged(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;Z)V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsEditNoteNameEvent;

    sget-object v1, Lcom/onyx/android/sdk/data/EditNoteNameFrom;->OTHER_SETTING:Lcom/onyx/android/sdk/data/EditNoteNameFrom;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/event/StatisticsEditNoteNameEvent;-><init>(Lcom/onyx/android/sdk/data/EditNoteNameFrom;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->notifyDataSetChanged()V

    return-void
.end method
