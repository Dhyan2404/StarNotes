.class public final enum Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

.field private static final zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbul;

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;


# instance fields
.field private final zzj:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    const-string v2, "SUBSCRIBED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    const-string v3, "DOWNLOAD_IN_PROGRESS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    const-string v4, "DOWNLOAD_FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    const-string v5, "DOWNLOAD_COMPLETE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    const-string v6, "CORRUPTED"

    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    const-string v9, "INTERNAL_ERROR"

    invoke-direct {v6, v9, v8, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzi:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbul;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzj:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzi:[Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzj:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzj:I

    return p0
.end method
