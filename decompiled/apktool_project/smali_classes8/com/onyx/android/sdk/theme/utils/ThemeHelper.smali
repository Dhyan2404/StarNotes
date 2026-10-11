.class public Lcom/onyx/android/sdk/theme/utils/ThemeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/onyx/android/sdk/theme/config/ThemeConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "theme/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "THE RETURN"

    return-object p0

    :cond_0
    const-string p0, "THE THUNDER"

    return-object p0

    :cond_1
    const-string p0, "THE DARK"

    return-object p0

    :cond_2
    const-string p0, "THE LIGHT"

    return-object p0
.end method

.method public static getPlugPathByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPlugThemeName()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "plug_path_name_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlugThemePackageName()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "com.onyx.theme"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedPlugThemePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->getPlugThemeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTheme()I
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "theme_current"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getThemeConfig()Lcom/onyx/android/sdk/theme/config/ThemeConfig;
    .locals 3
    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->a:Lcom/onyx/android/sdk/theme/config/ThemeConfig;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/ConfigLoader;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ConfigLoader;

    const-string v1, "theme_config"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/theme/config/ThemeConfig;

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/utils/ConfigLoader;->load(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/theme/config/ThemeConfig;

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->a:Lcom/onyx/android/sdk/theme/config/ThemeConfig;

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->a:Lcom/onyx/android/sdk/theme/config/ThemeConfig;

    return-object v0
.end method

.method public static isDefaultTheme()Z
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->getTheme()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static releasePluginTheme()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "plug_path_name_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.onyx.theme"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static savePlugTheme(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->setTheme(I)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "plug_path_name_key"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.onyx.theme"

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTheme(I)V
    .locals 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->releasePlugTheme()V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "theme_current"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method
