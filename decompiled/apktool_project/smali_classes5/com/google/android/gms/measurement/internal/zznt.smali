.class public final enum Lcom/google/android/gms/measurement/internal/zznt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zznt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zznt;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zznt;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zznt;

.field private static final synthetic zzd:[Lcom/google/android/gms/measurement/internal/zznt;


# instance fields
.field private final zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v1, "GOOGLE_ANALYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zznt;->zza:Lcom/google/android/gms/measurement/internal/zznt;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v2, "GOOGLE_SIGNAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zznt;->zzb:Lcom/google/android/gms/measurement/internal/zznt;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v3, "SGTM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/zznt;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zznt;->zzd:[Lcom/google/android/gms/measurement/internal/zznt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zznt;->zze:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zznt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zznt;->zzd:[Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zznt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zznt;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/measurement/internal/zznt;->zze:I

    return p0
.end method
