.class public final synthetic Lcom/google/android/gms/measurement/internal/zzlu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic e:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->e:Lcom/google/android/gms/measurement/internal/zzls;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlu;->e:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzls;->g()V

    return-void
.end method
