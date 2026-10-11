.class public final synthetic Lcom/sunia/HTREnginev2/z1l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z1l;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    iput p2, p0, Lcom/sunia/HTREnginev2/z1l;->b:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z1l;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    iget p0, p0, Lcom/sunia/HTREnginev2/z1l;->b:I

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->m(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;ILcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
