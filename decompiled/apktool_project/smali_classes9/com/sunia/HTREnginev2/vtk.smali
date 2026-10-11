.class public final synthetic Lcom/sunia/HTREnginev2/vtk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vtk;->e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vtk;->e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->b(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;Landroid/view/View;)V

    return-void
.end method
