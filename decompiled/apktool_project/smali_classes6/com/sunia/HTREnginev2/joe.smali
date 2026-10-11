.class public Lcom/sunia/HTREnginev2/joe;
.super Lcom/sunia/HTREnginev2/qqf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/qqf;-><init>(Lcom/google/android/material/textfield/a;)V

    return-void
.end method


# virtual methods
.method public s()V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qqf;->b:Lcom/google/android/material/textfield/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/a;->b0(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
