.class public Lcom/onyx/engine/sdk/GlobalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STYLE_ALL:I = 0x4

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I


# instance fields
.field private cachePath:Ljava/lang/String;

.field private defaultFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private fontDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private mediaConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/MediaConfig;",
            ">;"
        }
    .end annotation
.end field

.field private resourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->defaultFonts:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->fontDirs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->mediaConfigs:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/GlobalConfig;->lambda$addDefaultFont$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/GlobalConfig;->lambda$addDefaultFont$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addDefaultFont$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$addDefaultFont$1(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addDefaultFont(ILjava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->defaultFonts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/w3h;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/w3h;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDefaultFont(ILjava/util/List;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/engine/sdk/GlobalConfig;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->defaultFonts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/v3h;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/v3h;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addFontDir(Ljava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 1

    iget-object v0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->fontDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMediaConfig(Lcom/onyx/engine/sdk/MediaConfig;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 1

    iget-object v0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->mediaConfigs:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/onyx/engine/sdk/Utils;->safelyAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->cachePath:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultFonts()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->defaultFonts:Ljava/util/Map;

    return-object p0
.end method

.method public getFontDirs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->fontDirs:Ljava/util/List;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/MediaConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->mediaConfigs:Ljava/util/List;

    return-object p0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->resourcePath:Ljava/lang/String;

    return-object p0
.end method

.method public isSetDefaultFonts()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->defaultFonts:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetResourcePath()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->resourcePath:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCachePath(Ljava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/GlobalConfig;->cachePath:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultFont(ILjava/util/List;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/engine/sdk/GlobalConfig;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/engine/sdk/GlobalConfig;->defaultFonts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDefaultFonts(Ljava/util/Map;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/onyx/engine/sdk/GlobalConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/GlobalConfig;->defaultFonts:Ljava/util/Map;

    return-object p0
.end method

.method public setFontDirs(Ljava/util/List;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/engine/sdk/GlobalConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/GlobalConfig;->fontDirs:Ljava/util/List;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/GlobalConfig;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaConfigs(Ljava/util/List;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/MediaConfig;",
            ">;)",
            "Lcom/onyx/engine/sdk/GlobalConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/GlobalConfig;->mediaConfigs:Ljava/util/List;

    return-object p0
.end method

.method public setResourcePath(Ljava/lang/String;)Lcom/onyx/engine/sdk/GlobalConfig;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/GlobalConfig;->resourcePath:Ljava/lang/String;

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
