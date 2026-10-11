.class public final Lnet/sf/saxon/s9api/streams/Steps$c;
.super Lnet/sf/saxon/s9api/streams/Step;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/streams/Steps;->castAs(Lnet/sf/saxon/s9api/ItemType;)Lnet/sf/saxon/s9api/streams/Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/s9api/streams/Step<",
        "Lnet/sf/saxon/s9api/XdmAtomicValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/lib/ConversionRules;

.field public final synthetic f:Lnet/sf/saxon/type/ItemType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/streams/Steps$c;->e:Lnet/sf/saxon/lib/ConversionRules;

    iput-object p2, p0, Lnet/sf/saxon/s9api/streams/Steps$c;->f:Lnet/sf/saxon/type/ItemType;

    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/Step;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "+",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    :try_start_0
    check-cast p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/s9api/streams/Steps$c;->e:Lnet/sf/saxon/lib/ConversionRules;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/Steps$c;->f:Lnet/sf/saxon/type/ItemType;

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/AtomicSequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/Steps$c;->a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
