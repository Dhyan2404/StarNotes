.class public final synthetic Lcom/sunia/HTREnginev2/r4o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/constraintlayout/motion/widget/ViewTransition;

.field public final synthetic f:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r4o;->e:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r4o;->f:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r4o;->e:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r4o;->f:[Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    return-void
.end method
