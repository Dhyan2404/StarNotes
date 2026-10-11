.class public final Lcom/google/android/gms/internal/measurement/zzfr$zzc;
.super Lcom/google/android/gms/internal/measurement/zzjt;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfr$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfr$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfr$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfr$zzc;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzfr$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzi:I

    return p0
.end method

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p0, :cond_1

    .line 6
    const-class p1, Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    monitor-enter p1

    .line 7
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p0, :cond_0

    .line 8
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 9
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    return-object p0

    :pswitch_4
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zzh"

    const-string v0, "zzi"

    .line 12
    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1004\u0003"

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfw;)V

    return-object p0

    .line 15
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfr$zzc;-><init>()V

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

.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzg:Z

    return p0
.end method

.method public final zze()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzh:Z

    return p0
.end method

.method public final zzf()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzg()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzh()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
