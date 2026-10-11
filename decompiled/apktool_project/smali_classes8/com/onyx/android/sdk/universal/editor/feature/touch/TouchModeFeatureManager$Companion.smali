.class public final Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;",
        "getCurrentTouchModeFeature",
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;",
        "getTouchModeFeature",
        "touchMode",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "isCurTouchModeSupportEdit",
        "",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentTouchModeFeature()Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->getTouchModeFeature(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    move-result-object p0

    return-object p0
.end method

.method public final getTouchModeFeature(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "touchMode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->access$getINSTANCE$cp()Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->getTouchModeFeature(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    move-result-object p0

    return-object p0
.end method

.method public final isCurTouchModeSupportEdit()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->getCurrentTouchModeFeature()Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;->supportEdit()Z

    move-result p0

    return p0
.end method
