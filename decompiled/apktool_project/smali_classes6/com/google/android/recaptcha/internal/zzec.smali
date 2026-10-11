.class public final Lcom/google/android/recaptcha/internal/zzec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzeb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/recaptcha/internal/zzea;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final zzc:Lcom/google/android/recaptcha/internal/zzea;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private zzd:J


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/recaptcha/internal/zzeb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/recaptcha/internal/zzeb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzec;->zza:Lcom/google/android/recaptcha/internal/zzeb;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzea;

    const-wide/16 v3, 0xb

    const-wide/high16 v1, 0x4040000000000000L    # 32.0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    const-wide/high16 v7, 0x4048000000000000L    # 48.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v7, v5

    const-wide v5, 0x4deece66dL

    xor-long/2addr v5, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/recaptcha/internal/zzea;-><init>(JJJ)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzec;->zzb:Lcom/google/android/recaptcha/internal/zzea;

    return-void
.end method

.method public constructor <init>(JJLcom/google/android/recaptcha/internal/zzea;)V
    .locals 0
    .param p5    # Lcom/google/android/recaptcha/internal/zzea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/recaptcha/internal/zzec;->zzc:Lcom/google/android/recaptcha/internal/zzea;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/recaptcha/internal/zzec;->zzd:J

    return-void
.end method

.method public static final synthetic zzb()Lcom/google/android/recaptcha/internal/zzea;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzec;->zzb:Lcom/google/android/recaptcha/internal/zzea;

    return-object v0
.end method


# virtual methods
.method public final zza()J
    .locals 7

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzec;->zzc:Lcom/google/android/recaptcha/internal/zzea;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzea;->zzb()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/recaptcha/internal/zzec;->zzd:J

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzea;->zza()J

    move-result-wide v5

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzec;->zzc:Lcom/google/android/recaptcha/internal/zzea;

    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzea;->zza()J

    move-result-wide v2

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/recaptcha/internal/zzec;->zzd:J

    const-wide/16 v2, 0xff

    rem-long/2addr v0, v2

    return-wide v0
.end method
