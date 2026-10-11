.class public final Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;",
        "",
        "()V",
        "getHwrRecognizerByName",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "recognizerName",
        "",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHwrRecognizerByName(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "UNKNOWN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->UNKNOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    goto :goto_1

    :sswitch_1
    const-string p0, "MS_OFF_SCREEN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_OFF_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    goto :goto_1

    :sswitch_2
    const-string p0, "SUNIA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    goto :goto_1

    :sswitch_3
    const-string p0, "ML"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    goto :goto_1

    :sswitch_4
    const-string p0, "MS_ON_SCREEN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_ON_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    goto :goto_1

    :sswitch_5
    const-string p0, "SUNIA_NAI_NBI"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA_NAI_NBI:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    goto :goto_1

    :sswitch_6
    const-string p0, "ML_MIXED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML_MIXED:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    goto :goto_1

    :sswitch_7
    const-string p0, "MS_CONTEXT_LESS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_CONTEXT_LESS:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    goto :goto_1

    :cond_8
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6d080fbe -> :sswitch_7
        -0x666ff2c5 -> :sswitch_6
        -0x53b74eaf -> :sswitch_5
        -0x2787b48d -> :sswitch_4
        0x99f -> :sswitch_3
        0x4b97044 -> :sswitch_2
        0x4bb2195 -> :sswitch_1
        0x19d1382a -> :sswitch_0
    .end sparse-switch
.end method
