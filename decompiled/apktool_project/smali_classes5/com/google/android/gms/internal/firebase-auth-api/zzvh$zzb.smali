.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaje;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzvh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaje<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakr;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaky<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:I

.field private zzh:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaje;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzaje;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaje;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zza(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzg:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzva;)V
    .locals 0

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzf:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zza(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzva;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzva;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)V
    .locals 0

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzh:I

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaje;->zzm()Lcom/google/android/gms/internal/firebase-auth-api/zzaje$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb$zza;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzg:I

    return p0
.end method

.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvi;->zza:[I

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
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    if-nez p0, :cond_1

    .line 6
    const-class p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    monitor-enter p1

    .line 7
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    if-nez p0, :cond_0

    .line 8
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaje$zzc;

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaje$zzc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaje;)V

    .line 9
    sput-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

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
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    return-object p0

    :pswitch_4
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zzh"

    .line 12
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaje;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakp;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvi;)V

    return-object p0

    .line 15
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvh$zzb;-><init>()V

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
