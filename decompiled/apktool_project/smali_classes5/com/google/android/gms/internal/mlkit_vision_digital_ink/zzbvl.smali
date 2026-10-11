.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvk;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbua;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbua;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.h"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvk;-><init>([Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "messageInfoFactory"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;->zzc()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzG(Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvs;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;->zzb()Z

    move-result p0

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzB()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtu;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    move-result-object p1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzz()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    move-result-object p1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwb;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzB()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtu;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwb;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzB()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzz()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvq;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzA()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvq;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;

    move-result-object p0

    :goto_0
    return-object p0
.end method
