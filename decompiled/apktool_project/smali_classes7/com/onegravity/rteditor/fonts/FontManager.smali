.class public Lcom/onegravity/rteditor/fonts/FontManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_FONT_NAME:Ljava/lang/String; = "default"

.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
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

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/onegravity/rteditor/fonts/RTTypefaceSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "/system/font"

    const-string v1, "/data/fonts"

    const-string v2, "/system/fonts"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->a:[Ljava/lang/String;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->f:Ljava/util/Map;

    new-instance v0, Lcom/onegravity/rteditor/fonts/FontManager$1;

    invoke-direct {v0}, Lcom/onegravity/rteditor/fonts/FontManager$1;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->g:Lcom/onegravity/rteditor/fonts/RTTypefaceSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static addFontFace(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1

    .line 4
    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0, p0, p1}, Lcom/onegravity/rteditor/fonts/FontManager;->addFontFace(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static addFontFace(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeface(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/onegravity/rteditor/fonts/FontManager;->g:Lcom/onegravity/rteditor/fonts/RTTypefaceSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    sget-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->g:Lcom/onegravity/rteditor/fonts/RTTypefaceSet;

    new-instance v1, Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-direct {v1, p0, p2}, Lcom/onegravity/rteditor/fonts/RTTypeface;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, p1}, Lcom/onegravity/rteditor/fonts/RTTypeface;->setFontPath(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/uf;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->g(Landroid/content/res/Resources;)Ljava/util/Collection;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ttf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/u7n;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/onegravity/rteditor/fonts/FontManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    sget-object v4, Lcom/onegravity/rteditor/fonts/FontManager;->b:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/onegravity/rteditor/fonts/FontManager;->b:Ljava/util/Map;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onegravity/rteditor/fonts/FontManager;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/onegravity/rteditor/fonts/FontManager;->c:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sunia/HTREnginev2/u7n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-static {v9}, Lcom/onegravity/rteditor/fonts/FontManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/onegravity/rteditor/fonts/FontManager;->d:Ljava/util/Map;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/onegravity/rteditor/fonts/FontManager;->d:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static ensureLoadCustomFonts(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/onegravity/rteditor/fonts/FontManager;->g:Lcom/onegravity/rteditor/fonts/RTTypefaceSet;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Lcom/onegravity/rteditor/fonts/RTTypefaceSet;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v3, v4}, Lcom/onegravity/rteditor/fonts/FontManager;->addFontFace(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Lcom/onegravity/rteditor/fonts/FontManager;->e:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/onyx/android/sdk/base/utils/FontUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils;

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/base/utils/FontUtils;->isFontFile(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v6, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid font file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    const-class v8, Lcom/onegravity/rteditor/fonts/FontManager;

    invoke-virtual {v6, v8, v5, v7}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/base/utils/FontUtils;->loadTypefaceFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    sget-object v9, Lcom/onegravity/rteditor/fonts/FontManager;->f:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v7, v5}, Lcom/onyx/android/sdk/base/utils/FontUtils;->loadFontInfo(Ljava/io/File;)Lcom/onyx/android/sdk/base/data/font/FontInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFontName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {v6}, Lcom/onegravity/rteditor/fonts/FontManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    invoke-static {v6, v8}, Lcom/onegravity/rteditor/fonts/FontManager;->addFontFace(Ljava/lang/String;Landroid/graphics/Typeface;)V

    :goto_1
    invoke-static {v5, v6, v8}, Lcom/onegravity/rteditor/fonts/FontManager;->addFontFace(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/onegravity/rteditor/fonts/FontManager;->e:Ljava/util/Map;

    new-instance v7, Lcom/sunia/HTREnginev2/srg;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/srg;-><init>()V

    invoke-interface {v6, p0, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public static synthetic f(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->c(Landroid/content/Context;)Ljava/util/Map;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object p0, Lcom/onegravity/rteditor/fonts/FontManager;->d:Ljava/util/Map;

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/onegravity/rteditor/fonts/FontManager;->d()Ljava/util/Map;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static g(Landroid/content/res/Resources;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/onegravity/rteditor/fonts/FontManager;->h(Landroid/content/res/AssetManager;Ljava/util/Collection;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/onegravity/rteditor/utils/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\ "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFonts(Landroid/content/Context;)Ljava/util/SortedSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/onegravity/rteditor/fonts/RTTypeface;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/onegravity/rteditor/fonts/FontManager;->g:Lcom/onegravity/rteditor/fonts/RTTypefaceSet;

    invoke-virtual {v4, v2}, Lcom/onegravity/rteditor/fonts/RTTypefaceSet;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_0
    invoke-static {p0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    new-instance v5, Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-direct {v5, v2, v3}, Lcom/onegravity/rteditor/fonts/RTTypeface;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/onegravity/rteditor/fonts/FontManager;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/onegravity/rteditor/fonts/FontManager;->g:Lcom/onegravity/rteditor/fonts/RTTypefaceSet;

    invoke-virtual {v3, v1}, Lcom/onegravity/rteditor/fonts/RTTypefaceSet;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    new-instance v4, Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-direct {v4, v1, v2}, Lcom/onegravity/rteditor/fonts/RTTypeface;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/onegravity/rteditor/fonts/FontManager;->g:Lcom/onegravity/rteditor/fonts/RTTypefaceSet;

    return-object p0
.end method

.method public static getTypeFaceByCustomFontPath(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4

    sget-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeface(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeface(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getTypeface(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/fonts/FontManager;->g:Lcom/onegravity/rteditor/fonts/RTTypefaceSet;

    invoke-virtual {v0, p0}, Lcom/onegravity/rteditor/fonts/RTTypefaceSet;->get(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/res/AssetManager;Ljava/util/Collection;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, ""

    const/16 v1, 0x8

    if-lt p3, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p1, v4, p3}, Lcom/onegravity/rteditor/fonts/FontManager;->h(Landroid/content/res/AssetManager;Ljava/util/Collection;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "ttf"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static preLoadFonts(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sunia/HTREnginev2/trg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/trg;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
