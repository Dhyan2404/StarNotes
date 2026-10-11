.class public final Lcom/google/android/gms/internal/fido/zzbg;
.super Lcom/google/android/gms/internal/fido/zzbh;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Ljava/util/Comparator;

.field private static final zzd:Lcom/google/android/gms/internal/fido/zzbg;


# instance fields
.field private final transient zze:Lcom/google/android/gms/internal/fido/zzbu;

.field private final transient zzf:Lcom/google/android/gms/internal/fido/zzaz;

.field private final transient zzg:Lcom/google/android/gms/internal/fido/zzbg;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/fido/zzbp;->zza:Lcom/google/android/gms/internal/fido/zzbp;

    sput-object v0, Lcom/google/android/gms/internal/fido/zzbg;->zzc:Ljava/util/Comparator;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzbg;

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbi;->zzq(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzbu;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/fido/zzaz;->zzd:I

    sget-object v2, Lcom/google/android/gms/internal/fido/zzbs;->zza:Lcom/google/android/gms/internal/fido/zzaz;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/fido/zzbg;-><init>(Lcom/google/android/gms/internal/fido/zzbu;Lcom/google/android/gms/internal/fido/zzaz;Lcom/google/android/gms/internal/fido/zzbg;)V

    sput-object v1, Lcom/google/android/gms/internal/fido/zzbg;->zzd:Lcom/google/android/gms/internal/fido/zzbg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fido/zzbu;Lcom/google/android/gms/internal/fido/zzaz;Lcom/google/android/gms/internal/fido/zzbg;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/fido/zzbg;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzbh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    iput-object p3, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzg:Lcom/google/android/gms/internal/fido/zzbg;

    return-void
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/fido/zzbg;)Lcom/google/android/gms/internal/fido/zzaz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    return-object p0
.end method

