.class public final synthetic Lcom/sunia/HTREnginev2/ftj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# instance fields
.field public final synthetic a:Landroidx/navigation/NavController;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ftj;->a:Landroidx/navigation/NavController;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/ftj;->b:Z

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ftj;->a:Landroidx/navigation/NavController;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/ftj;->b:Z

    invoke-static {v0, p0, p1}, Landroidx/navigation/ui/NavigationUI;->f(Landroidx/navigation/NavController;ZLandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
