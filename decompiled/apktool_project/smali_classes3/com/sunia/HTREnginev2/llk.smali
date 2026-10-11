.class public Lcom/sunia/HTREnginev2/llk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/llk$b;,
        Lcom/sunia/HTREnginev2/llk$a;,
        Lcom/sunia/HTREnginev2/llk$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "PackageIdentity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/pm/Signature;)[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/sunia/HTREnginev2/llk;->c()Lcom/sunia/HTREnginev2/llk$c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sunia/HTREnginev2/llk$c;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PackageIdentity"

    const-string v0, "Could not get fingerprint for package."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()Lcom/sunia/HTREnginev2/llk$c;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/llk$a;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/llk$a;-><init>()V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/sunia/HTREnginev2/yin;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/sunia/HTREnginev2/llk;->c()Lcom/sunia/HTREnginev2/llk$c;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/llk$c;->b(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/sunia/HTREnginev2/yin;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PackageIdentity"

    const-string p2, "Could not check if package matches token."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
