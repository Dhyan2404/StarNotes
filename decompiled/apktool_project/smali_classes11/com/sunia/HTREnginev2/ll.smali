.class public Lcom/sunia/HTREnginev2/ll;
.super Lnet/sf/saxon/s9api/streams/Step;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/s9api/streams/Step<",
        "Lnet/sf/saxon/s9api/XdmNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/s9api/Axis;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Axis;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/Step;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ll;->e:Lnet/sf/saxon/s9api/Axis;

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "+",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/s9api/XdmNode;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/s9api/XdmNode;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ll;->e:Lnet/sf/saxon/s9api/Axis;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/XdmNode;->axisIterator(Lnet/sf/saxon/s9api/Axis;)Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->stream()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ll;->a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
