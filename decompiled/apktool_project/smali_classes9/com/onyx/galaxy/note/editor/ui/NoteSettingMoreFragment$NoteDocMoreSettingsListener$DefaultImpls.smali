.class public final Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onFocusChanged(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;Z)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener$DefaultImpls;->onFocusChanged(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener;Z)V

    return-void
.end method
