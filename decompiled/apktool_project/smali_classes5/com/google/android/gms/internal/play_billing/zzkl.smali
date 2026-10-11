.class public final Lcom/google/android/gms/internal/play_billing/zzkl;
.super Lcom/google/android/gms/internal/play_billing/zzhk;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzin;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzkl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzkl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzkl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzkl;->zzb:Lcom/google/android/gms/internal/play_billing/zzkl;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzkl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhk;->zzx(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzhk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzhk;-><init>()V

    return-void
.end method

.method public static zzB()Lcom/google/android/gms/internal/play_billing/zzkl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkl;->zzb:Lcom/google/android/gms/internal/play_billing/zzkl;

    return-object v0
.end method

.method public static bridge synthetic zzc()Lcom/google/android/gms/internal/play_billing/zzkl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkl;->zzb:Lcom/google/android/gms/internal/play_billing/zzkl;

    return-object v0
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    const/4 p2, 0x0

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzkl;->zzb:Lcom/google/android/gms/internal/play_billing/zzkl;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzkj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzkj;-><init>(Lcom/google/android/gms/internal/play_billing/zzkk;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzkl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzkl;-><init>()V

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzkl;->zzb:Lcom/google/android/gms/internal/play_billing/zzkl;

    const-string p1, "\u0004\u0000"

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhk;->zzu(Lcom/google/android/gms/internal/play_billing/zzim;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
