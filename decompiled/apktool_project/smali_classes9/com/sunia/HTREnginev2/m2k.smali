.class public final synthetic Lcom/sunia/HTREnginev2/m2k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m2k;->e:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m2k;->e:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->l(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
