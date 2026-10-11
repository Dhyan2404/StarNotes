.class public final synthetic Lcom/sunia/HTREnginev2/tjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tjn;->e:Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tjn;->f:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tjn;->e:Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tjn;->f:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;->l(Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    return-void
.end method
