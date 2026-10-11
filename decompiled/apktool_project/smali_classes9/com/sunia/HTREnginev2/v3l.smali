.class public final synthetic Lcom/sunia/HTREnginev2/v3l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v3l;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/v3l;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v3l;->e:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v3l;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;->a(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;Landroid/view/View;)V

    return-void
.end method
