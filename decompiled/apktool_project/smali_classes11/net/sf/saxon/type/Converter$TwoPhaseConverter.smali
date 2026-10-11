.class public Lnet/sf/saxon/type/Converter$TwoPhaseConverter;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoPhaseConverter"
.end annotation


# instance fields
.field public final b:Lnet/sf/saxon/type/Converter;

.field public final c:Lnet/sf/saxon/type/Converter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/Converter;Lnet/sf/saxon/type/Converter;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->b:Lnet/sf/saxon/type/Converter;

    iput-object p2, p0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->c:Lnet/sf/saxon/type/Converter;

    return-void
.end method

.method public static makeTwoPhaseConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/Converter$TwoPhaseConverter;
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;

    invoke-virtual {p3, p0, p1}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    invoke-virtual {p3, p1, p2}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;-><init>(Lnet/sf/saxon/type/Converter;Lnet/sf/saxon/type/Converter;)V

    return-object v0
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->b:Lnet/sf/saxon/type/Converter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    iget-object p0, p0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->c:Lnet/sf/saxon/type/Converter;

    instance-of v0, p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method

.method public setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;
    .locals 2

    new-instance v0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;

    iget-object v1, p0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->b:Lnet/sf/saxon/type/Converter;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->c:Lnet/sf/saxon/type/Converter;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;-><init>(Lnet/sf/saxon/type/Converter;Lnet/sf/saxon/type/Converter;)V

    return-object v0
.end method
