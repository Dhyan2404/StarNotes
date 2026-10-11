.class public Lnet/sf/saxon/type/Converter$DownCastingConverter;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownCastingConverter"
.end annotation


# instance fields
.field public final b:Lnet/sf/saxon/type/AtomicType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/type/Converter;->setConversionRules(Lnet/sf/saxon/lib/ConversionRules;)V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-static {v0, v1}, Lnet/sf/saxon/type/Type;->isSubType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 4
    new-instance p2, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/Converter;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lnet/sf/saxon/type/AtomicType;->validate(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p2

    if-nez p2, :cond_2

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/AtomicValue;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p2
.end method

.method public getTargetType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    return-object p0
.end method

.method public validate(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/Converter;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lnet/sf/saxon/type/AtomicType;->validate(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method
