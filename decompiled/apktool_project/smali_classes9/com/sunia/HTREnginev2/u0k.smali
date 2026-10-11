.class public final synthetic Lcom/sunia/HTREnginev2/u0k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u0k;->e:Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u0k;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/u0k;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u0k;->e:Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u0k;->f:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u0k;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->d(Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method
