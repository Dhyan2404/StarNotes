.class public final Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/genericshape/GeoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLayout$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,708:1\n1#2:709\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\tJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;",
        "",
        "()V",
        "HDPI_DIP_X",
        "",
        "STROKE_MIN_WIDTH",
        "createImageGeoLayout",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "relativePath",
        "",
        "createResVectorGeoLayout",
        "resName",
        "createVectorGeoLayout",
        "loadDynamicLayoutFromFile",
        "filePath",
        "loadDynamicLayoutFromRes",
        "sdk-genericshape_overseasRelease"
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
        "SMAP\nGeoLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLayout$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,708:1\n1#2:709\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createImageGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "relativePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/genericshape/PageMargins;

    invoke-direct {v1}, Lcom/onyx/android/sdk/genericshape/PageMargins;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setPageMargins(Lcom/onyx/android/sdk/genericshape/PageMargins;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/genericshape/ImageAttr;

    invoke-direct {v1}, Lcom/onyx/android/sdk/genericshape/ImageAttr;-><init>()V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/genericshape/ImageAttr;->setRelativePath(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setImageAttr(Lcom/onyx/android/sdk/genericshape/ImageAttr;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    const-string v0, "LayoutImage"

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/Properties;->setLayoutType(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createResVectorGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "resName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/genericshape/PageMargins;

    invoke-direct {v1}, Lcom/onyx/android/sdk/genericshape/PageMargins;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setPageMargins(Lcom/onyx/android/sdk/genericshape/PageMargins;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/genericshape/ResourceAttr;

    invoke-direct {v1}, Lcom/onyx/android/sdk/genericshape/ResourceAttr;-><init>()V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/genericshape/ResourceAttr;->setResName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setResourceAttr(Lcom/onyx/android/sdk/genericshape/ResourceAttr;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    const-string v0, "LayoutResVector"

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/Properties;->setLayoutType(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createVectorGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "relativePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/genericshape/PageMargins;

    invoke-direct {v1}, Lcom/onyx/android/sdk/genericshape/PageMargins;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setPageMargins(Lcom/onyx/android/sdk/genericshape/PageMargins;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/genericshape/ImageAttr;

    invoke-direct {v1}, Lcom/onyx/android/sdk/genericshape/ImageAttr;-><init>()V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/genericshape/ImageAttr;->setRelativePath(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setImageAttr(Lcom/onyx/android/sdk/genericshape/ImageAttr;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    const-string v0, "LayoutVector"

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/Properties;->setLayoutType(Ljava/lang/String;)V

    return-object p0
.end method

.method public final loadDynamicLayoutFromFile(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "filePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    return-object p0
.end method

.method public final loadDynamicLayoutFromRes(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "resName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getRawIdentifier(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RawResourceUtil;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->contentOfRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    return-object p0
.end method
