.class public final Lcom/sunia/HTREnginev2/vap;
.super Lcom/google/android/gms/common/internal/zag;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/content/Intent;

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vap;->e:Landroid/content/Intent;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vap;->f:Landroid/app/Activity;

    iput p3, p0, Lcom/sunia/HTREnginev2/vap;->g:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zag;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vap;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vap;->f:Landroid/app/Activity;

    iget p0, p0, Lcom/sunia/HTREnginev2/vap;->g:I

    invoke-virtual {v1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
