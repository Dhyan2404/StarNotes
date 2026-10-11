.class public final synthetic Lcom/sunia/HTREnginev2/x1l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x1l;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    return-void
.end method


# virtual methods
.method public final onLongClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x1l;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
