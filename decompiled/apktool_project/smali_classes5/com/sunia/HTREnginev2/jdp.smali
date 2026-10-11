.class public final Lcom/sunia/HTREnginev2/jdp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;


# static fields
.field public static final a:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/jdp;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/jdp;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/jdp;->a:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zba(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method
