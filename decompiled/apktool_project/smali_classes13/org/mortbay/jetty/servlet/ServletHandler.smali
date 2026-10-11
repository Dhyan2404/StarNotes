.class public Lorg/mortbay/jetty/servlet/ServletHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/ServletHandler$b;,
        Lorg/mortbay/jetty/servlet/ServletHandler$a;,
        Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;
    }
.end annotation


# static fields
.field public static final __DEFAULT_SERVLET:Ljava/lang/String; = "default"

.field public static final __J_S_CONTEXT_TEMPDIR:Ljava/lang/String; = "javax.servlet.context.tempdir"

.field public static final __J_S_ERROR_EXCEPTION:Ljava/lang/String; = "javax.servlet.error.exception"

.field public static final __J_S_ERROR_EXCEPTION_TYPE:Ljava/lang/String; = "javax.servlet.error.exception_type"

.field public static final __J_S_ERROR_MESSAGE:Ljava/lang/String; = "javax.servlet.error.message"

.field public static final __J_S_ERROR_REQUEST_URI:Ljava/lang/String; = "javax.servlet.error.request_uri"

.field public static final __J_S_ERROR_SERVLET_NAME:Ljava/lang/String; = "javax.servlet.error.servlet_name"

.field public static final __J_S_ERROR_STATUS_CODE:Ljava/lang/String; = "javax.servlet.error.status_code"

.field public static synthetic s:Ljava/lang/Class;

.field public static synthetic t:Ljava/lang/Class;

.field public static synthetic u:Ljava/lang/Class;

.field public static synthetic v:Ljava/lang/Class;


# instance fields
.field protected transient _chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

.field public e:Lorg/mortbay/jetty/handler/ContextHandler;

