.class public final Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;,
        Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004R\"\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;",
        "",
        "",
        "isHighQuality",
        "Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;",
        "getProvider",
        "getPageNormalProvider",
        "getPageHighQualityProvider",
        "",
        "",
        "a",
        "Ljava/util/Map;",
        "providerMap",
        "<init>",
        "()V",
        "Companion",
        "SliceRectProvider",
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
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_HIGH_QUALITY:Ljava/lang/String; = "page_high_quality"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_NORMAL:Ljava/lang/String; = "page_normal"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->Companion:Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion$instance$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->a:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/cache/PageNormalSliceRectProvider;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/cache/PageNormalSliceRectProvider;-><init>()V

    const-string v2, "page_normal"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->a:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/cache/PageHighQualitySliceRectProvider;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/cache/PageHighQualitySliceRectProvider;-><init>()V

    const-string v1, "page_high_quality"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->b:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final getPageHighQualityProvider()Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->a:Ljava/util/Map;

    const-string v0, "page_high_quality"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;

    return-object p0
.end method

.method public final getPageNormalProvider()Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->a:Ljava/util/Map;

    const-string v0, "page_normal"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;

    return-object p0
.end method

.method public final getProvider(Z)Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->getPageHighQualityProvider()Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->getPageNormalProvider()Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;

    move-result-object p0

    return-object p0
.end method
