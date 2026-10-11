.class public Lcom/sunia/HTREnginev2/dmo;
.super Lcom/sunia/HTREnginev2/fmo$a;
.source "SourceFile"


# static fields
.field public static synthetic g:Ljava/lang/Class;


# instance fields
.field public final synthetic f:Lcom/sunia/HTREnginev2/fmo;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/fmo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/fmo$a;-><init>(Lcom/sunia/HTREnginev2/dmo;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dmo;->f:Lcom/sunia/HTREnginev2/fmo;

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    sget-object p0, Lcom/sunia/HTREnginev2/dmo;->g:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "javax.xml.xpath.XPathFactoryFinder"

    invoke-static {p0}, Lcom/sunia/HTREnginev2/dmo;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/sunia/HTREnginev2/dmo;->g:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {}, Lcom/sunia/HTREnginev2/fmo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/gdm;->e(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method
