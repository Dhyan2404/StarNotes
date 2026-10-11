.class public Lnet/sf/saxon/type/StringConverter$StringToNotation;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToNotation"
.end annotation


# instance fields
.field public b:Lnet/sf/saxon/om/NamespaceResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-void
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/type/StringConverter$StringToNotation;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/type/StringConverter$StringToNotation;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Namespace prefix "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has not been declared"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/type/Converter;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    aget-object v3, v0, v4

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/lib/ConversionRules;->isDeclaredNotation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notation {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not declared in the schema"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/value/NotationValue;

    aget-object v3, v0, v2

    aget-object v0, v0, v4

    invoke-direct {p0, v3, v1, v0, v2}, Lnet/sf/saxon/value/NotationValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p1

    :catch_1
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid lexical QName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot validate a NOTATION without a namespace resolver"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToNotation;->b:Lnet/sf/saxon/om/NamespaceResolver;

    return-object p0
.end method

.method public bridge synthetic setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToNotation;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/StringConverter$StringToNotation;

    move-result-object p0

    return-object p0
.end method

.method public setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/StringConverter$StringToNotation;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToNotation;

    invoke-virtual {p0}, Lnet/sf/saxon/type/Converter;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/StringConverter$StringToNotation;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    .line 3
    iput-object p1, v0, Lnet/sf/saxon/type/StringConverter$StringToNotation;->b:Lnet/sf/saxon/om/NamespaceResolver;

    return-object v0
.end method
