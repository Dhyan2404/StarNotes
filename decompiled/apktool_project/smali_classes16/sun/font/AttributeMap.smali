.class public final Lsun/font/AttributeMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/awt/font/TextAttribute;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static first:Z


# instance fields
.field private delegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private values:Lsun/font/AttributeValues;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lsun/font/AttributeValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lsun/font/AttributeMap;->values:Lsun/font/AttributeValues;

    return-void
.end method

.method private delegate()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/font/AttributeMap;->delegateMap:Ljava/util/Map;

    if-nez v0, :cond_1

    sget-boolean v0, Lsun/font/AttributeMap;->first:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lsun/font/AttributeMap;->first:Z

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :cond_0
    iget-object v0, p0, Lsun/font/AttributeMap;->values:Lsun/font/AttributeValues;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, v1}, Lsun/font/AttributeValues;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/font/AttributeMap;->delegateMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/AttributeMap;->values:Lsun/font/AttributeValues;

    :cond_1
    iget-object p0, p0, Lsun/font/AttributeMap;->delegateMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/awt/font/TextAttribute;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lsun/font/AttributeMap;->delegate()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getValues()Lsun/font/AttributeValues;
    .locals 0

    iget-object p0, p0, Lsun/font/AttributeMap;->values:Lsun/font/AttributeValues;

    return-object p0
.end method

.method public put(Ljava/awt/font/TextAttribute;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-direct {p0}, Lsun/font/AttributeMap;->delegate()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/awt/font/TextAttribute;

    invoke-virtual {p0, p1, p2}, Lsun/font/AttributeMap;->put(Ljava/awt/font/TextAttribute;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsun/font/AttributeMap;->values:Lsun/font/AttributeValues;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsun/font/AttributeMap;->values:Lsun/font/AttributeValues;

    invoke-virtual {p0}, Lsun/font/AttributeValues;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
