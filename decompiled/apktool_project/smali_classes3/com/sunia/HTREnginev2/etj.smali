.class public final synthetic Lcom/sunia/HTREnginev2/etj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Landroidx/navigation/NavController;

.field public final synthetic f:Landroidx/navigation/ui/AppBarConfiguration;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/etj;->e:Landroidx/navigation/NavController;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/etj;->f:Landroidx/navigation/ui/AppBarConfiguration;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/etj;->e:Landroidx/navigation/NavController;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/etj;->f:Landroidx/navigation/ui/AppBarConfiguration;

    invoke-static {v0, p0, p1}, Landroidx/navigation/ui/NavigationUI;->a(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;Landroid/view/View;)V

    return-void
.end method
