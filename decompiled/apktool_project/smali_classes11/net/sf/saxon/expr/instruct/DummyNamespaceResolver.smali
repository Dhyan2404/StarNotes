.class public final Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceResolver;


# static fields
.field public static final e:Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;->e:Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;->e:Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;

    return-object v0
.end method


# virtual methods
.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const-string p2, ""

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const-string p0, "xml"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_1
    return-object p2
.end method

.method public iteratePrefixes()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/tree/jiter/PairIterator;

    const-string v0, ""

    const-string v1, "xml"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/tree/jiter/PairIterator;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
