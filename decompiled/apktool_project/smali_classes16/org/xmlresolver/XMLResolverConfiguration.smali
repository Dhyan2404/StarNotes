.class public Lorg/xmlresolver/XMLResolverConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xmlresolver/ResolverConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlresolver/XMLResolverConfiguration$b;
    }
.end annotation


# static fields
.field public static final C:[Lorg/xmlresolver/ResolverFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/xmlresolver/ResolverFeature<",
            "*>;"
        }
    .end annotation
.end field

.field public static D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic E:Z


# instance fields
.field public A:Ljava/lang/Boolean;

.field public B:Lorg/xmlresolver/logging/ResolverLogger;

.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;

.field public i:Lorg/xmlresolver/cache/ResourceCache;

.field public j:Lorg/xmlresolver/CatalogManager;

.field public k:Ljava/lang/Boolean;

.field public l:Ljava/lang/Boolean;

.field public m:Ljava/lang/Boolean;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/Boolean;

.field public p:Ljava/lang/Boolean;

.field public q:Ljava/lang/ClassLoader;

.field public r:Ljava/lang/Boolean;

.field public s:Ljava/lang/Boolean;

.field public t:Ljava/lang/Boolean;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/xml/sax/XMLReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1b

    new-array v0, v0, [Lorg/xmlresolver/ResolverFeature;

    const/4 v1, 0x0

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CATALOG_FILES:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->PREFER_PUBLIC:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->PREFER_PROPERTY_FILE:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->ALLOW_CATALOG_PI:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CATALOG_ADDITIONS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CACHE_DIRECTORY:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CACHE_UNDER_HOME:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CACHE_ENABLED:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CACHE:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->MERGE_HTTPS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->MASK_JAR_URIS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->URI_FOR_SYSTEM:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CATALOG_LOADER_CLASS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->PARSE_RDDL:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CLASSPATH_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CLASSLOADER:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->ARCHIVED_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER_CLASS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->DEFAULT_LOGGER_LOG_LEVEL:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_ENTITY:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->SAXPARSERFACTORY_CLASS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->XMLREADER_SUPPLIER:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->FIX_WINDOWS_SYSTEM_IDENTIFIERS:Lorg/xmlresolver/ResolverFeature;

    aput-object v2, v0, v1

    sput-object v0, Lorg/xmlresolver/XMLResolverConfiguration;->C:[Lorg/xmlresolver/ResolverFeature;

    const/4 v0, 0x0

    sput-object v0, Lorg/xmlresolver/XMLResolverConfiguration;->D:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lorg/xmlresolver/XMLResolverConfiguration;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\\s*;\\s*"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PREFER_PUBLIC:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->c:Ljava/lang/Boolean;

    .line 6
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PREFER_PROPERTY_FILE:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    .line 7
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ALLOW_CATALOG_PI:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->e:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_DIRECTORY:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->f:Ljava/lang/String;

    .line 9
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_UNDER_HOME:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->g:Ljava/lang/Boolean;

    .line 10
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_ENABLED:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->h:Ljava/lang/Boolean;

    .line 11
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/cache/ResourceCache;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    .line 12
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/CatalogManager;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    .line 13
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->URI_FOR_SYSTEM:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->k:Ljava/lang/Boolean;

    .line 14
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->MERGE_HTTPS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->l:Ljava/lang/Boolean;

    .line 15
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->MASK_JAR_URIS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->m:Ljava/lang/Boolean;

    .line 16
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_LOADER_CLASS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->n:Ljava/lang/String;

    .line 17
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PARSE_RDDL:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->o:Ljava/lang/Boolean;

    .line 18
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CLASSPATH_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    .line 19
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CLASSLOADER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    .line 20
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ARCHIVED_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->r:Ljava/lang/Boolean;

    .line 21
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->s:Ljava/lang/Boolean;

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->t:Ljava/lang/Boolean;

    .line 23
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER_CLASS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    .line 24
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->DEFAULT_LOGGER_LOG_LEVEL:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->v:Ljava/lang/String;

    .line 25
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_ENTITY:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->w:Ljava/lang/String;

    .line 26
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->x:Ljava/lang/String;

    .line 27
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->SAXPARSERFACTORY_CLASS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    .line 28
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->XMLREADER_SUPPLIER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->z:Ljava/util/function/Supplier;

    .line 29
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->FIX_WINDOWS_SYSTEM_IDENTIFIERS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->A:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    .line 31
    iget-object v2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    if-nez v2, :cond_0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    .line 33
    :cond_0
    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->t:Ljava/lang/Boolean;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->b:Ljava/util/List;

    .line 36
    new-instance v0, Lorg/xmlresolver/XMLResolverConfiguration$b;

    invoke-direct {v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration$b;-><init>(Lorg/xmlresolver/XMLResolverConfiguration$a;)V

    .line 37
    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->e(Ljava/util/List;Ljava/util/List;)V

    .line 39
    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    .line 40
    sget-object p1, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    .line 41
    invoke-virtual {v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration$b;->b(Lorg/xmlresolver/logging/ResolverLogger;)V

    .line 42
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->t:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/XMLResolverConfiguration;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PREFER_PUBLIC:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->c:Ljava/lang/Boolean;

    .line 45
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PREFER_PROPERTY_FILE:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    .line 46
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ALLOW_CATALOG_PI:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->e:Ljava/lang/Boolean;

    .line 47
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_DIRECTORY:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->f:Ljava/lang/String;

    .line 48
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_UNDER_HOME:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->g:Ljava/lang/Boolean;

    .line 49
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_ENABLED:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->h:Ljava/lang/Boolean;

    .line 50
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/cache/ResourceCache;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    .line 51
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/CatalogManager;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    .line 52
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->URI_FOR_SYSTEM:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->k:Ljava/lang/Boolean;

    .line 53
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->MERGE_HTTPS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->l:Ljava/lang/Boolean;

    .line 54
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->MASK_JAR_URIS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->m:Ljava/lang/Boolean;

    .line 55
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_LOADER_CLASS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->n:Ljava/lang/String;

    .line 56
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PARSE_RDDL:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->o:Ljava/lang/Boolean;

    .line 57
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CLASSPATH_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    .line 58
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CLASSLOADER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    .line 59
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ARCHIVED_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->r:Ljava/lang/Boolean;

    .line 60
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->s:Ljava/lang/Boolean;

    .line 61
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->t:Ljava/lang/Boolean;

    .line 62
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER_CLASS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    .line 63
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->DEFAULT_LOGGER_LOG_LEVEL:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->v:Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_ENTITY:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->w:Ljava/lang/String;

    .line 65
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->x:Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->SAXPARSERFACTORY_CLASS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    .line 67
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->XMLREADER_SUPPLIER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->z:Ljava/util/function/Supplier;

    .line 68
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->FIX_WINDOWS_SYSTEM_IDENTIFIERS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->A:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->b:Ljava/util/List;

    .line 72
    iget-object v1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    .line 73
    iget-object v1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->c:Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->c:Ljava/lang/Boolean;

    .line 74
    iget-object v1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    .line 75
    iget-object v1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->e:Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->e:Ljava/lang/Boolean;

    .line 76
    iget-object v1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->f:Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->f:Ljava/lang/String;

    .line 77
    iget-object v1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->g:Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->g:Ljava/lang/Boolean;

    .line 78
    iget-object v1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    .line 79
    iget-object v1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->h:Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->h:Ljava/lang/Boolean;

    .line 80
    iget-object v1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    if-nez v1, :cond_0

    .line 81
    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Lorg/xmlresolver/CatalogManager;

    invoke-direct {v0, v1, p0}, Lorg/xmlresolver/CatalogManager;-><init>(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    .line 83
    :goto_0
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->k:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->k:Ljava/lang/Boolean;

    .line 84
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->l:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->l:Ljava/lang/Boolean;

    .line 85
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->m:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->m:Ljava/lang/Boolean;

    .line 86
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->n:Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->n:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->o:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->o:Ljava/lang/Boolean;

    .line 88
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    .line 89
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->r:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->r:Ljava/lang/Boolean;

    .line 90
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->s:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->s:Ljava/lang/Boolean;

    .line 91
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->t:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->t:Ljava/lang/Boolean;

    .line 92
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    .line 94
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->v:Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->v:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->w:Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->w:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->x:Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->x:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    .line 98
    iget-object p1, p1, Lorg/xmlresolver/XMLResolverConfiguration;->z:Ljava/util/function/Supplier;

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->z:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic a(Ljavax/xml/parsers/SAXParserFactory;)Lorg/xml/sax/XMLReader;
    .locals 0

    invoke-static {p0}, Lorg/xmlresolver/XMLResolverConfiguration;->d(Ljavax/xml/parsers/SAXParserFactory;)Lorg/xml/sax/XMLReader;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "yes"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static synthetic d(Ljavax/xml/parsers/SAXParserFactory;)Lorg/xml/sax/XMLReader;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addCatalog(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public addCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lorg/xmlresolver/utils/URIUtils;->cwd()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    if-nez v1, :cond_0

    .line 8
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlresolver/CatalogManager;

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    .line 9
    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/CatalogManager;->loadCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)Lorg/xmlresolver/catalog/entry/EntryCatalog;

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null provided for catalog data"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null provided for catalog URI"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v1, Lorg/xmlresolver/XMLResolverConfiguration;->D:Ljava/util/List;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "Searching for catalogs on classpath:"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "config"

    invoke-interface {v1, v5, v2, v4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader;

    invoke-virtual {v1}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    iget-object v7, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Object;

    invoke-interface {v7, v5, v6, v8}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "    Unknown: cannot determine class path in JDK9+"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v5, v2, v4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "org/xmlresolver/catalog.xml"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    iget-object v4, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Catalog: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lorg/xmlresolver/XMLResolverConfiguration;->D:Ljava/util/List;

    :cond_2
    sget-object p0, Lorg/xmlresolver/XMLResolverConfiguration;->D:Ljava/util/List;

    return-object p0
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/xmlresolver/XMLResolverConfiguration;->g()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_3

    const-string p1, "xmlresolver.properties"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "XMLRESOLVER_PROPERTIES"

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/xmlresolver/utils/URIUtils;->cwd()Ljava/net/URI;

    move-result-object v2

    const-string v3, "\\s*;\\s*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-class p1, Lorg/xmlresolver/XMLResolverConfiguration;

    const-string v2, "/xmlresolver.properties"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_2
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {p0, v2, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->f(Ljava/net/URL;Ljava/util/Properties;)V

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/xmlresolver/XMLResolverConfiguration;->g()V

    :cond_7
    if-nez p2, :cond_8

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    const-string p2, "./catalog.xml"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    :goto_5
    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    if-eqz p1, :cond_b

    sget-object p2, Lorg/xmlresolver/ResolverFeature;->SAXPARSERFACTORY_CLASS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {p0}, Lorg/xmlresolver/XMLResolverConfiguration;->h()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->t:Ljava/lang/Boolean;

    return-void
.end method

.method public final f(Ljava/net/URL;Ljava/util/Properties;)V
    .locals 12

    const-string v0, "catalog-logging"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "xml.catalog.logging"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v0, "relative-catalogs"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Relative catalogs: %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "catalogs"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Cannot make absolute: "

    const-string v4, "error"

    const-string v5, "Catalog: %s"

    const-string v6, ""

    const-string v7, ";"

    if-eqz v1, :cond_4

    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "Catalog list cleared"

    invoke-virtual {p0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object v9, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    invoke-interface {v9, v4, v10, v11}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    invoke-virtual {p0, v5, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v1, "catalog-additions"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    :try_start_1
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    iget-object v7, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-interface {v7, v4, v9, v10}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_4
    invoke-virtual {p0, v5, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string p1, "prefer"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "Prefer public: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "public"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->c:Ljava/lang/Boolean;

    :cond_8
    const-string p1, "prefer-property-file"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "Prefer propertyFile: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    :cond_9
    const-string p1, "allow-oasis-xml-catalog-pi"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v0, "Allow catalog PI: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->e:Ljava/lang/Boolean;

    :cond_a
    const-string p1, "cache"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v0, "Cache directory: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->f:Ljava/lang/String;

    :cond_b
    const-string p1, "cache-under-home"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p1, "cacheUnderHome"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    if-eqz p1, :cond_d

    const-string v0, "Cache under home: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->g:Ljava/lang/Boolean;

    :cond_d
    const-string p1, "cache-enabled"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    const-string v0, "Cache enabled: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->h:Ljava/lang/Boolean;

    :cond_e
    const-string p1, "uri-for-system"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    const-string v0, "URI-for-system: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->k:Ljava/lang/Boolean;

    :cond_f
    const-string p1, "merge-https"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v0, "Merge-https: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->l:Ljava/lang/Boolean;

    :cond_10
    const-string p1, "mask-jar-uris"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string v0, "Mask-jar-URIs: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->m:Ljava/lang/Boolean;

    :cond_11
    const-string p1, "catalog-loader-class"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    const-string v0, "Catalog loader: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->n:Ljava/lang/String;

    :cond_12
    const-string p1, "parse-rddl"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, "Parse RDDL: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->o:Ljava/lang/Boolean;

    :cond_13
    const-string p1, "classpath-catalogs"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    const-string v0, "Classpath catalogs: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    :cond_14
    const-string p1, "archived-catalogs"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    const-string v0, "Archived catalogs: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->r:Ljava/lang/Boolean;

    :cond_15
    const-string p1, "throw-uri-exceptions"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    const-string v0, "Throw URI exceptions: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->s:Ljava/lang/Boolean;

    :cond_16
    const-string p1, "resolver-logger-class"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string v0, "Resolver logger class: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    :cond_17
    const-string p1, "default-logger-log-level"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    const-string v0, "Default logger log level: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->v:Ljava/lang/String;

    :cond_18
    const-string p1, "access-external-entity"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    const-string v0, "Access external entity: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->w:Ljava/lang/String;

    :cond_19
    const-string p1, "access-external-document"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    const-string v0, "Access external document: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->x:Ljava/lang/String;

    :cond_1a
    const-string p1, "saxparserfactory-class"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    const-string v0, "SAXParserFactory class: %s"

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    :cond_1b
    const-string p1, "fix-windows-system-identifiers"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    const-string p2, "Fix windows system identifiers: %s"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->A:Ljava/lang/Boolean;

    :cond_1c
    return-void
.end method

.method public final g()V
    .locals 6

    const-string v0, "xml.catalog.files"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Catalog: %s"

    const-string v2, ""

    const-string v3, ";"

    if-eqz v0, :cond_1

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Catalog list cleared"

    invoke-virtual {p0, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "xml.catalog.additions"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v0, "xml.catalog.prefer"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "Prefer public: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->c:Ljava/lang/Boolean;

    :cond_4
    const-string v0, "xml.catalog.preferPropertyFile"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "Prefer propertyFile: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    :cond_5
    const-string v0, "xml.catalog.allowPI"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "Allow catalog PI: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->e:Ljava/lang/Boolean;

    :cond_6
    const-string v0, "xml.catalog.cache"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "Cache directory: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->f:Ljava/lang/String;

    :cond_7
    const-string v0, "xml.catalog.cacheUnderHome"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "Cache under home: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->g:Ljava/lang/Boolean;

    :cond_8
    const-string v0, "xml.catalog.cacheEnabled"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "Cache enabled: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->h:Ljava/lang/Boolean;

    :cond_9
    const-string v0, "xml.catalog.uriForSystem"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "URI-for-system: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->k:Ljava/lang/Boolean;

    :cond_a
    const-string v0, "xml.catalog.mergeHttps"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "Merge-https: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->l:Ljava/lang/Boolean;

    :cond_b
    const-string v0, "xml.catalog.maskJarUris"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "Mask-jar-URIs: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->m:Ljava/lang/Boolean;

    :cond_c
    const-string v0, "xml.catalog.catalogLoaderClass"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "Catalog loader: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->n:Ljava/lang/String;

    :cond_d
    const-string v0, "xml.catalog.parseRddl"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "Use RDDL: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->o:Ljava/lang/Boolean;

    :cond_e
    const-string v0, "xml.catalog.classpathCatalogs"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "Classpath catalogs: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    :cond_f
    const-string v0, "xml.catalog.archivedCatalogs"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "Archived catalogs: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->r:Ljava/lang/Boolean;

    :cond_10
    const-string v0, "xml.catalog.throwUriExceptions"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "Throw URI exceptions: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->s:Ljava/lang/Boolean;

    :cond_11
    const-string v0, "xml.catalog.resolverLoggerClass"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "Resolver logger class: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    :cond_12
    const-string v0, "xml.catalog.defaultLoggerLogLevel"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "Default logger log level: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->v:Ljava/lang/String;

    :cond_13
    const-string v0, "xml.catalog.accessExternalEntity"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "Access external entity: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->w:Ljava/lang/String;

    :cond_14
    const-string v0, "xml.catalog.accessExternalDocument"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "Access external document: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->x:Ljava/lang/String;

    :cond_15
    const-string v0, "xml.catalog.saxParserFactoryClass"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "SAXParserFactory class: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    :cond_16
    const-string v0, "xml.catalog.fixWindowsSystemIdentifiers"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "Fix windows system identifiers: %s"

    invoke-virtual {p0, v1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/xmlresolver/XMLResolverConfiguration;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->A:Ljava/lang/Boolean;

    :cond_17
    return-void
.end method

.method public getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xmlresolver/ResolverFeature<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    if-nez p1, :cond_0

    new-instance p1, Lorg/xmlresolver/CatalogManager;

    invoke-direct {p1, p0}, Lorg/xmlresolver/CatalogManager;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    return-object p0

    :cond_1
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_FILES:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/xmlresolver/XMLResolverConfiguration;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_ADDITIONS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->b:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PREFER_PUBLIC:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->c:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PREFER_PROPERTY_FILE:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ALLOW_CATALOG_PI:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->e:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_DIRECTORY:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_8

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->f:Ljava/lang/String;

    return-object p0

    :cond_8
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->URI_FOR_SYSTEM:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_9

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->k:Ljava/lang/Boolean;

    return-object p0

    :cond_9
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->MERGE_HTTPS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_a

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->l:Ljava/lang/Boolean;

    return-object p0

    :cond_a
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->MASK_JAR_URIS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->m:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_LOADER_CLASS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_c

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->n:Ljava/lang/String;

    return-object p0

    :cond_c
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PARSE_RDDL:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_d

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->o:Ljava/lang/Boolean;

    return-object p0

    :cond_d
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CLASSPATH_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_e

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    return-object p0

    :cond_e
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    if-nez p1, :cond_f

    new-instance p1, Lorg/xmlresolver/cache/ResourceCache;

    invoke-direct {p1, p0}, Lorg/xmlresolver/cache/ResourceCache;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    :cond_f
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    return-object p0

    :cond_10
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_UNDER_HOME:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_11

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->g:Ljava/lang/Boolean;

    return-object p0

    :cond_11
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_ENABLED:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_12

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->h:Ljava/lang/Boolean;

    return-object p0

    :cond_12
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CLASSLOADER:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_13

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    return-object p0

    :cond_13
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ARCHIVED_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_14

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->r:Ljava/lang/Boolean;

    return-object p0

    :cond_14
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_15

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->s:Ljava/lang/Boolean;

    return-object p0

    :cond_15
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER_CLASS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_16

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    return-object p0

    :cond_16
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->DEFAULT_LOGGER_LOG_LEVEL:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_17

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->v:Ljava/lang/String;

    return-object p0

    :cond_17
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1b

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    if-nez p1, :cond_1a

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "org.xmlresolver.logging.SystemLogger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "org.xmlresolver.logging.DefaultLogger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    :try_start_3
    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/xmlresolver/ResolverConfiguration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate logger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance p1, Lorg/xmlresolver/logging/DefaultLogger;

    invoke-direct {p1, p0}, Lorg/xmlresolver/logging/DefaultLogger;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    goto :goto_0

    :cond_19
    new-instance p1, Lorg/xmlresolver/logging/SystemLogger;

    invoke-direct {p1, p0}, Lorg/xmlresolver/logging/SystemLogger;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    :cond_1a
    :goto_0
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    return-object p0

    :cond_1b
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_ENTITY:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1c

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->w:Ljava/lang/String;

    return-object p0

    :cond_1c
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1d

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->x:Ljava/lang/String;

    return-object p0

    :cond_1d
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->SAXPARSERFACTORY_CLASS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1e

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    return-object p0

    :cond_1e
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->XMLREADER_SUPPLIER:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1f

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->z:Ljava/util/function/Supplier;

    return-object p0

    :cond_1f
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->FIX_WINDOWS_SYSTEM_IDENTIFIERS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_20

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->A:Ljava/lang/Boolean;

    return-object p0

    :cond_20
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v0, "error"

    const-string v1, "Ignoring unknown feature: %s"

    invoke-virtual {p1}, Lorg/xmlresolver/ResolverFeature;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeatures()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/xmlresolver/ResolverFeature<",
            "*>;>;"
        }
    .end annotation

    sget-object p0, Lorg/xmlresolver/XMLResolverConfiguration;->C:[Lorg/xmlresolver/ResolverFeature;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v1, "xml.catalog.logging"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "config"

    const-string v3, "Logging: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->c:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Prefer public: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Prefer property file: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->e:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Allow catalog PI: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->o:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Parse RDDL: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->k:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "URI for system: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->l:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Merge http/https: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->m:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Mask jar URIs: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->g:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Cache under home: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->f:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Cache directory: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->h:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Cache enabled: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->n:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Catalog loader: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Classpath catalogs: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->r:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Archived catalogs: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->s:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Throw URI exceptions: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Class loader: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Logger class: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->w:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Access external entity: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->x:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Access external document: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "SAXParserFactory class: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->z:Ljava/util/function/Supplier;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "XMLReader supplier: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->A:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Fix Windows system identifiers: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->v:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Default logger log level: %s"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "Catalog: %s"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/xmlresolver/XMLResolverConfiguration;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "config"

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "config"

    if-nez p2, :cond_0

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    const-string p2, "null"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, v0, p1, p2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, v0, p1, p2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCatalog(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xmlresolver/ResolverFeature<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_FILES:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    const-string p1, "Catalog list cleared"

    invoke-virtual {p0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Catalog: %s"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_ADDITIONS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->a:Ljava/util/List;

    monitor-enter v0

    if-nez p2, :cond_3

    :try_start_1
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_3
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->b:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Catalog: %s"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->b:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_6
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CLASSLOADER:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_8

    check-cast p2, Ljava/lang/ClassLoader;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    if-nez p2, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    :cond_7
    const-string p1, "Catalog loader: %s"

    iget-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->q:Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_DIRECTORY:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_a

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->f:Ljava/lang/String;

    const-string p1, "Cache directory: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    if-nez p1, :cond_9

    new-instance p1, Lorg/xmlresolver/cache/ResourceCache;

    invoke-direct {p1, p0}, Lorg/xmlresolver/cache/ResourceCache;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lorg/xmlresolver/cache/ResourceCache;->reset()V

    :goto_3
    return-void

    :cond_a
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_b

    check-cast p2, Lorg/xmlresolver/cache/ResourceCache;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    const-string p1, "Cache: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_b
    if-eqz p2, :cond_24

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PREFER_PUBLIC:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->c:Ljava/lang/Boolean;

    const-string p1, "Prefer public: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PREFER_PROPERTY_FILE:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_d

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->d:Ljava/lang/Boolean;

    const-string p1, "Prefer propertyFile: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_d
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ALLOW_CATALOG_PI:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_e

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->e:Ljava/lang/Boolean;

    const-string p1, "Allow catalog PI: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_UNDER_HOME:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_10

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->g:Ljava/lang/Boolean;

    const-string p1, "Cache under home: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    if-nez p1, :cond_f

    new-instance p1, Lorg/xmlresolver/cache/ResourceCache;

    invoke-direct {p1, p0}, Lorg/xmlresolver/cache/ResourceCache;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    goto/16 :goto_4

    :cond_f
    invoke-virtual {p1}, Lorg/xmlresolver/cache/ResourceCache;->reset()V

    goto/16 :goto_4

    :cond_10
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE_ENABLED:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_12

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->h:Ljava/lang/Boolean;

    const-string p1, "Cache enabled: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    if-nez p1, :cond_11

    new-instance p1, Lorg/xmlresolver/cache/ResourceCache;

    invoke-direct {p1, p0}, Lorg/xmlresolver/cache/ResourceCache;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->i:Lorg/xmlresolver/cache/ResourceCache;

    goto/16 :goto_4

    :cond_11
    invoke-virtual {p1}, Lorg/xmlresolver/cache/ResourceCache;->reset()V

    goto/16 :goto_4

    :cond_12
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_13

    check-cast p2, Lorg/xmlresolver/CatalogManager;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->j:Lorg/xmlresolver/CatalogManager;

    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    const-string p1, "config"

    const-string v0, "Catalog manager: %s"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, v0, p2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_13
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->URI_FOR_SYSTEM:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_14

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->k:Ljava/lang/Boolean;

    const-string p1, "URI-for-system: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_14
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->MERGE_HTTPS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_15

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->l:Ljava/lang/Boolean;

    const-string p1, "Merge-https: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_15
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->MASK_JAR_URIS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_16

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->m:Ljava/lang/Boolean;

    const-string p1, "Mask-jar-URIs: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_16
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_LOADER_CLASS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_17

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->n:Ljava/lang/String;

    const-string p1, "Catalog loader: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_17
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->PARSE_RDDL:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_18

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->o:Ljava/lang/Boolean;

    const-string p1, "Use RDDL: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_18
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CLASSPATH_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_19

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->p:Ljava/lang/Boolean;

    const-string p1, "Classpath catalogs: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_19
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ARCHIVED_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1a

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->r:Ljava/lang/Boolean;

    const-string p1, "Archived catalogs: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1b

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->s:Ljava/lang/Boolean;

    const-string p1, "Throw URI exceptions: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1b
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER_CLASS:Lorg/xmlresolver/ResolverFeature;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1c

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->u:Ljava/lang/String;

    const-string p1, "Resolver logger class: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    sget-object p1, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    goto/16 :goto_4

    :cond_1c
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->DEFAULT_LOGGER_LOG_LEVEL:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1d

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->v:Ljava/lang/String;

    const-string p1, "Default logger log level: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1d
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1e

    check-cast p2, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    const-string p1, "Resolver logger: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1e
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_ENTITY:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_1f

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->w:Ljava/lang/String;

    const-string p1, "Access external entity: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1f
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_20

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->x:Ljava/lang/String;

    const-string p1, "Access external document: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_20
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->SAXPARSERFACTORY_CLASS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_21

    :try_start_2
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setXIncludeAware(Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    new-instance v0, Lcom/sunia/HTREnginev2/rlo;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/rlo;-><init>(Ljavax/xml/parsers/SAXParserFactory;)V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->z:Ljava/util/function/Supplier;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    const-string p1, "SAXParserFactory class: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_21
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->XMLREADER_SUPPLIER:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_22

    iput-object v1, p0, Lorg/xmlresolver/XMLResolverConfiguration;->y:Ljava/lang/String;

    check-cast p2, Ljava/util/function/Supplier;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->z:Ljava/util/function/Supplier;

    const-string p1, "XMLReader supplier: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_22
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->FIX_WINDOWS_SYSTEM_IDENTIFIERS:Lorg/xmlresolver/ResolverFeature;

    if-ne p1, v0, :cond_23

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/xmlresolver/XMLResolverConfiguration;->A:Ljava/lang/Boolean;

    const-string p1, "Fix windows system identifiers: %s"

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_23
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration;->B:Lorg/xmlresolver/logging/ResolverLogger;

    const-string p2, "error"

    const-string v0, "Ignoring unknown feature: %s"

    invoke-virtual {p1}, Lorg/xmlresolver/ResolverFeature;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, v0, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void

    :cond_24
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/xmlresolver/ResolverFeature;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not be null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
