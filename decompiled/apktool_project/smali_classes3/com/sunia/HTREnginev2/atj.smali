.class public final synthetic Lcom/sunia/HTREnginev2/atj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic a:Landroidx/navigation/NavController;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;ZLcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/atj;->a:Landroidx/navigation/NavController;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/atj;->b:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/atj;->c:Lcom/google/android/material/navigation/NavigationView;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atj;->a:Landroidx/navigation/NavController;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/atj;->b:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atj;->c:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0, v1, p0, p1}, Landroidx/navigation/ui/NavigationUI;->c(Landroidx/navigation/NavController;ZLcom/google/android/material/navigation/NavigationView;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
