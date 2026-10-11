.class public final Lcom/sunia/HTREnginev2/gdp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;


# static fields
.field public static final a:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/gdp;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gdp;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/gdp;->a:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zba(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcv;->zba(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