.field public f:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field public g:[Lorg/mortbay/jetty/servlet/FilterHolder;

.field public h:[Lorg/mortbay/jetty/servlet/FilterMapping;

.field public i:Z

.field public j:I

.field public k:Z

.field public l:[Lorg/mortbay/jetty/servlet/ServletHolder;

.field public m:[Lorg/mortbay/jetty/servlet/ServletMapping;

.field public transient n:Ljava/util/Map;

.field public transient o:Ljava/util/List;

.field public transient p:Lorg/mortbay/util/MultiMap;

.field public transient q:Ljava/util/Map;

.field public transient r:Lorg/mortbay/jetty/servlet/PathMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->i:Z

    const/16 v1, 0x3e8

    iput v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->k:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->q:Ljava/util/Map;

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

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object p0

    return-object p0
.end method

.method public addFilter(Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->u:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->u:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    :cond_1
    return-void
.end method

.method public addFilter(Lorg/mortbay/jetty/servlet/FilterHolder;Lorg/mortbay/jetty/servlet/FilterMapping;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->u:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->u:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->v:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->v:Ljava/lang/Class;

    :cond_2
    invoke-static {p1, p2, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    :cond_3
    return-void
.end method

.method public addFilterMapping(Lorg/mortbay/jetty/servlet/FilterMapping;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->v:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->v:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    :cond_1
    return-void
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->newFilterHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    return-object p1
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->newFilterHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/Holder;->setName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/Holder;->setClassName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    return-object v0
.end method

.method public addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 9
    :cond_0
    :try_start_0
    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->u:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->u:Ljava/lang/Class;

    :cond_1
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 10
    new-instance v1, Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-direct {v1}, Lorg/mortbay/jetty/servlet/FilterMapping;-><init>()V

    .line 11
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p2}, Lorg/mortbay/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p3}, Lorg/mortbay/jetty/servlet/FilterMapping;->setDispatches(I)V

    .line 14
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object p1

    sget-object p2, Lorg/mortbay/jetty/servlet/ServletHandler;->v:Ljava/lang/Class;

    if-nez p2, :cond_2

    const-string p2, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lorg/mortbay/jetty/servlet/ServletHandler;->v:Ljava/lang/Class;

    :cond_2
    invoke-static {p1, v1, p2}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 16
    throw p1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 18
    throw p1
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object p0

    return-object p0
.end method

.method public addServlet(Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->s:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->s:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    return-void
.end method

.method public addServletMapping(Lorg/mortbay/jetty/servlet/ServletMapping;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->t:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->t:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    return-void
.end method

.method public addServletWithMapping(Ljava/lang/Class;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->newServletHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->s:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->s:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    return-object p1
.end method

.method public addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->newServletHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/Holder;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/Holder;->setClassName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    return-object v0
.end method

.method public addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 10
    :cond_0
    :try_start_0
    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->s:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHandler;->s:Ljava/lang/Class;

    :cond_1
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 11
    new-instance v1, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v1}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    .line 12
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p2}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object p1

    sget-object p2, Lorg/mortbay/jetty/servlet/ServletHandler;->t:Ljava/lang/Class;

    if-nez p2, :cond_2

    const-string p2, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lorg/mortbay/jetty/servlet/ServletHandler;->t:Ljava/lang/Class;

    :cond_2
    invoke-static {p1, v1, p2}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 16
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_3

    .line 17
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public customizeFilter(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method

.method public customizeFilterDestroy(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method

.method public customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method

.method public customizeServletDestroy(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method

.method public declared-synchronized doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->f:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->e:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateNameMappings()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateMappings()V

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->i:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    invoke-direct {v1, p0, v2}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    :cond_1
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStart()V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->e:Lorg/mortbay/jetty/handler/ContextHandler;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lorg/mortbay/jetty/servlet/Context;

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStop()V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "EXCEPTION "

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_1

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "EXCEPTION "

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->o:Ljava/util/List;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->p:Lorg/mortbay/util/MultiMap;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->r:Lorg/mortbay/jetty/servlet/PathMap;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(ILjava/lang/String;Lorg/mortbay/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;
    .locals 7

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->i:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    if-eqz v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object p1, p2, p1

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/servlet/FilterChain;

    monitor-exit p0

    return-object p1

    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->o:Ljava/util/List;

    if-eqz v3, :cond_4

    move v3, v1

    move-object v4, v2

    :goto_2
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->o:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {v5, p2, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->b(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lorg/mortbay/jetty/servlet/FilterMapping;->c()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object v4, v2

    :cond_5
    if-eqz p3, :cond_9

    iget-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->p:Lorg/mortbay/util/MultiMap;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result p2

    if-lez p2, :cond_9

    iget-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->p:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result p2

    if-lez p2, :cond_9

    iget-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->p:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p3}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/mortbay/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move v3, v1

    :goto_3
    invoke-static {p2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-static {p2, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {v5, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->a(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lorg/mortbay/jetty/servlet/FilterMapping;->c()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->p:Lorg/mortbay/util/MultiMap;

    const-string v3, "*"

    invoke-virtual {p2, v3}, Lorg/mortbay/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_4
    invoke-static {p2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-static {p2, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {v3, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->a(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/FilterMapping;->c()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    if-nez v4, :cond_a

    return-object v2

    :cond_a
    iget-boolean p2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->i:Z

    if-eqz p2, :cond_c

    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_b

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$a;

    invoke-direct {v2, p0, v4, p3}, Lorg/mortbay/jetty/servlet/ServletHandler$a;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V

    :cond_b
    monitor-enter p0

    :try_start_1
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object p1, p2, p1

    invoke-virtual {p1, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_5

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_c
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_d

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$b;

    invoke-direct {v2, p0, v4, p3}, Lorg/mortbay/jetty/servlet/ServletHandler$b;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V

    :cond_d
    :goto_5
    return-object v2
.end method

.method public final g()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    new-instance v1, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    invoke-direct {v1, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    invoke-direct {v1, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    new-instance v1, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    invoke-direct {v1, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    new-instance v1, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    invoke-direct {v1, p0, v2}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    return-void
.end method

.method public getContextLog()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFilter(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->n:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/servlet/FilterHolder;

    return-object p0
.end method

.method public getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    return-object p0
.end method

.method public getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    return-object p0
.end method

.method public getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->r:Lorg/mortbay/jetty/servlet/PathMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object p0

    return-object p0
.end method

.method public getMaxFilterChainsCacheSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    return p0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0x3f

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->e:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/mortbay/jetty/servlet/Dispatcher;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->e:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-direct {v2, p0, p1, v1, v3}, Lorg/mortbay/jetty/servlet/Dispatcher;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getServlet(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->q:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/servlet/ServletHolder;

    return-object p0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->f:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object p0
.end method

.method public getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    return-object p0
.end method

.method public getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "javax.servlet.error.exception"

    const-string v6, "Response already committed for handling "

    const-string v7, "javax.servlet.error.exception_type"

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    instance-of v8, v2, Lorg/mortbay/jetty/Request;

    if-eqz v8, :cond_1

    move-object v8, v2

    check-cast v8, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v8

    :goto_0
    invoke-virtual {v8}, Lorg/mortbay/jetty/Request;->getServletName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lorg/mortbay/jetty/Request;->getRoleMap()Ljava/util/Map;

    move-result-object v12

    :try_start_0
    const-string v15, "/"
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_20
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1c
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15
    :try_end_1
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_1 .. :try_end_1} :catch_20
    .catch Lorg/mortbay/jetty/EofException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1c
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v15, :cond_7

    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v13}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/mortbay/jetty/servlet/ServletHolder;->getRoleMap()Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_2
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_2 .. :try_end_2} :catch_20
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v18, v6

    :try_start_3
    const-string v6, "servlet="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v18, v6

    :goto_1
    invoke-virtual {v15}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v15}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v15}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_3
    invoke-static {v6, v1}, Lorg/mortbay/jetty/servlet/PathMap;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-static {v6, v1}, Lorg/mortbay/jetty/servlet/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x4

    if-ne v4, v15, :cond_4

    const-string v15, "javax.servlet.include.servlet_path"

    invoke-virtual {v8, v15, v14}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "javax.servlet.include.path_info"

    invoke-virtual {v8, v14, v6}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v8, v14}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    :goto_3
    iget-object v6, v0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    if-eqz v6, :cond_5

    array-length v6, v6

    if-lez v6, :cond_5

    invoke-virtual {v0, v4, v1, v13}, Lorg/mortbay/jetty/servlet/ServletHandler;->f(ILjava/lang/String;Lorg/mortbay/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v1
    :try_end_3
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_3 .. :try_end_3} :catch_20
    .catch Lorg/mortbay/jetty/EofException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_19
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_16

    :cond_6
    move-object/from16 v18, v6

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_4
    move-object v6, v1

    const/4 v1, 0x0

    goto :goto_e

    :catch_1
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_15

    :catch_2
    move-exception v0

    goto/16 :goto_17

    :cond_7
    move-object/from16 v18, v6

    :try_start_4
    iget-object v6, v0, Lorg/mortbay/jetty/servlet/ServletHandler;->q:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/mortbay/jetty/servlet/ServletHolder;
    :try_end_4
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_4 .. :try_end_4} :catch_20
    .catch Lorg/mortbay/jetty/EofException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_4 .. :try_end_4} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_19
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v13, :cond_8

    :try_start_5
    iget-object v1, v0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    invoke-virtual {v13}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/mortbay/jetty/EofException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, v4, v1, v13}, Lorg/mortbay/jetty/servlet/ServletHandler;->f(ILjava/lang/String;Lorg/mortbay/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v6
    :try_end_6
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_6 .. :try_end_6} :catch_c
    .catch Lorg/mortbay/jetty/EofException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_e

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :goto_5
    move-object v13, v1

    goto/16 :goto_2b

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    :goto_6
    move-object v13, v1

    move-object/from16 v19, v5

    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_19

    :catch_4
    move-exception v0

    const/4 v1, 0x0

    :goto_8
    move-object v13, v1

    :goto_9
    move-object/from16 v6, v18

    goto/16 :goto_1d

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    :goto_a
    move-object v13, v1

    move-object/from16 v17, v13

    goto/16 :goto_26

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    :goto_b
    move-object v13, v1

    move-object/from16 v17, v13

    goto/16 :goto_28

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    :goto_c
    move-object v13, v1

    move-object/from16 v17, v13

    :goto_d
    const/4 v1, 0x0

    goto/16 :goto_2a

    :cond_8
    const/4 v1, 0x0

    move-object v6, v1

    :goto_e
    :try_start_7
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v14
    :try_end_7
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_7 .. :try_end_7} :catch_20
    .catch Lorg/mortbay/jetty/EofException; {:try_start_7 .. :try_end_7} :catch_1f
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_7 .. :try_end_7} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_19
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v14, :cond_9

    :try_start_8
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "chain="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "servlet holder="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lorg/mortbay/jetty/EofException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_f

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    goto :goto_a

    :catch_b
    move-exception v0

    goto :goto_b

    :catch_c
    move-exception v0

    goto :goto_c

    :cond_9
    :goto_f
    :try_start_9
    invoke-virtual {v8}, Lorg/mortbay/jetty/Request;->takeRequestListeners()Ljava/lang/Object;

    move-result-object v14
    :try_end_9
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_9 .. :try_end_9} :catch_20
    .catch Lorg/mortbay/jetty/EofException; {:try_start_9 .. :try_end_9} :catch_1f
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_9 .. :try_end_9} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_19
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v14, :cond_a

    :try_start_a
    new-instance v15, Ljavax/servlet/ServletRequestEvent;

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    invoke-direct {v15, v1, v2}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V
    :try_end_a
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_a .. :try_end_a} :catch_13
    .catch Lorg/mortbay/jetty/EofException; {:try_start_a .. :try_end_a} :catch_12
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-static {v14}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1
    :try_end_b
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_b .. :try_end_b} :catch_18
    .catch Lorg/mortbay/jetty/EofException; {:try_start_b .. :try_end_b} :catch_17
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v19, v5

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v1, :cond_b

    :try_start_c
    invoke-static {v14, v5}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v17

    move/from16 p1, v1

    move-object/from16 v1, v17

    check-cast v1, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v1, v15}, Ljavax/servlet/ServletRequestListener;->requestInitialized(Ljavax/servlet/ServletRequestEvent;)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    goto :goto_10

    :catch_d
    move-exception v0

    move-object/from16 v19, v5

    goto/16 :goto_14

    :catch_e
    move-exception v0

    move-object/from16 v19, v5

    move-object v13, v14

    move-object v1, v15

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object v13, v14

    const/4 v1, 0x0

    goto/16 :goto_2b

    :catch_f
    move-exception v0

    move-object/from16 v19, v5

    move-object v13, v14

    const/4 v1, 0x0

    goto/16 :goto_7

    :catch_10
    move-exception v0

    move-object/from16 v19, v5

    move-object v13, v14

    move-object/from16 v6, v18

    const/4 v1, 0x0

    goto/16 :goto_1d

    :catch_11
    move-exception v0

    move-object v13, v14

    goto/16 :goto_25

    :catch_12
    move-exception v0

    move-object v13, v14

    goto/16 :goto_27

    :catch_13
    move-exception v0

    move-object v13, v14

    const/4 v1, 0x0

    goto/16 :goto_29

    :cond_a
    move-object/from16 v19, v5

    const/4 v15, 0x0

    :cond_b
    if-eqz v13, :cond_d

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    if-eqz v6, :cond_c

    invoke-interface {v6, v2, v3}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_11

    :cond_c
    invoke-virtual {v13, v2, v3}, Lorg/mortbay/jetty/servlet/ServletHolder;->handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_11

    :cond_d
    invoke-virtual {v0, v2, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_c
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_c .. :try_end_c} :catch_18
    .catch Lorg/mortbay/jetty/EofException; {:try_start_c .. :try_end_c} :catch_17
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_c .. :try_end_c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_14
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_11
    if-eqz v14, :cond_e

    invoke-static {v14}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_12
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_e

    invoke-static {v14, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v0, v15}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v0, v1

    goto :goto_12

    :cond_e
    invoke-virtual {v8, v9}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    const/4 v1, 0x4

    if-eq v4, v1, :cond_22

    :goto_13
    invoke-virtual {v8, v10}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_24

    :catchall_3
    move-exception v0

    move-object v13, v14

    move-object v1, v15

    goto/16 :goto_2b

    :catch_14
    move-exception v0

    :goto_14
    move-object v13, v14

    move-object v1, v15

    goto/16 :goto_7

    :catch_15
    move-exception v0

    move-object v13, v14

    move-object v1, v15

    move-object/from16 v6, v18

    move-object/from16 v5, v19

    goto/16 :goto_1d

    :catch_16
    move-exception v0

    move-object v13, v14

    move-object/from16 v17, v15

    goto/16 :goto_26

    :catch_17
    move-exception v0

    move-object v13, v14

    move-object/from16 v17, v15

    goto/16 :goto_28

    :catch_18
    move-exception v0

    move-object v13, v14

    move-object/from16 v17, v15

    goto/16 :goto_d

    :catch_19
    move-exception v0

    :goto_15
    move-object/from16 v19, v5

    goto :goto_18

    :catch_1a
    move-exception v0

    move-object/from16 v19, v5

    :goto_16
    move-object/from16 v6, v18

    goto/16 :goto_1c

    :catch_1b
    move-exception v0

    move-object/from16 v19, v5

    :goto_17
    move-object/from16 v18, v6

    goto/16 :goto_1c

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    const/4 v13, 0x0

    goto/16 :goto_2b

    :catch_1c
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v18, v6

    :goto_18
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v13, 0x0

    :goto_19
    if-ne v4, v5, :cond_13

    :try_start_d
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_f
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v5, v19

    invoke-interface {v2, v5, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-interface {v3, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_1a

    :cond_10
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v6, v18

    invoke-static {v6, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_11
    :goto_1a
    if-eqz v13, :cond_12

    invoke-static {v13}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_1b
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_12

    invoke-static {v13, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v0, v1}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v0, v2

    goto :goto_1b

    :cond_12
    invoke-virtual {v8, v9}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    const/4 v1, 0x4

    if-eq v4, v1, :cond_22

    goto/16 :goto_13

    :cond_13
    :try_start_e
    throw v0

    :catch_1d
    move-exception v0

    :goto_1c
    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_1d
    const/4 v14, 0x1

    if-eq v4, v14, :cond_17

    instance-of v14, v0, Ljava/io/IOException;

    if-nez v14, :cond_16

    instance-of v14, v0, Ljava/lang/RuntimeException;

    if-nez v14, :cond_15

    instance-of v14, v0, Ljavax/servlet/ServletException;

    if-nez v14, :cond_14

    goto :goto_1e

    :cond_14
    check-cast v0, Ljavax/servlet/ServletException;

    throw v0

    :cond_15
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_16
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_17
    :goto_1e
    instance-of v14, v0, Ljavax/servlet/UnavailableException;

    if-eqz v14, :cond_18

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_18
    instance-of v14, v0, Ljavax/servlet/ServletException;

    if-eqz v14, :cond_19

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    move-object v14, v0

    check-cast v14, Ljavax/servlet/ServletException;

    invoke-virtual {v14}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v14

    if-eq v14, v0, :cond_19

    if-eqz v14, :cond_19

    move-object v0, v14

    :cond_19
    :goto_1f
    instance-of v14, v0, Lorg/mortbay/jetty/RetryRequest;

    if-nez v14, :cond_26

    instance-of v14, v0, Lorg/mortbay/jetty/HttpException;

    if-nez v14, :cond_25

    instance-of v14, v0, Lorg/mortbay/io/RuntimeIOException;

    if-nez v14, :cond_24

    instance-of v14, v0, Lorg/mortbay/jetty/EofException;

    if-nez v14, :cond_23

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto :goto_21

    :cond_1a
    instance-of v14, v0, Ljava/io/IOException;

    if-nez v14, :cond_1c

    instance-of v14, v0, Ljavax/servlet/UnavailableException;

    if-eqz v14, :cond_1b

    goto :goto_20

    :cond_1b
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_1c
    :goto_20
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :goto_21
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v14

    if-nez v14, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v5, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v2, v0, Ljavax/servlet/UnavailableException;

    if-eqz v2, :cond_1e

    move-object v2, v0

    check-cast v2, Ljavax/servlet/UnavailableException;

    invoke-virtual {v2}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x194

    invoke-interface {v3, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_22

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f7

    invoke-interface {v3, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_22

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-interface {v3, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_22

    :cond_1f
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_20
    :goto_22
    if-eqz v13, :cond_21

    invoke-static {v13}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_23
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_21

    invoke-static {v13, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v0, v1}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v0, v2

    goto :goto_23

    :cond_21
    invoke-virtual {v8, v9}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    const/4 v1, 0x4

    if-eq v4, v1, :cond_22

    goto/16 :goto_13

    :cond_22
    :goto_24
    return-void

    :cond_23
    :try_start_f
    check-cast v0, Lorg/mortbay/jetty/EofException;

    throw v0

    :cond_24
    check-cast v0, Lorg/mortbay/io/RuntimeIOException;

    throw v0

    :cond_25
    check-cast v0, Lorg/mortbay/jetty/HttpException;

    throw v0

    :cond_26
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    check-cast v0, Lorg/mortbay/jetty/RetryRequest;

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_2b

    :catch_1e
    move-exception v0

    const/4 v13, 0x0

    :goto_25
    const/16 v17, 0x0

    :goto_26
    :try_start_10
    throw v0

    :catch_1f
    move-exception v0

    const/4 v13, 0x0

    :goto_27
    const/16 v17, 0x0

    :goto_28
    throw v0

    :catch_20
    move-exception v0

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_29
    const/16 v17, 0x0

    :goto_2a
    invoke-virtual {v8, v1}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception v0

    move-object/from16 v1, v17

    :goto_2b
    if-eqz v13, :cond_27

    invoke-static {v13}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    :goto_2c
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_27

    invoke-static {v13, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v2, v1}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v2, v3

    goto :goto_2c

    :cond_27
    invoke-virtual {v8, v9}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    const/4 v1, 0x4

    if-eq v4, v1, :cond_28

    invoke-virtual {v8, v10}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_28
    throw v0
.end method

.method public initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/mortbay/util/MultiException;

    invoke-direct {v0}, Lorg/mortbay/util/MultiException;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/mortbay/component/AbstractLifeCycle;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/Holder;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->r:Lorg/mortbay/jetty/servlet/PathMap;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mortbay/jetty/servlet/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/Holder;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/Holder;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/servlet/Holder;->setClassName(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "No forced path servlet for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Lorg/mortbay/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    :goto_3
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/mortbay/component/AbstractLifeCycle;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v3

    const-string v4, "EXCEPTION "

    invoke-static {v4, v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    :cond_5
    return-void
.end method

.method public isAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object p0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isFilterChainsCached()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->i:Z

    return p0
.end method

.method public isInitializeAtStart()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStartWithUnavailable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->k:Z

    return p0
.end method

.method public matchesPath(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->r:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->containsMatch(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public newFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 0

    .line 2
    new-instance p0, Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/FilterHolder;-><init>()V

    return-object p0
.end method

.method public newFilterHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 0

    .line 1
    new-instance p0, Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/FilterHolder;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public newServletHolder()Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 0

    .line 1
    new-instance p0, Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;-><init>()V

    return-object p0
.end method

.method public newServletHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 0

    .line 2
    new-instance p0, Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Not Found "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0x194

    invoke-interface {p2, p0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void
.end method

.method public setFilterChainsCached(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->i:Z

    return-void
.end method

.method public setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V
    .locals 7

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const-string v5, "filterMapping"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateMappings()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->g()V

    return-void
.end method

.method public declared-synchronized setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const-string v5, "filter"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateNameMappings()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setInitializeAtStart(Z)V
    .locals 0

    return-void
.end method

.method public setMaxFilterChainsCacheSize(I)V
    .locals 3

    iput p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->j:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->setMaxEntries(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 13

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const/4 v4, 0x0

    const-string v5, "filter"

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const-string v5, "filterMapping"

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    const-string v5, "servlet"

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    const-string v5, "servletMapping"

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const-string v5, "filter"

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const-string v11, "filterMapping"

    const/4 v12, 0x1

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    const-string v4, "servlet"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    const-string v10, "servletMapping"

    const/4 v11, 0x1

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandler;->setServer(Lorg/mortbay/jetty/Server;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->g()V

    return-void
.end method

.method public setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V
    .locals 7

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    const-string v5, "servletMapping"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateMappings()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->g()V

    return-void
.end method

.method public declared-synchronized setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    const-string v5, "servlet"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateNameMappings()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStartWithUnavailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->k:Z

    return-void
.end method

.method public declared-synchronized updateMappings()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->o:Ljava/util/List;

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->p:Lorg/mortbay/util/MultiMap;

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->o:Ljava/util/List;

    new-instance v0, Lorg/mortbay/util/MultiMap;

    invoke-direct {v0}, Lorg/mortbay/util/MultiMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->p:Lorg/mortbay/util/MultiMap;

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    array-length v4, v3

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->n:Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/servlet/FilterMapping;->d(Lorg/mortbay/jetty/servlet/FilterHolder;)V

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->o:Ljava/util/List;

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v3

    move v4, v2

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    aget-object v5, v3, v4

    if-eqz v5, :cond_2

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->p:Lorg/mortbay/util/MultiMap;

    iget-object v7, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v7, v7, v0

    invoke-virtual {v6, v5, v7}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No filter named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->h:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->q:Ljava/util/Map;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    move v1, v2

    :goto_3
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    array-length v4, v3

    if-ge v1, v4, :cond_a

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->q:Ljava/util/Map;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v3, :cond_9

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_4
    array-length v6, v4

    if-ge v5, v6, :cond_8

    aget-object v6, v4, v5

    if-eqz v6, :cond_7

    invoke-virtual {v0, v6, v3}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such servlet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->m:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->r:Lorg/mortbay/jetty/servlet/PathMap;

    goto :goto_6

    :cond_b
    :goto_5
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->r:Lorg/mortbay/jetty/servlet/PathMap;

    :goto_6
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "filterNameMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->n:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "pathFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "servletFilterMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->p:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "servletPathMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->r:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "servletNameMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->q:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->initialize()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateNameMappings()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->n:Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v4, v4, v0

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->g:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lorg/mortbay/jetty/servlet/Holder;->setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->q:Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v3, v3, v1

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->l:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/servlet/Holder;->setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
