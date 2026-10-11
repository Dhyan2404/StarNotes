.class public final Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;",
        "",
        "",
        "activeScene",
        "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;",
        "getWorkFeature",
        "",
        "a",
        "Ljava/util/Map;",
        "featureMap",
        "Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;",
        "defaultFeature",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;->a:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;->b:Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/feature/work/DraftWorkFeature;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/feature/work/DraftWorkFeature;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/feature/work/PdfWorkFeature;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/feature/work/PdfWorkFeature;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getWorkFeature(I)Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;->b:Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;

    :cond_0
    return-object p1
.end method
