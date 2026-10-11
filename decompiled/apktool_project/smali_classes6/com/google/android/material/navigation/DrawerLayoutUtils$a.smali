.class public Lcom/google/android/material/navigation/DrawerLayoutUtils$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/DrawerLayoutUtils;->getScrimCloseAnimatorListener(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroidx/drawerlayout/widget/DrawerLayout;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$a;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p2, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$a;->f:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$a;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$a;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$a;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    const/high16 p1, -0x67000000

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    return-void
.end method
