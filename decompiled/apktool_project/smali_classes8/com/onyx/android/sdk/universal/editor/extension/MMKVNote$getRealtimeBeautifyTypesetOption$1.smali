.class final Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$getRealtimeBeautifyTypesetOption$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getRealtimeBeautifyTypesetOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$getRealtimeBeautifyTypesetOption$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$getRealtimeBeautifyTypesetOption$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$getRealtimeBeautifyTypesetOption$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$getRealtimeBeautifyTypesetOption$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$getRealtimeBeautifyTypesetOption$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setEnableUnifiedParams(Z)V

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->INSTANCE:Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->ensureDefaultFontPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setTypeface(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->pt2px(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setFontSize(Ljava/lang/Float;)V

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setCharSpacing(Ljava/lang/Float;)V

    const v0, 0x3f99999a    # 1.2f

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setLineSpacing(Ljava/lang/Float;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote$getRealtimeBeautifyTypesetOption$1;->invoke()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    move-result-object p0

    return-object p0
.end method
