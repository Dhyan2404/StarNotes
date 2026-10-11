.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvy;


# static fields
.field private static final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvk;


# instance fields
.field private final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvd;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvk;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvc;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvk;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbty;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbty;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvd;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvk;

    sget v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba:I

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvc;-><init>([Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvk;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvd;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvk;

    return-void
.end method


# virtual methods
.method public final zba(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;
    .locals 7

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba:I

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvd;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvk;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvk;->zbb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvj;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvj;->zbb()Z

    move-result p0

    if-nez p0, :cond_2

    sget p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba:I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvt;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvs;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuz;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuy;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbm()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvj;->zbc()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbts;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move-object v5, p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvi;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvh;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbl(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvj;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvs;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuy;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvh;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;

    move-result-object p0

    return-object p0

    :cond_2
    sget p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba:I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbm()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbts;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;

    move-result-object p1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvj;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvq;->zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvq;

    move-result-object p0

    return-object p0
.end method
