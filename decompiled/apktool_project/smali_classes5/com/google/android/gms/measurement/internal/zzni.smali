.class public final synthetic Lcom/google/android/gms/measurement/internal/zzni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic e:Lcom/sunia/HTREnginev2/fqp;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/fqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->e:Lcom/sunia/HTREnginev2/fqp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzni;->e:Lcom/sunia/HTREnginev2/fqp;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqp;->g:Lcom/sunia/HTREnginev2/gqp;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/fqp;->e:J

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/fqp;->f:J

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zzt()V

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p0

    const-string v5, "Application going to the background"

    invoke-virtual {p0, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zzk()Lcom/sunia/HTREnginev2/hlp;

    move-result-object p0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hlp;->t:Lcom/google/android/gms/measurement/internal/zzgz;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Z)V

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/measurement/internal/zznb;->zza(Z)V

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p0

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzcp:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0, v5, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zznb;->zza(ZZJ)Z

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/measurement/internal/o;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/measurement/internal/o;->e(J)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/measurement/internal/o;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/measurement/internal/o;->e(J)V

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0, v5, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zznb;->zza(ZZJ)Z

    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p0

    const-string v3, "Application backgrounded at: timestamp_millis"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzdd:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xjp;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzam()V

    :cond_2
    return-void
.end method
