.class public final synthetic Lcom/sunia/HTREnginev2/i1l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i1l;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    return-void
.end method


# virtual methods
.method public final onItemViewType(ILjava/util/List;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i1l;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->n(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ILjava/util/List;)I

    move-result p0

    return p0
.end method
