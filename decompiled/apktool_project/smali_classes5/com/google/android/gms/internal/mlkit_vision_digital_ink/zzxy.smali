.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/reflect/Method;

.field private static final zzb:Ljava/lang/reflect/Method;

.field private static final zzc:Ljava/lang/reflect/Method;

.field private static final zzd:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v5, "getInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v0, v8, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    invoke-virtual {v2, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v8, "getLong"

    new-array v9, v4, [Ljava/lang/Class;

    aput-object v0, v9, v6

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v9, "getBoolean"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v6

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v4, v7

    invoke-virtual {v2, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zza:Ljava/lang/reflect/Method;

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zzb:Ljava/lang/reflect/Method;

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zzc:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zzd:Ljava/lang/reflect/Method;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v5, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v5, v1

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v5, v3

    :goto_0
    move-object v8, v5

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v3, v1

    move-object v5, v3

    :goto_1
    move-object v8, v5

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zza:Ljava/lang/reflect/Method;

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zzb:Ljava/lang/reflect/Method;

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zzc:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zzd:Ljava/lang/reflect/Method;

    return-void

    :goto_3
    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zza:Ljava/lang/reflect/Method;

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zzb:Ljava/lang/reflect/Method;

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zzc:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zzd:Ljava/lang/reflect/Method;

    throw v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "tiktok_systrace"

    const-string p1, "false"

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxy;->zza:Ljava/lang/reflect/Method;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SystemProperties"

    const-string v1, "get error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
