.class public final Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;
.super Lcom/google/android/gms/internal/measurement/zzjt;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfr$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    return-void
.end method

.method public static bridge synthetic zza()Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzft;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 4
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p0, :cond_1

    .line 6
    const-class p1, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    monitor-enter p1

    .line 7
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p0, :cond_0

    .line 8
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 9
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 10
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

    .line 11
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    return-object p0

    :pswitch_4
    const-string p0, "zze"

    const-string p1, "zzf"

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zzb()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p2

    const-string p3, "zzg"

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zzb()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001"

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfw;)V

    return-object p0

    .line 16
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;-><init>()V

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

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zza(I)Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zza:Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    :cond_0
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzf:I

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zza(I)Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zza:Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    :cond_0
    return-object p0
.end method
