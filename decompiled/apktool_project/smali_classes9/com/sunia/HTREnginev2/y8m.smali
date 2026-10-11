.class public final synthetic Lcom/sunia/HTREnginev2/y8m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y8m;->e:Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/y8m;->f:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/y8m;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8m;->e:Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/y8m;->f:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y8m;->g:Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;->k(Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
