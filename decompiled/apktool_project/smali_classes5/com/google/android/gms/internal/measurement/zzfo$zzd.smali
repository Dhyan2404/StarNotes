.class public final Lcom/google/android/gms/internal/measurement/zzfo$zzd;
.super Lcom/google/android/gms/internal/measurement/zzjt;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;,
        Lcom/google/android/gms/internal/measurement/zzfo$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfo$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzfo$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzd;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfo$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Z

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzfo$zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzfo$zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzf:I

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->zza(I)Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;

    :cond_0
    return-object p0
.end method

.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfn;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 5
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p0, :cond_1

    .line 7
    const-class p1, Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    monitor-enter p1

    .line 8
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p0, :cond_0

    .line 9
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 10
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 11
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 12
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    return-object p0

    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->zzb()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzj"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfs;)V

    return-object p0

    .line 16
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzj:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzg:Z

    return p0
.end method

.method public final zzh()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzi()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zze:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzj()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zze:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzk()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zze:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzl()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zze:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
