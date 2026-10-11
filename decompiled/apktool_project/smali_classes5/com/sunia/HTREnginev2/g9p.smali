.class public final Lcom/sunia/HTREnginev2/g9p;
.super Lcom/sunia/HTREnginev2/aap;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaaj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaj;Lcom/google/android/gms/common/api/internal/zabf;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g9p;->b:Lcom/google/android/gms/common/api/internal/zaaj;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/aap;-><init>(Lcom/google/android/gms/common/api/internal/zabf;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g9p;->b:Lcom/google/android/gms/common/api/internal/zaaj;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaaj;->a(Lcom/google/android/gms/common/api/internal/zaaj;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabi;->o:Lcom/google/android/gms/common/api/internal/zabz;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/zabz;->zab(Landroid/os/Bundle;)V

    return-void
.end method
