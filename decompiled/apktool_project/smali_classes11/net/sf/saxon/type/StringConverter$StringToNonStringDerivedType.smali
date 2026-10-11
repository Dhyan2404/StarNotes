.class public Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToNonStringDerivedType"
.end annotation


# instance fields
.field public final b:Lnet/sf/saxon/type/StringConverter;

.field public final c:Lnet/sf/saxon/type/Converter$DownCastingConverter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/StringConverter;Lnet/sf/saxon/type/Converter$DownCastingConverter;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->b:Lnet/sf/saxon/type/StringConverter;

    iput-object p2, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->c:Lnet/sf/saxon/type/Converter$DownCastingConverter;

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->c:Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-virtual {v0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/sf/saxon/type/SimpleType;->preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->b:Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->c:Lnet/sf/saxon/type/Converter$DownCastingConverter;

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/type/Converter$DownCastingConverter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method

.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->c:Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-virtual {v0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/sf/saxon/type/SimpleType;->preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->b:Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->c:Lnet/sf/saxon/type/Converter$DownCastingConverter;

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/type/Converter$DownCastingConverter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;

    move-result-object p0

    return-object p0
.end method

.method public setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;
    .locals 2

    .line 2
    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;

    iget-object v1, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->b:Lnet/sf/saxon/type/StringConverter;

    .line 3
    invoke-virtual {v1, p1}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/StringConverter;

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->c:Lnet/sf/saxon/type/Converter$DownCastingConverter;

    .line 4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;-><init>(Lnet/sf/saxon/type/StringConverter;Lnet/sf/saxon/type/Converter$DownCastingConverter;)V

    return-object v0
.end method

.method public validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->c:Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-virtual {v0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/sf/saxon/type/SimpleType;->preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->b:Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/type/ValidationFailure;

    return-object v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;->c:Lnet/sf/saxon/type/Converter$DownCastingConverter;

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/type/Converter$DownCastingConverter;->validate(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method
