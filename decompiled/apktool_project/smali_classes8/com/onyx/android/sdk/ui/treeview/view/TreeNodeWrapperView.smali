.class public Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/view/ViewGroup;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->g:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->f:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->f:Landroid/view/ViewGroup;

    sget v2, Lcom/onyx/android/sdk/uicommon/R$id;->node_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->g:I

    invoke-direct {v1, v2, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    iget v6, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->g:I

    invoke-direct {v2, v1, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->e:Landroid/widget/LinearLayout;

    sget v2, Lcom/onyx/android/sdk/uicommon/R$id;->node_items:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getNodeContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public insertNodeView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/treeview/view/TreeNodeWrapperView;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
