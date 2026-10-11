.class public final Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/theme/utils/SkinType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSkinType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkinType.kt\ncom/onyx/android/sdk/theme/utils/SkinType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,186:1\n3792#2:187\n4307#2,2:188\n1549#3:190\n1620#3,3:191\n766#3:194\n857#3,2:195\n*S KotlinDebug\n*F\n+ 1 SkinType.kt\ncom/onyx/android/sdk/theme/utils/SkinType$Companion\n*L\n151#1:187\n151#1:188,2\n153#1:190\n153#1:191,3\n159#1:194\n159#1:195,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;",
        "",
        "()V",
        "defaultThemeList",
        "",
        "Lcom/onyx/android/sdk/theme/SkinBean;",
        "getDisplayList",
        "themeList",
        "getThemeByType",
        "Lcom/onyx/android/sdk/theme/utils/SkinType;",
        "themeType",
        "",
        "isLightTheme",
        "",
        "sdk-skinChange_overseasRelease"
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
        "SMAP\nSkinType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkinType.kt\ncom/onyx/android/sdk/theme/utils/SkinType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,186:1\n3792#2:187\n4307#2,2:188\n1549#3:190\n1620#3,3:191\n766#3:194\n857#3,2:195\n*S KotlinDebug\n*F\n+ 1 SkinType.kt\ncom/onyx/android/sdk/theme/utils/SkinType$Companion\n*L\n151#1:187\n151#1:188,2\n153#1:190\n153#1:191,3\n159#1:194\n159#1:195,2\n*E\n"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getDisplayList$default(Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/theme/utils/SkinType;->Companion:Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;->defaultThemeList()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;->getDisplayList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final defaultThemeList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/theme/SkinBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->getThemeConfig()Lcom/onyx/android/sdk/theme/config/ThemeConfig;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/SkinType;->values()[Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/config/ThemeConfig;->getUnSupportStyleList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->getStyle()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/config/ThemeConfig;->getUnSupportThemeList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/theme/utils/SkinType;

    new-instance v9, Lcom/onyx/android/sdk/theme/SkinBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getTitle()I

    move-result v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeThumbnailRes()I

    move-result v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    move-result-object v6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/SkinType;->isFree()Z

    move-result v7

    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getDisplay()Z

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/theme/SkinBean;-><init>(IIILcom/onyx/android/sdk/theme/utils/ThemeStyle;ZZ)V

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public final getDisplayList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/theme/SkinBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/theme/SkinBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "themeList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/theme/SkinBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/SkinBean;->getDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final getThemeByType(I)Lcom/onyx/android/sdk/theme/utils/SkinType;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/SkinType;->values()[Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v4

    if-ne v4, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    return-object v3
.end method

.method public final isLightTheme(I)Z
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->DEFAULT:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    :goto_0
    move p0, v1

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->GREEN_GLOW:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    if-eqz p0, :cond_2

    :goto_2
    move p0, v1

    goto :goto_3

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->MIST_BLUE:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    if-ne p1, p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_3
    if-eqz p0, :cond_4

    :goto_4
    move p0, v1

    goto :goto_5

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->THE_NEAR_SHORE:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    if-ne p1, p0, :cond_5

    goto :goto_4

    :cond_5
    move p0, v0

    :goto_5
    if-eqz p0, :cond_6

    :goto_6
    move p0, v1

    goto :goto_7

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->CARD_ORCHID_NEBULA_VEIL:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    if-ne p1, p0, :cond_7

    goto :goto_6

    :cond_7
    move p0, v0

    :goto_7
    if-eqz p0, :cond_8

    :goto_8
    move p0, v1

    goto :goto_9

    :cond_8
    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->SUMMER:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    if-ne p1, p0, :cond_9

    goto :goto_8

    :cond_9
    move p0, v0

    :goto_9
    if-eqz p0, :cond_a

    :goto_a
    move p0, v1

    goto :goto_b

    :cond_a
    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->ONE_YEAR_ANNIVERSARY_CELEBRATION:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    if-ne p1, p0, :cond_b

    goto :goto_a

    :cond_b
    move p0, v0

    :goto_b
    if-eqz p0, :cond_c

    :goto_c
    move p0, v1

    goto :goto_d

    :cond_c
    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->LINGER:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    if-ne p1, p0, :cond_d

    goto :goto_c

    :cond_d
    move p0, v0

    :goto_d
    if-eqz p0, :cond_e

    :goto_e
    move v0, v1

    goto :goto_f

    :cond_e
    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->AUTO_SYSTEM:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    if-ne p1, p0, :cond_f

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->isSystemNightMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_e

    :cond_f
    :goto_f
    return v0
.end method
