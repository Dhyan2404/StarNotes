.class public final Lnet/sf/saxon/s9api/streams/XdmCollectors$a;
.super Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/streams/XdmCollectors;->asXdmValue()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/s9api/streams/XdmCollectors$j<",
        "Lnet/sf/saxon/s9api/XdmValue;",
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

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmCollectors$a;->m(Ljava/util/List;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/util/List;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;)",
            "Lnet/sf/saxon/s9api/XdmValue;"
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/s9api/XdmValue;

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Ljava/lang/Iterable;)V

    return-object p0
.end method