.method public static zzf(Ljava/util/Map;)Lcom/google/android/gms/internal/fido/zzbg;
    .locals 11

    sget-object v0, Lcom/google/android/gms/internal/fido/zzbg;->zzc:Ljava/util/Comparator;

    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    sget-object v3, Lcom/google/android/gms/internal/fido/zzba;->zza:[Ljava/util/Map$Entry;

    instance-of v4, p0, Ljava/util/Collection;

    if-nez v4, :cond_2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object p0, v4

    :cond_2
    invoke-interface {p0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    array-length v3, p0

    if-eqz v3, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v3, v2, :cond_6

    new-array v6, v3, [Ljava/lang/Object;

    new-array v7, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    :goto_2
    if-ge v5, v3, :cond_5

    aget-object v1, p0, v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fido/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v6, v5

    aput-object v1, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/fido/zzbd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/fido/zzbd;-><init>(Ljava/util/Comparator;)V

    invoke-static {p0, v5, v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    aget-object v1, p0, v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v7, v5

    aget-object v5, v6, v5

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/fido/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    if-ge v2, v3, :cond_5

    add-int/lit8 v1, v2, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/fido/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v6, v2

    aput-object v10, v7, v2

    invoke-interface {v0, v8, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v2, v2, 0x1

    move-object v8, v9

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple entries with same key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/fido/zzbg;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzbu;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/fido/zzaz;->zzh([Ljava/lang/Object;I)Lcom/google/android/gms/internal/fido/zzaz;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/fido/zzbu;-><init>(Lcom/google/android/gms/internal/fido/zzaz;Ljava/util/Comparator;)V

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/fido/zzaz;->zzh([Ljava/lang/Object;I)Lcom/google/android/gms/internal/fido/zzaz;

    move-result-object v0

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/gms/internal/fido/zzbg;-><init>(Lcom/google/android/gms/internal/fido/zzbu;Lcom/google/android/gms/internal/fido/zzaz;Lcom/google/android/gms/internal/fido/zzbg;)V

    goto :goto_4

    :cond_6
    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/internal/fido/zzbg;

    new-instance v3, Lcom/google/android/gms/internal/fido/zzbu;

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzaz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzaz;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/fido/zzbu;-><init>(Lcom/google/android/gms/internal/fido/zzaz;Ljava/util/Comparator;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzaz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzaz;

    move-result-object p0

    invoke-direct {v2, v3, p0, v4}, Lcom/google/android/gms/internal/fido/zzbg;-><init>(Lcom/google/android/gms/internal/fido/zzbu;Lcom/google/android/gms/internal/fido/zzaz;Lcom/google/android/gms/internal/fido/zzbg;)V

    move-object p0, v2

    goto :goto_4

    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbg;->zzg(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public static zzg(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzbg;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/fido/zzbp;->zza:Lcom/google/android/gms/internal/fido/zzbp;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/fido/zzbg;->zzd:Lcom/google/android/gms/internal/fido/zzbg;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fido/zzbg;

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbi;->zzq(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzbu;

    move-result-object p0

    sget v1, Lcom/google/android/gms/internal/fido/zzaz;->zzd:I

    sget-object v1, Lcom/google/android/gms/internal/fido/zzbs;->zza:Lcom/google/android/gms/internal/fido/zzaz;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/fido/zzbg;-><init>(Lcom/google/android/gms/internal/fido/zzbu;Lcom/google/android/gms/internal/fido/zzaz;Lcom/google/android/gms/internal/fido/zzbg;)V

    return-object v0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/fido/zzbg;)Lcom/google/android/gms/internal/fido/zzbu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    return-object p0
.end method

.method private final zzl(II)Lcom/google/android/gms/internal/fido/zzbg;
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbi;->zza:Ljava/util/Comparator;

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbg;->zzg(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/fido/zzbg;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/fido/zzbu;->zzu(II)Lcom/google/android/gms/internal/fido/zzbu;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzaz;->zzg(II)Lcom/google/android/gms/internal/fido/zzaz;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/fido/zzbg;-><init>(Lcom/google/android/gms/internal/fido/zzbu;Lcom/google/android/gms/internal/fido/zzaz;Lcom/google/android/gms/internal/fido/zzbg;)V

    return-object v0
.end method


# virtual methods
.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzbg;->zzj(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbg;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzbg;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbn;->zza(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbi;->zza:Ljava/util/Comparator;

    return-object p0
.end method

.method public final synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbi;->zzl()Lcom/google/android/gms/internal/fido/zzbi;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzg:Lcom/google/android/gms/internal/fido/zzbg;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbi;->zza:Ljava/util/Comparator;

    instance-of v0, p0, Lcom/google/android/gms/internal/fido/zzbr;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/fido/zzbr;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fido/zzat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzat;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbr;->zza()Lcom/google/android/gms/internal/fido/zzbr;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbg;->zzg(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzbg;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzbi;->zzl()Lcom/google/android/gms/internal/fido/zzbi;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fido/zzbu;

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzaz;->zzf()Lcom/google/android/gms/internal/fido/zzaz;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/fido/zzbg;-><init>(Lcom/google/android/gms/internal/fido/zzbu;Lcom/google/android/gms/internal/fido/zzaz;Lcom/google/android/gms/internal/fido/zzbg;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzba;->zzc()Lcom/google/android/gms/internal/fido/zzbc;

    move-result-object p0

    return-object p0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzba;->zzc()Lcom/google/android/gms/internal/fido/zzbc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbc;->zzi()Lcom/google/android/gms/internal/fido/zzaz;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbi;->first()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzbg;->zzh(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbg;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzbg;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbn;->zza(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    :catch_0
    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/fido/zzbu;->zzd:Lcom/google/android/gms/internal/fido/zzaz;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzbi;->zza:Ljava/util/Comparator;

    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzbg;->zzh(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzbg;->zzh(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzbg;->zzj(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbg;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzbg;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbn;->zza(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    return-object p0
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzba;->zzc()Lcom/google/android/gms/internal/fido/zzbc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzbc;->zzi()Lcom/google/android/gms/internal/fido/zzaz;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbi;->last()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzbg;->zzh(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbg;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzbg;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbn;->zza(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    return-object p0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fido/zzbg;->zzi(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/fido/zzbg;->zzi(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzbg;->zzj(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzbg;->zzj(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/fido/zzav;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/fido/zzbc;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzba;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/fido/zzbt;->zza:Lcom/google/android/gms/internal/fido/zzbt;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fido/zzbf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzbf;-><init>(Lcom/google/android/gms/internal/fido/zzbg;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final synthetic zzd()Lcom/google/android/gms/internal/fido/zzbc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    return-object p0
.end method

.method public final zzh(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzbu;->zzs(Ljava/lang/Object;Z)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/fido/zzbg;->zzl(II)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0
.end method

.method public final zzi(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzbi;->zza:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/fido/zzbg;->zzh(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzbg;->zzj(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "expected fromKey <= toKey but %s > %s"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/fido/zzaq;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzj(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzbg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzbg;->zze:Lcom/google/android/gms/internal/fido/zzbu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzbu;->zzt(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzbg;->zzf:Lcom/google/android/gms/internal/fido/zzaz;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzbg;->zzl(II)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    return-object p0
.end method
