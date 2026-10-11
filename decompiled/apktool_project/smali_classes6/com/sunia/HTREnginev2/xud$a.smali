.class public Lcom/sunia/HTREnginev2/xud$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/xud;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/xud;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/xud;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xud$a;->e:Lcom/sunia/HTREnginev2/xud;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xud$a;->e:Lcom/sunia/HTREnginev2/xud;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qqf;->b:Lcom/google/android/material/textfield/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/a;->f0(Z)V

    return-void
.end method
