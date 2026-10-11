.class public abstract Lcom/sunia/HTREnginev2/xpp;
.super Lcom/sunia/HTREnginev2/jop;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/internal/auth/zzas;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/jop;-><init>(ILcom/google/android/gms/auth/api/accounttransfer/zzk;)V

    new-instance p1, Lcom/sunia/HTREnginev2/yop;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/yop;-><init>(Lcom/sunia/HTREnginev2/xpp;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xpp;->e:Lcom/google/android/gms/internal/auth/zzas;

    return-void
.end method
