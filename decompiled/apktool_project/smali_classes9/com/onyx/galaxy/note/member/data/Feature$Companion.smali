.class public final Lcom/onyx/galaxy/note/member/data/Feature$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/member/data/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChargeFeatureBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureBean.kt\ncom/onyx/galaxy/note/member/data/Feature$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1603#2,9:70\n1855#2:79\n1856#2:81\n1612#2:82\n1#3:80\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureBean.kt\ncom/onyx/galaxy/note/member/data/Feature$Companion\n*L\n33#1:70,9\n33#1:79\n33#1:81\n33#1:82\n33#1:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/member/data/Feature$Companion;",
        "",
        "()V",
        "fromGuideInfo",
        "Lcom/onyx/galaxy/note/member/data/Feature;",
        "guideInfo",
        "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChargeFeatureBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureBean.kt\ncom/onyx/galaxy/note/member/data/Feature$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1603#2,9:70\n1855#2:79\n1856#2:81\n1612#2:82\n1#3:80\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureBean.kt\ncom/onyx/galaxy/note/member/data/Feature$Companion\n*L\n33#1:70,9\n33#1:79\n33#1:81\n33#1:82\n33#1:80\n*E\n"
    }
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/member/data/Feature$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromGuideInfo(Lcom/onyx/android/sdk/data/common/data/GuideInfo;)Lcom/onyx/galaxy/note/member/data/Feature;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/data/common/data/GuideInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "guideInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/member/data/Feature;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/member/data/Feature;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/GuideInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/member/data/Feature;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/GuideInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/member/data/Feature;->setSummary(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/GuideInfo;->getResourceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/member/data/Feature;->setResourceType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/GuideInfo;->getResources()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/data/GuideInfoResource;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v3, Lcom/onyx/galaxy/note/member/data/FeatureResource;

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->clone(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/member/data/FeatureResource;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/member/data/Feature;->setResources(Ljava/util/List;)V

    return-object p0
.end method
