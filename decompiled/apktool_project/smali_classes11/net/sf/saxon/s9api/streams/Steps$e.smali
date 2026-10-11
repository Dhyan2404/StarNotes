.class public final Lnet/sf/saxon/s9api/streams/Steps$e;
.super Lnet/sf/saxon/s9api/streams/Step;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/streams/Steps;->tokenize()Lnet/sf/saxon/s9api/streams/Step;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/Step;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/Whitespace$Tokenizer;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->ofAtomicValues(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->stream()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/Steps$e;->a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
