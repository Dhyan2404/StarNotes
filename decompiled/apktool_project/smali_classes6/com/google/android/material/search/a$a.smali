.class public Lcom/google/android/material/search/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/a;->J(Lcom/google/android/material/search/SearchBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/material/search/a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/search/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/a$a;->e:Lcom/google/android/material/search/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/a$a;->e:Lcom/google/android/material/search/a;

    new-instance p1, Lcom/sunia/HTREnginev2/t6m;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/t6m;-><init>()V

    invoke-static {p0, p1}, Lcom/google/android/material/search/a;->d(Lcom/google/android/material/search/a;Lcom/google/android/material/search/a$g;)V

    return-void
.end method
