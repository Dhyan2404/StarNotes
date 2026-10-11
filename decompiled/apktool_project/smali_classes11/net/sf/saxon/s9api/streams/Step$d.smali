.class public Lnet/sf/saxon/s9api/streams/Step$d;
.super Lnet/sf/saxon/s9api/streams/Step;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/streams/Step;->last()Lnet/sf/saxon/s9api/streams/Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/s9api/streams/Step<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/streams/Step;

.field public final synthetic f:Lnet/sf/saxon/s9api/streams/Step;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/streams/Step$d;->f:Lnet/sf/saxon/s9api/streams/Step;

    iput-object p2, p0, Lnet/sf/saxon/s9api/streams/Step$d;->e:Lnet/sf/saxon/s9api/streams/Step;

    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/Step;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Step$d;->c(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/Step$d;->b(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public b(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "+TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/Step$d;->e:Lnet/sf/saxon/s9api/streams/Step;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance p1, Lcom/sunia/HTREnginev2/qym;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/qym;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/rym;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/rym;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/sym;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/sym;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method
