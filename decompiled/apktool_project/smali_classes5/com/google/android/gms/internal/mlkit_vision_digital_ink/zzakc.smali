.class public Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakc;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzals;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju<",
        "TK;TV;>;",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzals<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient emptySet:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;ILjava/util/Comparator;)V
    .locals 0
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;I)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakc;->emptySet:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic zzu()Ljava/util/Collection;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
