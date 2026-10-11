.class public Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToDerivedStringSubtype"
.end annotation


# instance fields
.field public b:Lnet/sf/saxon/type/AtomicType;

.field public c:Lnet/sf/saxon/type/StringConverter;

.field public d:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/type/AtomicType;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    iput-object p2, p0, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p2}, Lnet/sf/saxon/type/SimpleType;->getWhitespaceAction()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;->d:I

    invoke-interface {p2}, Lnet/sf/saxon/type/SimpleType;->getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p2, p1}, Lnet/sf/saxon/type/AtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;->c:Lnet/sf/saxon/type/StringConverter;

    return-void
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;->d:I

    invoke-static {v0, p1}, Lnet/sf/saxon/value/Whitespace;->applyWhitespaceNormalization(ILnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;->c:Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/StringConverter;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v0, p1}, Lnet/sf/saxon/type/SimpleType;->preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;->b:Lnet/sf/saxon/type/AtomicType;

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/Converter;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lnet/sf/saxon/type/AtomicType;->validate(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/type/AtomicType;)V

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method
