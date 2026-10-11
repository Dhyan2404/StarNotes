.class public abstract Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00102\n\u0008\u0002\u00107\u001a\u0004\u0018\u000108J \u00109\u001a\u0002052\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100:2\n\u0008\u0002\u00107\u001a\u0004\u0018\u000108J\u0006\u0010;\u001a\u00020\u0003J\u000e\u0010<\u001a\u0002052\u0006\u00106\u001a\u00020\u0010R/\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r*\u0004\u0008\u0008\u0010\tR!\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R$\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00168F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bRG\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#*\u0004\u0008\u001f\u0010\tR/\u0010%\u001a\u0004\u0018\u00010$2\u0008\u0010\u0005\u001a\u0004\u0018\u00010$8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010**\u0004\u0008&\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R+\u0010.\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020-8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103*\u0004\u0008/\u0010\t\u00a8\u0006="
    }
    d2 = {
        "Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;",
        "",
        "replConfig",
        "Lcom/couchbase/lite/ReplicatorConfiguration;",
        "(Lcom/couchbase/lite/ReplicatorConfiguration;)V",
        "<set-?>",
        "Lcom/couchbase/lite/Authenticator;",
        "authenticator",
        "getAuthenticator$delegate",
        "(Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;)Ljava/lang/Object;",
        "getAuthenticator",
        "()Lcom/couchbase/lite/Authenticator;",
        "setAuthenticator",
        "(Lcom/couchbase/lite/Authenticator;)V",
        "collections",
        "",
        "Lcom/couchbase/lite/Collection;",
        "getCollections",
        "()Ljava/util/Set;",
        "collections$delegate",
        "Lkotlin/reflect/KProperty0;",
        "value",
        "",
        "enableAutoPurge",
        "getEnableAutoPurge",
        "()Z",
        "setEnableAutoPurge",
        "(Z)V",
        "",
        "",
        "headers",
        "getHeaders$delegate",
        "getHeaders",
        "()Ljava/util/Map;",
        "setHeaders",
        "(Ljava/util/Map;)V",
        "Ljava/security/cert/X509Certificate;",
        "pinnedServerCertificate",
        "getPinnedServerCertificate$delegate",
        "getPinnedServerCertificate",
        "()Ljava/security/cert/X509Certificate;",
        "setPinnedServerCertificate",
        "(Ljava/security/cert/X509Certificate;)V",
        "getReplConfig",
        "()Lcom/couchbase/lite/ReplicatorConfiguration;",
        "Lcom/couchbase/lite/ReplicatorType;",
        "type",
        "getType$delegate",
        "getType",
        "()Lcom/couchbase/lite/ReplicatorType;",
        "setType",
        "(Lcom/couchbase/lite/ReplicatorType;)V",
        "addCollection",
        "",
        "collection",
        "collectionConfig",
        "Lcom/couchbase/lite/CollectionConfiguration;",
        "addCollections",
        "",
        "getConfig",
        "removeCollection",
        "couchbase-lite-android-ee-ktx-3.2.2-21_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final collections$delegate:Lkotlin/reflect/KProperty0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    new-instance v0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration$collections$2;

    invoke-direct {v0, p1}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration$collections$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->collections$delegate:Lkotlin/reflect/KProperty0;

    return-void
.end method

.method public static synthetic addCollection$default(Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->addCollection(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addCollection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addCollections$default(Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;Ljava/util/Collection;Lcom/couchbase/lite/CollectionConfiguration;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->addCollections(Ljava/util/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addCollections"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAuthenticator$delegate(Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    iget-object v1, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    const-class v2, Lcom/couchbase/lite/ReplicatorConfiguration;

    const-string v3, "authenticator"

    const-string v4, "getAuthenticator()Lcom/couchbase/lite/Authenticator;"

    const/4 v5, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getHeaders$delegate(Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    iget-object v1, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    const-class v2, Lcom/couchbase/lite/ReplicatorConfiguration;

    const-string v3, "headers"

    const-string v4, "getHeaders()Ljava/util/Map;"

    const/4 v5, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getPinnedServerCertificate$delegate(Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    iget-object v1, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    const-class v2, Lcom/couchbase/lite/ReplicatorConfiguration;

    const-string v3, "pinnedServerX509Certificate"

    const-string v4, "getPinnedServerX509Certificate()Ljava/security/cert/X509Certificate;"

    const/4 v5, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getType$delegate(Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    iget-object v1, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    const-class v2, Lcom/couchbase/lite/ReplicatorConfiguration;

    const-string v3, "type"

    const-string v4, "getType()Lcom/couchbase/lite/ReplicatorType;"

    const/4 v5, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addCollection(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/CollectionConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->addCollection(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)Lcom/couchbase/lite/ReplicatorConfiguration;

    return-void
.end method

.method public final addCollections(Ljava/util/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/CollectionConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/couchbase/lite/Collection;",
            ">;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ")V"
        }
    .end annotation

    const-string v0, "collections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->addCollections(Ljava/util/Collection;Lcom/couchbase/lite/CollectionConfiguration;)Lcom/couchbase/lite/ReplicatorConfiguration;

    return-void
.end method

.method public final getAuthenticator()Lcom/couchbase/lite/Authenticator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getAuthenticator()Lcom/couchbase/lite/Authenticator;

    move-result-object p0

    return-object p0
.end method

.method public final getCollections()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->collections$delegate:Lkotlin/reflect/KProperty0;

    invoke-interface {p0}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-collections>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getConfig()Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/ReplicatorConfiguration;

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/ReplicatorConfiguration;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V

    return-object v0
.end method

.method public final getEnableAutoPurge()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->isAutoPurgeEnabled()Z

    move-result p0

    return p0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getPinnedServerCertificate()Ljava/security/cert/X509Certificate;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getPinnedServerX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public final getReplConfig()Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    return-object p0
.end method

.method public final getType()Lcom/couchbase/lite/ReplicatorType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object p0

    return-object p0
.end method

.method public final removeCollection(Lcom/couchbase/lite/Collection;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->removeCollection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/ReplicatorConfiguration;

    return-void
.end method

.method public final setAuthenticator(Lcom/couchbase/lite/Authenticator;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Authenticator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setAuthenticator(Lcom/couchbase/lite/Authenticator;)Lcom/couchbase/lite/ReplicatorConfiguration;

    return-void
.end method

.method public final setEnableAutoPurge(Z)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setAutoPurgeEnabled(Z)Lcom/couchbase/lite/ReplicatorConfiguration;

    return-void
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setHeaders(Ljava/util/Map;)Lcom/couchbase/lite/ReplicatorConfiguration;

    return-void
.end method

.method public final setPinnedServerCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1    # Ljava/security/cert/X509Certificate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setPinnedServerX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/couchbase/lite/ReplicatorConfiguration;

    return-void
.end method

.method public final setType(Lcom/couchbase/lite/ReplicatorType;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->replConfig:Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setType(Lcom/couchbase/lite/ReplicatorType;)Lcom/couchbase/lite/ReplicatorConfiguration;

    return-void
.end method
