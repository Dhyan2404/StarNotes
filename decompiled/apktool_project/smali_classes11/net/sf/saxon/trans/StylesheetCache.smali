.class public Lnet/sf/saxon/trans/StylesheetCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/s9api/XsltExecutable;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/s9api/XsltExecutable;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Lnet/sf/saxon/s9api/XsltExecutable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/StylesheetCache;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/StylesheetCache;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/StylesheetCache;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getStylesheetByLocation(Ljava/lang/String;)Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/StylesheetCache;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XsltExecutable;

    return-object p0
.end method

.method public getStylesheetByNode(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/StylesheetCache;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XsltExecutable;

    return-object p0
.end method

.method public getStylesheetByText(Ljava/lang/String;)Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/StylesheetCache;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XsltExecutable;

    return-object p0
.end method

.method public setStylesheetByLocation(Ljava/lang/String;Lnet/sf/saxon/s9api/XsltExecutable;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/StylesheetCache;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStylesheetByNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/s9api/XsltExecutable;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/StylesheetCache;->c:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStylesheetByText(Ljava/lang/String;Lnet/sf/saxon/s9api/XsltExecutable;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/StylesheetCache;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
