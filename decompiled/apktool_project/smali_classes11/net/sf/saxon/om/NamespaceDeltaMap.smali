.class public Lnet/sf/saxon/om/NamespaceDeltaMap;
.super Lnet/sf/saxon/om/NamespaceMap;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceBindingSet;
.implements Lnet/sf/saxon/om/NamespaceResolver;


# static fields
.field public static final g:Lnet/sf/saxon/om/NamespaceDeltaMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/NamespaceDeltaMap;

    invoke-direct {v0}, Lnet/sf/saxon/om/NamespaceDeltaMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/om/NamespaceDeltaMap;->g:Lnet/sf/saxon/om/NamespaceDeltaMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/om/NamespaceMap;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    return-void
.end method

.method public static emptyMap()Lnet/sf/saxon/om/NamespaceDeltaMap;
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/NamespaceDeltaMap;->g:Lnet/sf/saxon/om/NamespaceDeltaMap;

    return-object v0
.end method


# virtual methods
.method public allowsNamespaceUndeclarations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeNamespaceMap()Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    new-instance p0, Lnet/sf/saxon/om/NamespaceDeltaMap;

    invoke-direct {p0}, Lnet/sf/saxon/om/NamespaceDeltaMap;-><init>()V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceDeltaMap;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NamespaceDeltaMap;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/NamespaceDeltaMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceDeltaMap;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NamespaceDeltaMap;

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamespaceDeltaMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object p0

    return-object p0
.end method
