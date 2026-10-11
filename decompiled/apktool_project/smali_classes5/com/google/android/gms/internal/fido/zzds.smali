.class final Lcom/google/android/gms/internal/fido/zzds;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)Lcom/google/android/gms/internal/fido/zzdr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzdl;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzds;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)Lcom/google/android/gms/internal/fido/zzdr;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdu;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdu;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw p0
.end method

.method private static final zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)Lcom/google/android/gms/internal/fido/zzdr;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzdl;
        }
    .end annotation

    const-string v0, "Error in decoding CborValue from bytes"

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdu;->zzd()Lcom/google/android/gms/internal/fido/zzdt;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_10

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zzb()B

    move-result v3

    const/16 v4, -0x80

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    if-eq v3, v4, :cond_d

    const/16 v4, -0x60

    if-eq v3, v4, :cond_6

    const/16 v4, -0x40

    if-eq v3, v4, :cond_5

    const/16 v4, -0x20

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0x40

    if-eq v3, v4, :cond_1

    const/16 v4, 0x60

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdu;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4, p0, p1}, Lcom/google/android/gms/internal/fido/zzds;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzdp;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fido/zzdp;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zzc()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentifiable major type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdu;->zzg()[B

    move-result-object v1

    array-length v3, v1

    int-to-long v4, v3

    invoke-static {v2, v4, v5, p0, p1}, Lcom/google/android/gms/internal/fido/zzds;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzdk;

    invoke-static {v1, v7, v3}, Lcom/google/android/gms/internal/fido/zzcz;->zzl([BII)Lcom/google/android/gms/internal/fido/zzcz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Lcom/google/android/gms/internal/fido/zzcz;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdu;->zzb()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    move-wide v5, v3

    goto :goto_0

    :cond_3
    not-long v5, v3

    :goto_0
    invoke-static {v2, v5, v6, p0, p1}, Lcom/google/android/gms/internal/fido/zzds;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzdm;

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/fido/zzdm;-><init>(J)V

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdu;->zzf()Z

    move-result p0

    new-instance p1, Lcom/google/android/gms/internal/fido/zzdj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/fido/zzdj;-><init>(Z)V

    return-object p1

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdl;

    const-string p1, "Tags are currently unsupported"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdu;->zzc()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-gtz v1, :cond_c

    invoke-static {v2, v3, v4, p0, p1}, Lcom/google/android/gms/internal/fido/zzds;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)V

    long-to-int v1, v3

    new-array v2, v1, [Lcom/google/android/gms/internal/fido/zzdn;

    const/4 v5, 0x0

    move v6, v7

    :goto_1
    int-to-long v8, v6

    cmp-long v8, v8, v3

    if-gez v8, :cond_9

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzds;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)Lcom/google/android/gms/internal/fido/zzdr;

    move-result-object v8

    if-eqz v5, :cond_8

    invoke-interface {v8, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdh;

    const-string p1, "Keys in CBOR Map not in strictly ascending natural order:\nPrevious key: %s\nCurrent key: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdh;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/fido/zzdn;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzds;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)Lcom/google/android/gms/internal/fido/zzdr;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/google/android/gms/internal/fido/zzdn;-><init>(Lcom/google/android/gms/internal/fido/zzdr;Lcom/google/android/gms/internal/fido/zzdr;)V

    aput-object v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    move-object v5, v8

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    :goto_3
    if-ge v7, v1, :cond_b

    aget-object p1, v2, v7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdn;->zza()Lcom/google/android/gms/internal/fido/zzdr;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdn;->zza()Lcom/google/android/gms/internal/fido/zzdr;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdn;->zzb()Lcom/google/android/gms/internal/fido/zzdr;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdh;

    const-string p1, "Attempted to add duplicate key to canonical CBOR Map."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdh;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/fido/zzdo;

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbg;->zzf(Ljava/util/Map;)Lcom/google/android/gms/internal/fido/zzbg;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/fido/zzdo;-><init>(Lcom/google/android/gms/internal/fido/zzbg;)V

    return-object p1

    :cond_c
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdl;

    const-string p1, "Parser being asked to read a large CBOR map"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdu;->zza()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-gtz v1, :cond_f

    invoke-static {v2, v3, v4, p0, p1}, Lcom/google/android/gms/internal/fido/zzds;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)V

    long-to-int v1, v3

    new-array v1, v1, [Lcom/google/android/gms/internal/fido/zzdr;

    :goto_4
    int-to-long v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzds;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)Lcom/google/android/gms/internal/fido/zzdr;

    move-result-object v2

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdi;

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzaz;->zzi([Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzaz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdi;-><init>(Lcom/google/android/gms/internal/fido/zzaz;)V

    return-object p0

    :cond_f
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdl;

    const-string p1, "Parser being asked to read a large CBOR array"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/fido/zzdl;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_10
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdl;

    const-string p1, "Parser being asked to parse an empty input stream"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/fido/zzdl;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/fido/zzdl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzdu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p3, "Integer value "

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-wide v0, 0x100000000L

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdh;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0-4 additional bytes, but used 8"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdh;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-wide/32 v0, 0x10000

    cmp-long p0, p1, v0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdh;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0-2 additional bytes, but used 4"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdh;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const-wide/16 v0, 0x100

    cmp-long p0, p1, v0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdh;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0-1 additional bytes, but used 2"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdh;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const-wide/16 v0, 0x18

    cmp-long p0, p1, v0

    if-ltz p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/fido/zzdh;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0 additional bytes, but used 1"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzdh;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
