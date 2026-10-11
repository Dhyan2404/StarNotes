.class Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubLoaderList"
.end annotation


# instance fields
.field private final seen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/SchemaTypeLoader;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final theList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaTypeLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->theList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->seen:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/xmlbeans/SchemaTypeLoader;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->seen:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->theList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->seen:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public add([Lorg/apache/xmlbeans/SchemaTypeLoader;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 2
    instance-of v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    if-eqz v3, :cond_3

    .line 3
    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    .line 4
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->access$000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;)Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;)Lorg/apache/xmlbeans/ResourceLoader;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->access$300(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;)[Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->add([Lorg/apache/xmlbeans/SchemaTypeLoader;)V

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->add(Lorg/apache/xmlbeans/SchemaTypeLoader;)V

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->add(Lorg/apache/xmlbeans/SchemaTypeLoader;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public toArray()[Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->theList:Ljava/util/List;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->access$400()[Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-object p0
.end method
