.class public final synthetic Lcom/sunia/HTREnginev2/xsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Landroidx/navigation/NavDirections;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavDirections;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xsj;->e:Landroidx/navigation/NavDirections;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xsj;->e:Landroidx/navigation/NavDirections;

    invoke-static {p0, p1}, Landroidx/navigation/Navigation;->b(Landroidx/navigation/NavDirections;Landroid/view/View;)V

    return-void
.end method
