.class public Lnet/sf/saxon/s9api/streams/XdmCollectors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/s9api/streams/XdmCollectors$j;,
        Lnet/sf/saxon/s9api/streams/XdmCollectors$MultipleItemException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asAtomic()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmCollectors$g;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$g;-><init>()V

    return-object v0
.end method

.method public static asListOfAtomic()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmCollectors$e;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$e;-><init>()V

    return-object v0
.end method

.method public static asListOfNodes()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmCollectors$d;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$d;-><init>()V

    return-object v0
.end method

.method public static asNode()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmCollectors$b;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$b;-><init>()V

    return-object v0
.end method

.method public static asOptionalAtomic()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmCollectors$f;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$f;-><init>()V

    return-object v0
.end method

.method public static asOptionalNode()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmCollectors$c;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$c;-><init>()V

    return-object v0
.end method

.method public static asOptionalString()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmCollectors$h;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$h;-><init>()V

    return-object v0
.end method

.method public static asString()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmCollectors$i;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$i;-><init>()V

    return-object v0
.end method

.method public static asXdmValue()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
            "Lnet/sf/saxon/s9api/XdmValue;",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmCollectors$a;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$a;-><init>()V

    return-object v0
.end method
