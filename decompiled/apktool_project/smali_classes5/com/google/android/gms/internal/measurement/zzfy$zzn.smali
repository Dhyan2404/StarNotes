.class public final Lcom/google/android/gms/internal/measurement/zzfy$zzn;
.super Lcom/google/android/gms/internal/measurement/zzjt;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfy$zzn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzn;",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzn;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/zzjz;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcg()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzg:Lcom/google/android/gms/internal/measurement/zzjz;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzn;I)V
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zze:I

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzf:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzn;Ljava/lang/Iterable;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzg:Lcom/google/android/gms/internal/measurement/zzjz;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzjz;)Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzg:Lcom/google/android/gms/internal/measurement/zzjz;

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzg:Lcom/google/android/gms/internal/measurement/zzjz;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzfy$zzn$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcc()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzn$zza;

    return-object v0
.end method

.method public static bridge synthetic zzd()Lcom/google/android/gms/internal/measurement/zzfy$zzn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzg:Lcom/google/android/gms/internal/measurement/zzjz;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zza(I)J
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzg:Lcom/google/android/gms/internal/measurement/zzjz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzb(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfx;->zza:[I

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p0, :cond_1

    .line 7
    const-class p1, Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    monitor-enter p1

    .line 8
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p0, :cond_0

    .line 9
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 10
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    return-object p0

    :pswitch_4
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string p2, "zzg"

    .line 13
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzn$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzge;)V

    return-object p0

    .line 16
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzn;-><init>()V

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

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzf:I

    return p0
.end method

.method public final zze()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzg:Lcom/google/android/gms/internal/measurement/zzjz;

    return-object p0
.end method

.method public final zzf()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
