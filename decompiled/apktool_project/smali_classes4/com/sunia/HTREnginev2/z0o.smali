.class public final Lcom/sunia/HTREnginev2/z0o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "z0o"

.field public static final c:Ljava/lang/String; = "com.hihonor.featurelayer.sharedfeature.stylus"

.field public static final d:I = 0x7270e65

.field public static final e:Ljava/lang/String; = "12.0.0.101"


# instance fields
.field public a:Lcom/hihonor/stylus/penengine/version/IVersionInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hihonor/stylus/penengine/version/IVersionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z0o;->a:Lcom/hihonor/stylus/penengine/version/IVersionInfo;

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sunia/HTREnginev2/z0o;->b:Ljava/lang/String;

    const-string v1, "isKitRuntimeAvailable fail, context is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.hihonor.featurelayer.sharedfeature.stylus"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    sget-object p0, Lcom/sunia/HTREnginev2/z0o;->b:Ljava/lang/String;

    const-string v1, "PenKit is NOT installed on this device!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()Lcom/hihonor/stylus/penengine/version/IVersionInfo;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z0o;->a:Lcom/hihonor/stylus/penengine/version/IVersionInfo;

    return-object p0
.end method

.method public b()Z
    .locals 2

    const-string v0, "12.0.0.101"

    const v1, 0x7270e65

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/z0o;->d(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0o;->a()Lcom/hihonor/stylus/penengine/version/IVersionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0o;->a()Lcom/hihonor/stylus/penengine/version/IVersionInfo;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hihonor/stylus/penengine/version/IVersionInfo;->isVersionCompatible(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/sunia/HTREnginev2/z0o;->b:Ljava/lang/String;

    const-string p1, "SDK is NOT compatible with Runtime !"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
