.class public final Lnet/sf/saxon/s9api/streams/XdmCollectors$i;
.super Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/streams/XdmCollectors;->asString()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
        "Ljava/lang/String;",
        "Lnet/sf/saxon/s9api/XdmItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;-><init>(Lnet/sf/saxon/s9api/streams/XdmCollectors$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic j(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmCollectors$i;->m(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()V
    .locals 0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public l()V
    .locals 0

    new-instance p0, Lnet/sf/saxon/s9api/streams/XdmCollectors$MultipleItemException;

    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$MultipleItemException;-><init>()V

    throw p0
.end method

.method public m(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
