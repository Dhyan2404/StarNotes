.class public final synthetic Lcom/google/android/gms/measurement/internal/zzgl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public synthetic a:Lcom/google/android/gms/measurement/internal/zzgm;

.field public synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzgm;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->a:Lcom/google/android/gms/measurement/internal/zzgm;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgl;->b:J

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->a:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgm;->b(JLjava/lang/Exception;)V

    return-void
.end method
