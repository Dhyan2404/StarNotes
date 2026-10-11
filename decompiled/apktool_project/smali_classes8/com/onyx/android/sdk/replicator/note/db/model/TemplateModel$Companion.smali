.class public final Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1855#2:221\n1855#2,2:222\n1856#2:224\n*S KotlinDebug\n*F\n+ 1 TemplateModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion\n*L\n150#1:221\n151#1:222,2\n150#1:224\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\t\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\"\u0010\u000c\u001a\u0004\u0018\u00010\u000b*\u00020\r2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;",
        "",
        "()V",
        "updateMarginTemplate",
        "",
        "geoLayoutMargin",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;",
        "isThumbnail",
        "",
        "updateTemplateFromStandard",
        "geoLayout",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "loadGeoLayoutFromTemplateModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nTemplateModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1855#2:221\n1855#2,2:222\n1856#2:224\n*S KotlinDebug\n*F\n+ 1 TemplateModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion\n*L\n150#1:221\n151#1:222,2\n150#1:224\n*E\n"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;-><init>()V

    return-void
.end method

.method public static synthetic loadGeoLayoutFromTemplateModel$default(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;ZILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;->loadGeoLayoutFromTemplateModel(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;Z)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic updateMarginTemplate$default(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;->updateMarginTemplate(Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;Z)V

    return-void
.end method

.method public static synthetic updateTemplateFromStandard$default(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;Lcom/onyx/android/sdk/genericshape/GeoLayout;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;->updateTemplateFromStandard(Lcom/onyx/android/sdk/genericshape/GeoLayout;Z)V

    return-void
.end method


# virtual methods
.method public final loadGeoLayoutFromTemplateModel(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;Z)Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurResName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurRelativePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurResourceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x30e61ebd    # -2.5816768E9f

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const v2, -0x226fa302

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x7ea5603f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "dynamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverPaperExtKt;->isCloud(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "json"

    invoke-static {p2, v0, v4}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;->loadDynamicLayoutFromFile(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/onyx/android/sdk/genericshape/GeoLayout;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;->loadDynamicLayoutFromRes(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string p0, "picture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverPaperExtKt;->isCloud(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "svg"

    invoke-static {p2, p0, v4}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;->createVectorGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;->createImageGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    goto :goto_1

    :cond_7
    const-string p2, "vector"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    :goto_0
    move-object p0, v3

    goto :goto_1

    :cond_8
    sget-object p2, Lcom/onyx/android/sdk/genericshape/GeoLayout;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;->createResVectorGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_9

    return-object v3

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/replicator/R$dimen;->dynamic_radius:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setRadius(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurSpacing()F

    move-result p2

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_b

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurSpacing()F

    move-result p2

    sget v2, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v2

    div-float/2addr p2, v2

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurSpacing()F

    move-result p2

    :goto_2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    :cond_b
    if-eqz p3, :cond_c

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->loadSpaceValuePxThumbnail()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->loadSpaceValuePx()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p2

    if-nez p2, :cond_e

    goto :goto_5

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_4

    :cond_f
    move v2, v1

    :goto_4
    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setSpacing(F)V

    :goto_5
    sget-object p2, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->getPagePaddingLeft()F

    move-result v2

    goto :goto_6

    :cond_10
    move v2, v1

    :goto_6
    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->getPagePaddingRight()F

    move-result v3

    goto :goto_7

    :cond_11
    move v3, v1

    :goto_7
    invoke-virtual {p2, v3}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->getPagePaddingTop()F

    move-result v4

    goto :goto_8

    :cond_12
    move v4, v1

    :goto_8
    invoke-virtual {p2, v4}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->getPagePaddingBottom()F

    move-result v5

    goto :goto_9

    :cond_13
    move v5, v1

    :goto_9
    invoke-virtual {p2, v5}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p2

    if-eqz p3, :cond_17

    cmpl-float p3, v2, v1

    if-lez p3, :cond_14

    sget p3, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p3

    div-float/2addr v2, p3

    :cond_14
    cmpl-float p3, v3, v1

    if-lez p3, :cond_15

    sget p3, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p3

    div-float/2addr v3, p3

    :cond_15
    cmpl-float p3, v4, v1

    if-lez p3, :cond_16

    sget p3, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p3

    div-float/2addr v4, p3

    :cond_16
    cmpl-float p3, p2, v1

    if-lez p3, :cond_17

    sget p3, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p3

    div-float/2addr p2, p3

    :cond_17
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p3

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object p3

    if-eqz p3, :cond_18

    invoke-virtual {p3, v2, v4, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_18
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p2

    new-instance p3, Lcom/onyx/android/sdk/genericshape/FillAttr;

    invoke-direct {p3}, Lcom/onyx/android/sdk/genericshape/FillAttr;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurFillColor()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/onyx/android/sdk/genericshape/FillAttr;->setColor(I)V

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/genericshape/Properties;->setFillAttr(Lcom/onyx/android/sdk/genericshape/FillAttr;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p2

    new-instance p3, Lcom/onyx/android/sdk/genericshape/StrokeAttr;

    invoke-direct {p3}, Lcom/onyx/android/sdk/genericshape/StrokeAttr;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurStrokeColor()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->setColor(I)V

    sget v1, Lcom/onyx/android/sdk/replicator/R$dimen;->dynamic_line_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->setWidth(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurColorTransformMode()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->setColorTransformMode(I)V

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/genericshape/Properties;->setStrokeAttr(Lcom/onyx/android/sdk/genericshape/StrokeAttr;)V

    return-object p0
.end method

.method public final updateMarginTemplate(Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;Z)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "geoLayoutMargin"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->getGeometries()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;->getGeometries()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;->updateTemplateFromStandard(Lcom/onyx/android/sdk/genericshape/GeoLayout;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateTemplateFromStandard(Lcom/onyx/android/sdk/genericshape/GeoLayout;Z)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPaddingLeft()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPaddingRight()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPaddingTop()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPaddingBottom()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v5

    if-eqz p2, :cond_1

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/replicator/R$dimen;->dynamic_radius:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v7

    sget v8, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v6, v8}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v6

    mul-float/2addr v7, v6

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/replicator/R$dimen;->dynamic_radius:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v7

    :goto_0
    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/genericshape/Properties;->setRadius(F)V

    if-eqz p2, :cond_5

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-lez v6, :cond_2

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v6

    div-float/2addr v1, v6

    :cond_2
    cmpl-float v6, v2, v5

    if-lez v6, :cond_3

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v6

    div-float/2addr v2, v6

    :cond_3
    cmpl-float v6, v3, v5

    if-lez v6, :cond_4

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v6

    div-float/2addr v3, v6

    :cond_4
    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v5

    div-float/2addr v4, v5

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxActual(F)F

    move-result v6

    add-float/2addr v1, v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxActual(F)F

    move-result v6

    add-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxActual(F)F

    move-result v6

    add-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxActual(F)F

    move-result p0

    add-float/2addr v4, p0

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getStrokeAttr()Lcom/onyx/android/sdk/genericshape/StrokeAttr;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getLayoutType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LayoutDivider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/replicator/R$dimen;->dynamic_divider_width:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    sget v0, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p1

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/replicator/R$dimen;->dynamic_divider_width:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/replicator/R$dimen;->dynamic_line_width:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    sget v0, Lcom/onyx/android/sdk/data/R$dimen;->template_thumbnail_ratio:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p1

    :goto_1
    mul-float/2addr p2, p1

    goto :goto_2

    :cond_9
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/replicator/R$dimen;->dynamic_line_width:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    :goto_2
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->setWidth(F)V

    :cond_a
    return-void
.end method
