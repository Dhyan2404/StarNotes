.class public final synthetic Lcom/sunia/HTREnginev2/ntn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

.field public final synthetic b:Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ntn;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ntn;->b:Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ntn;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ntn;->b:Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->x(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
