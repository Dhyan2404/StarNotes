.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/util/List;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

.field private final zzh:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhm;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzc:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zze:Ljava/util/List;

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzm:I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzh:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v19, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzd:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zze:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzd:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zze:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-boolean v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnv;->zza:Z

    new-instance v23, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

    move-object/from16 v1, v23

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

    new-instance v5, Ljava/util/HashMap;

    move-object v4, v5

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzc:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x2

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v17, v5

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzd:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v18, v5

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zze:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    move-object/from16 v20, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    move-object/from16 v21, v5

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v22, v5

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzh:Ljava/util/LinkedList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v22}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;Ljava/util/Map;ZZZZZZZZILjava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;Ljava/util/List;)V

    return-object v23
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

    return-object p0
.end method
