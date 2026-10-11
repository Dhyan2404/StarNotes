.class public final Lorg/apache/commons/text/lookup/StringLookupFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-direct {v0}, Lorg/apache/commons/text/lookup/StringLookupFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dateStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lcom/sunia/HTREnginev2/jve;->a:Lcom/sunia/HTREnginev2/jve;

    return-object p0
.end method

.method public environmentVariableStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lcom/sunia/HTREnginev2/zqf;->a:Lcom/sunia/HTREnginev2/zqf;

    return-object p0
.end method

.method public interpolatorStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    .line 1
    new-instance p0, Lcom/sunia/HTREnginev2/mpi;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/mpi;-><init>()V

    return-object p0
.end method

.method public interpolatorStringLookup(Ljava/util/Map;)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/sunia/HTREnginev2/mpi;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/mpi;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public interpolatorStringLookup(Ljava/util/Map;Lorg/apache/commons/text/lookup/StringLookup;Z)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            "Z)",
            "Lorg/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    .line 4
    new-instance p0, Lcom/sunia/HTREnginev2/mpi;

    invoke-direct {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/mpi;-><init>(Ljava/util/Map;Lorg/apache/commons/text/lookup/StringLookup;Z)V

    return-object p0
.end method

.method public interpolatorStringLookup(Lorg/apache/commons/text/lookup/StringLookup;)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    .line 3
    new-instance p0, Lcom/sunia/HTREnginev2/mpi;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/mpi;-><init>(Lorg/apache/commons/text/lookup/StringLookup;)V

    return-object p0
.end method

.method public javaPlatformStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lcom/sunia/HTREnginev2/lri;->a:Lcom/sunia/HTREnginev2/lri;

    return-object p0
.end method

.method public localHostStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lcom/sunia/HTREnginev2/n0j;->a:Lcom/sunia/HTREnginev2/n0j;

    return-object p0
.end method

.method public mapStringLookup(Ljava/util/Map;)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sunia/HTREnginev2/r8j;->b(Ljava/util/Map;)Lcom/sunia/HTREnginev2/r8j;

    move-result-object p0

    return-object p0
.end method

.method public nullStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lcom/sunia/HTREnginev2/o5k;->a:Lcom/sunia/HTREnginev2/o5k;

    return-object p0
.end method

.method public resourceBundleStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lcom/sunia/HTREnginev2/pll;->a:Lcom/sunia/HTREnginev2/pll;

    return-object p0
.end method

.method public systemPropertyStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lcom/sunia/HTREnginev2/s6n;->a:Lcom/sunia/HTREnginev2/s6n;

    return-object p0
.end method
