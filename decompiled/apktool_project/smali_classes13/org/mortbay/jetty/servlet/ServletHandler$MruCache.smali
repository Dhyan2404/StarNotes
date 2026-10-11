.class Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ServletHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MruCache"
.end annotation


# instance fields
.field private maxEntries:I

.field private final synthetic this$0:Lorg/mortbay/jetty/servlet/ServletHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/ServletHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 2
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 p1, 0x3e8

    .line 3
    iput p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->maxEntries:I

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 5
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 p1, 0x3e8

    .line 6
    iput p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->maxEntries:I

    .line 7
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->setMaxEntries(I)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->maxEntries:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setMaxEntries(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->maxEntries:I

    return-void
.end method
