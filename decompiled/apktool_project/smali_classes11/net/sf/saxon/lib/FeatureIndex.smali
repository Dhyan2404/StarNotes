.class public Lnet/sf/saxon/lib/FeatureIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/lib/FeatureData;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/lib/FeatureData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/lib/FeatureIndex;->a:Ljava/util/Map;

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/lib/FeatureIndex;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {}, Lnet/sf/saxon/lib/FeatureData;->init()V

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/FeatureData;

    sget-object v2, Lnet/sf/saxon/lib/FeatureIndex;->a:Ljava/util/Map;

    iget-object v3, v1, Lnet/sf/saxon/lib/FeatureData;->uri:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lnet/sf/saxon/lib/FeatureIndex;->b:Lnet/sf/saxon/z/IntHashMap;

    iget v3, v1, Lnet/sf/saxon/lib/FeatureData;->code:I

    invoke-virtual {v2, v3, v1}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/lib/FeatureIndex;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getData(I)Lnet/sf/saxon/lib/FeatureData;
    .locals 1

    .line 2
    sget-object v0, Lnet/sf/saxon/lib/FeatureIndex;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/FeatureData;

    return-object p0
.end method

.method public static getData(Ljava/lang/String;)Lnet/sf/saxon/lib/FeatureData;
    .locals 1

    .line 1
    sget-object v0, Lnet/sf/saxon/lib/FeatureIndex;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/FeatureData;

    return-object p0
.end method

.method public static getNames()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lnet/sf/saxon/lib/FeatureIndex;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
