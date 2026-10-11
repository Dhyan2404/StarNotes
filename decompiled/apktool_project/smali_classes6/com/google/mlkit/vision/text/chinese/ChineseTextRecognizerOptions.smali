.class public final Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/mlkit/vision/text/chinese/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;

    iget-object p0, p0, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->b:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getConfigLabel()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "taser_tflite_gocrchinese_and_latin_mbv2_aksara_layout_gcn_mobile"

    return-object p0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getIsThickClient()Z
    .locals 1

    iget-object p0, p0, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "com.google.mlkit.dynamite.text.chinese"

    invoke-static {p0, v0}, Lcom/google/mlkit/vision/text/internal/TextRecognizerOptionsUtils;->isThickClient(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getLanguageHint()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "zh"

    return-object p0
.end method

.method public final getLoggingEventId()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->getIsThickClient()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x5efc

    return p0

    :cond_0
    const/16 p0, 0x5f0a

    return p0
.end method

.method public final getLoggingLanguageOption()I
    .locals 0
    .annotation build Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface$LanguageOption;
    .end annotation

    const/4 p0, 0x2

    return p0
.end method

.method public final getLoggingLibraryName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->getIsThickClient()Z

    move-result p0

    if-eq v0, p0, :cond_0

    const-string p0, "play-services-mlkit-text-recognition-chinese"

    return-object p0

    :cond_0
    const-string p0, "text-recognition-chinese"

    return-object p0
.end method

.method public final getLoggingLibraryNameForOptionalModule()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "optional-module-text-chinese"

    return-object p0
.end method

.method public final getModuleId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->getIsThickClient()Z

    move-result p0

    if-eq v0, p0, :cond_0

    const-string p0, "com.google.android.gms.mlkit_ocr_chinese"

    return-object p0

    :cond_0
    const-string p0, "com.google.mlkit.dynamite.text.chinese"

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;->b:Ljava/util/concurrent/Executor;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
