.class public final Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0006\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;",
        "",
        "()V",
        "getDefaultSelectElements",
        "Lcom/onyx/android/sdk/base/extension/IntList;",
        "getLassoElementsOption",
        "Lcom/onyx/android/sdk/data/utils/JSONListOption;",
        "",
        "getLassoType",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LASSO_FREE_NAME:Ljava/lang/String; = "free_lasso"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LASSO_RECTANGLE_NAME:Ljava/lang/String; = "rectangular_lasso"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LASSO_TYPE_FREE:I = 0x0

.field public static final LASSO_TYPE_RECTANGLE:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->Companion:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultSelectElements(Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;)Lcom/onyx/android/sdk/base/extension/IntList;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->getDefaultSelectElements()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p0

    return-object p0
.end method

.method private final getDefaultSelectElements()Lcom/onyx/android/sdk/base/extension/IntList;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/LassoElementConst;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/LassoElementConst;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/LassoElementConst;->allElements()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getLassoElementsOption()Lcom/onyx/android/sdk/data/utils/JSONListOption;
    .locals 8
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

    new-instance v7, Lcom/onyx/android/sdk/data/utils/JSONListOption;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "ONYX_NOTE_EDIT_LASSO_ELEMENT"

    const/4 v3, 0x0

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$getLassoElementsOption$1;

    invoke-direct {v4, p0}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$getLassoElementsOption$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/data/utils/JSONListOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final getLassoType()I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->Companion:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;->getLassoTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p0

    return p0
.end method
