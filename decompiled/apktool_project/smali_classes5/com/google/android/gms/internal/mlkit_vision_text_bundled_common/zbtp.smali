.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

.field public static final synthetic zbb:I

.field private static volatile zbc:Z

.field private static volatile zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;


# instance fields
.field private final zbe:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbe:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbe:Ljava/util/Map;

    return-void
.end method

.method public static zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba:I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    return-object v0
.end method

.method public static zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba:I

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtx;->zbb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbto;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbto;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbe:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;

    return-object p0
.end method
