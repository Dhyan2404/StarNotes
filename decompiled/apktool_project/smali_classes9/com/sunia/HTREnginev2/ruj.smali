.class public final synthetic Lcom/sunia/HTREnginev2/ruj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ruj;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ruj;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ruj;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ruj;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->c(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/view/View;)V

    return-void
.end method
