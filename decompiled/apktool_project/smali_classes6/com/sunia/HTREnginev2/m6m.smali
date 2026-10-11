.class public final synthetic Lcom/sunia/HTREnginev2/m6m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/search/SearchBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m6m;->a:Lcom/google/android/material/search/SearchBar;

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m6m;->a:Lcom/google/android/material/search/SearchBar;

    invoke-static {p0, p1}, Lcom/google/android/material/search/SearchBar;->A(Lcom/google/android/material/search/SearchBar;Z)V

    return-void
.end method
