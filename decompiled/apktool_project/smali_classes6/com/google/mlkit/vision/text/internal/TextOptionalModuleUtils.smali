.class public final Lcom/google/mlkit/vision/text/internal/TextOptionalModuleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)[Lcom/google/android/gms/common/Feature;
    .locals 2

    invoke-interface {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLanguageOption()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR:Lcom/google/android/gms/common/Feature;

    aput-object v1, p0, v0

    return-object p0

    :pswitch_0
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_COMMON:Lcom/google/android/gms/common/Feature;

    aput-object v1, p0, v0

    return-object p0

    :pswitch_1
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_KOREAN:Lcom/google/android/gms/common/Feature;

    aput-object v1, p0, v0

    return-object p0

    :pswitch_2
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_JAPANESE:Lcom/google/android/gms/common/Feature;

    aput-object v1, p0, v0

    return-object p0

    :pswitch_3
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_DEVANAGARI:Lcom/google/android/gms/common/Feature;

    aput-object v1, p0, v0

    return-object p0

    :pswitch_4
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_CHINESE:Lcom/google/android/gms/common/Feature;

    aput-object v1, p0, v0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
