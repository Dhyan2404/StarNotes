.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

.field static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

.field static final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

.field public static final synthetic zzm:I


# instance fields
.field final zzd:Ljava/util/List;

.field final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

.field final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

.field final zzg:Ljava/util/Map;

.field final zzh:Ljava/util/List;

.field final zzi:Ljava/util/List;

.field final zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

.field final zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

.field final zzl:Ljava/util/List;

.field private final zzn:Ljava/lang/ThreadLocal;

.field private final zzo:Ljava/util/concurrent/ConcurrentMap;

.field private final zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

.field private final zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhm;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;Ljava/util/Map;ZZZZZZZZILjava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;Ljava/util/List;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p21

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/ThreadLocal;

    invoke-direct {v4}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzn:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzo:Ljava/util/concurrent/ConcurrentMap;

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    move-object v4, p2

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzg:Ljava/util/Map;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    const/4 v6, 0x1

    invoke-direct {v5, p3, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzh:Ljava/util/List;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzi:Ljava/util/List;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    move-object/from16 v6, p20

    iput-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzl:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzW:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 5
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static/range {p19 .. p19}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblf;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p18

    .line 8
    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzC:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 9
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzm:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 10
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 11
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 12
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 13
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzt:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzb(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v8

    .line 14
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbho;

    invoke-direct {v9, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbho;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;)V

    const-class v10, Ljava/lang/Double;

    invoke-static {v8, v10, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzb(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v8

    .line 15
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhp;

    invoke-direct {v9, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;)V

    const-class v10, Ljava/lang/Float;

    invoke-static {v8, v10, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzb(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v8

    .line 16
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static/range {p20 .. p20}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 18
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 19
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhq;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbin;

    invoke-direct {v8, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbin;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)V

    const-class v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v6

    .line 20
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhr;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbin;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbin;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)V

    const-class v6, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v2

    .line 21
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzs:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 22
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzx:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 23
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzE:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 24
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzG:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 25
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigDecimal;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzz:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v2

    .line 26
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigInteger;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzA:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v2

    .line 27
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjv;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzB:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v2

    .line 28
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzI:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 29
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzK:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 30
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzO:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 31
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzQ:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 32
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzU:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 33
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzM:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 34
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 35
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 36
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzS:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 37
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-boolean v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zza:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 39
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 40
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 41
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 42
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 43
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkt;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkt;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;)V

    .line 44
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbla;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbla;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Z)V

    .line 45
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;

    .line 46
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnb;->zzX:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    .line 47
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;

    move-object p3, v6

    move-object p4, v5

    move-object/from16 p5, p2

    move-object/from16 p6, p1

    move-object/from16 p7, v2

    move-object/from16 p8, p21

    invoke-direct/range {p3 .. p8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;Ljava/util/List;)V

    .line 48
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "false,factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzd:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhs;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhs;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhs;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzd:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    invoke-interface {v4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhs;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzn:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSON (${project.version}) cannot handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzn:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GSON cannot serialize "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;,
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzr()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo(Z)V

    return-object p0

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON ${project.version}): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_2
    move-exception p0

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p0

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_4
    move-exception p0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_3
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo(Z)V

    throw p0
.end method
