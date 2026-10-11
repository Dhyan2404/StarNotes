.class public final Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;",
        "",
        "()V",
        "getEraserAllContainsSwitchOption",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "getEraserAutoCancelSwitchOption",
        "getEraserElementsOnlyOption",
        "Lcom/onyx/android/sdk/data/utils/JSONListOption;",
        "",
        "getEraserTypeOption",
        "Lcom/onyx/android/sdk/data/utils/IntOption;",
        "getEraserWidth",
        "Lcom/onyx/android/sdk/data/utils/FloatOption;",
        "getPressure",
        "getPressurePercentage",
        "",
        "getPressureSwitchOption",
        "getScribbleEraseSwitchOption",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEraserAllContainsSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ONYX_NOTE_EDIT_ERASER_ALL_CONTAINS"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final getEraserAutoCancelSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ONYX_NOTE_EDIT_ERASER_AUTO_CANCEL"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final getEraserElementsOnlyOption()Lcom/onyx/android/sdk/data/utils/JSONListOption;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONListOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/JSONListOption;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "ONYX_NOTE_EDIT_ERASER_ELEMENT_ONLY"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/data/utils/JSONListOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final getEraserTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/IntOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ONYX_NOTE_EDIT_ERASER_TYPE"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/IntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final getEraserWidth()Lcom/onyx/android/sdk/data/utils/FloatOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/FloatOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ONYX_NOTE_EDIT_ERASER_WIDTH"

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/FloatOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;F)V

    return-object p0
.end method

.method public final getPressure()Lcom/onyx/android/sdk/data/utils/FloatOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/FloatOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ONYX_NOTE_EDIT_ERASER_PRESSURE"

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/FloatOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;F)V

    return-object p0
.end method

.method public final getPressurePercentage()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getPressure()Lcom/onyx/android/sdk/data/utils/FloatOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/FloatOption;->get()F

    move-result p0

    const/16 v0, 0x64

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public final getPressureSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ONYX_NOTE_EDIT_ERASER_PRESSURE_SWITCH"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final getScribbleEraseSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ONYX_NOTE_EDIT_ERASER_SCRATCH_ERASE"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object p0
.end method
