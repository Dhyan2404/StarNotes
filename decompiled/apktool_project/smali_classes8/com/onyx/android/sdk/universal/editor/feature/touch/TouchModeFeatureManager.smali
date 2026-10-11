.class public final Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "touchMode",
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;",
        "getTouchModeFeature",
        "",
        "a",
        "Ljava/util/Map;",
        "featureMap",
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;",
        "defaultFeature",
        "<init>",
        "()V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
            "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->c:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->a:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->b:Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->STYLUS_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/feature/touch/FingerTouchModeFeature;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/FingerTouchModeFeature;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->READING:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/feature/touch/ReadingTouchModeFeature;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/ReadingTouchModeFeature;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->c:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;

    return-object v0
.end method


# virtual methods
.method public final getTouchModeFeature(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "touchMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->b:Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;

    :cond_0
    return-object p1
.end method
