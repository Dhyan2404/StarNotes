.class public final Lcom/huawei/stylus/penengine/VersionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final API_LEVEL_1:I = 0x1

.field public static final API_LEVEL_2:I = 0x2

.field public static final API_LEVEL_3:I = 0x3

.field public static final b:Ljava/lang/String; = "VersionInfo"

.field public static final c:Ljava/lang/String; = "com.huawei.featurelayer.sharedfeature.stylus"

.field public static final d:I = 0x6900334

.field public static final e:Ljava/lang/String; = "11.1.1.300"

.field public static final f:Ljava/util/regex/Pattern;


# instance fields
.field public a:Lcom/huawei/stylus/penengine/version/IVersionInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:\\.(\\d+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/stylus/penengine/VersionInfo;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/stylus/penengine/version/IVersionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/stylus/penengine/VersionInfo;->a:Lcom/huawei/stylus/penengine/version/IVersionInfo;

    return-void
.end method

.method public static isKitRuntimeAvailable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/huawei/stylus/penengine/VersionInfo;->b:Ljava/lang/String;

    const-string v1, "isKitRuntimeAvailable fail, context is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.huawei.featurelayer.sharedfeature.stylus"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    sget-object p0, Lcom/huawei/stylus/penengine/VersionInfo;->b:Ljava/lang/String;

    const-string v1, "PenKit is NOT installed on this device!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()Lcom/huawei/stylus/penengine/version/IVersionInfo;
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/VersionInfo;->a:Lcom/huawei/stylus/penengine/version/IVersionInfo;

    return-object p0
.end method

.method public final b(Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/stylus/penengine/VersionInfo;->a()Lcom/huawei/stylus/penengine/version/IVersionInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/huawei/stylus/penengine/VersionInfo;->a()Lcom/huawei/stylus/penengine/version/IVersionInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/version/IVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/huawei/stylus/penengine/VersionInfo;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_2

    move v0, p2

    :cond_2
    return v0

    :catch_0
    sget-object p0, Lcom/huawei/stylus/penengine/VersionInfo;->b:Ljava/lang/String;

    const-string p1, "NumberFormatException err!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v0

    :cond_4
    sget-object p0, Lcom/huawei/stylus/penengine/VersionInfo;->b:Ljava/lang/String;

    const-string p1, "SDK is NOT compatible with Runtime !"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getApiLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/stylus/penengine/VersionInfo;->a()Lcom/huawei/stylus/penengine/version/IVersionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/stylus/penengine/VersionInfo;->a()Lcom/huawei/stylus/penengine/version/IVersionInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/version/IVersionInfo;->getApiLevel()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isAllCompatible()Z
    .locals 2

    const-string v0, "11.1.1.300"

    const v1, 0x6900334

    invoke-virtual {p0, v0, v1}, Lcom/huawei/stylus/penengine/VersionInfo;->b(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
