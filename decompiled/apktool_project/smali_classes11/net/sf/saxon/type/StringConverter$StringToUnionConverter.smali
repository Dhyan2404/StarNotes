.class public Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToUnionConverter"
.end annotation


# instance fields
.field public b:Lnet/sf/saxon/type/PlainType;

.field public c:Lnet/sf/saxon/lib/ConversionRules;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/PlainType;Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;->b:Lnet/sf/saxon/type/PlainType;

    iput-object p2, p0, Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;->c:Lnet/sf/saxon/lib/ConversionRules;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;->b:Lnet/sf/saxon/type/PlainType;

    check-cast v0, Lnet/sf/saxon/type/UnionType;

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;->c:Lnet/sf/saxon/lib/ConversionRules;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Lnet/sf/saxon/type/UnionType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method
