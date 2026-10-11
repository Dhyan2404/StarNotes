.class public final Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;,
        Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;,
        Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEyesComforterFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EyesComforterFactory.kt\ncom/onyx/galaxy/note/settings/utils/EyesComforterFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1253#2,4:101\n*S KotlinDebug\n*F\n+ 1 EyesComforterFactory.kt\ncom/onyx/galaxy/note/settings/utils/EyesComforterFactory\n*L\n98#1:101,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0008J\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00040\u000bJ\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;",
        "",
        "()V",
        "DEFAULT_INTENSITY",
        "",
        "getColorMatrix",
        "Landroid/graphics/ColorMatrix;",
        "setting",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        "getDefaultSetting",
        "getIntensityMap",
        "",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;",
        "getSettings",
        "",
        "ColorMatrixStrategy",
        "DefaultColorMatrixStrategy",
        "EyesComforterSetting",
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
        "SMAP\nEyesComforterFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EyesComforterFactory.kt\ncom/onyx/galaxy/note/settings/utils/EyesComforterFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1253#2,4:101\n*S KotlinDebug\n*F\n+ 1 EyesComforterFactory.kt\ncom/onyx/galaxy/note/settings/utils/EyesComforterFactory\n*L\n98#1:101,4\n*E\n"
    }
.end annotation


# static fields
.field public static final DEFAULT_INTENSITY:F = 50.0f

.field public static final INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColorMatrix(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)Landroid/graphics/ColorMatrix;
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "setting"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getColorMatrixStrategy()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getIntensity()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;->createMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultSetting()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->getSettings()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    return-object p0
.end method

.method public final getIntensityMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->getSettings()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getType()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getIntensity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSettings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    return-object p0
.end method
