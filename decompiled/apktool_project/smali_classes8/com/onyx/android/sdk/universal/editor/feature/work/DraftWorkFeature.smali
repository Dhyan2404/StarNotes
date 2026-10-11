.class public final Lcom/onyx/android/sdk/universal/editor/feature/work/DraftWorkFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/feature/work/DraftWorkFeature;",
        "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;",
        "()V",
        "createBoxManager",
        "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;",
        "workBundle",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "scaleRange",
        "Lorg/apache/commons/lang3/Range;",
        "",
        "supportAutoScaleToViewport",
        "",
        "supportCoverPage",
        "supportMultiPage",
        "supportPageBackground",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "workBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/feature/work/DraftWorkFeature$createBoxManager$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/feature/work/DraftWorkFeature$createBoxManager$1;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            ")",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "workBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getCustomScaleRange()Lorg/apache/commons/lang3/Range;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/feature/work/DraftWorkFeature$scaleRange$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/feature/work/DraftWorkFeature$scaleRange$1;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/Range;

    return-object p0
.end method

.method public supportAutoScaleToViewport()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportCoverPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMultiPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportPageBackground()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public useFirstPageAsCoverPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature$DefaultImpls;->useFirstPageAsCoverPage(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z

    move-result p0

    return p0
.end method
