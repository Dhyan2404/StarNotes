.class public Lnet/sf/saxon/s9api/Processor$a;
.super Lnet/sf/saxon/lib/ExtensionFunctionDefinition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/s9api/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/s9api/ExtensionFunction;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/ExtensionFunction;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/Processor$a;->a:Lnet/sf/saxon/s9api/ExtensionFunction;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/s9api/Processor$a;)Lnet/sf/saxon/s9api/ExtensionFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor$a;->a:Lnet/sf/saxon/s9api/ExtensionFunction;

    return-object p0
.end method


# virtual methods
.method public dependsOnFocus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor$a;->a:Lnet/sf/saxon/s9api/ExtensionFunction;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/ExtensionFunction;->getArgumentTypes()[Lnet/sf/saxon/s9api/SequenceType;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Lnet/sf/saxon/value/SequenceType;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/SequenceType;->getItemType()Lnet/sf/saxon/s9api/ItemType;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SequenceType;->getOccurrenceIndicator()Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getCardinality()I

    move-result v3

    invoke-static {v2, v3}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFunctionQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor$a;->a:Lnet/sf/saxon/s9api/ExtensionFunction;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/ExtensionFunction;->getName()Lnet/sf/saxon/s9api/QName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getMaximumNumberOfArguments()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor$a;->a:Lnet/sf/saxon/s9api/ExtensionFunction;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/ExtensionFunction;->getArgumentTypes()[Lnet/sf/saxon/s9api/SequenceType;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getMinimumNumberOfArguments()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor$a;->a:Lnet/sf/saxon/s9api/ExtensionFunction;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/ExtensionFunction;->getArgumentTypes()[Lnet/sf/saxon/s9api/SequenceType;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getResultType([Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor$a;->a:Lnet/sf/saxon/s9api/ExtensionFunction;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/ExtensionFunction;->getResultType()Lnet/sf/saxon/s9api/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/SequenceType;->getItemType()Lnet/sf/saxon/s9api/ItemType;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/SequenceType;->getOccurrenceIndicator()Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getCardinality()I

    move-result p0

    invoke-static {p1, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public hasSideEffects()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeCallExpression()Lnet/sf/saxon/lib/ExtensionFunctionCall;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/Processor$a$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/Processor$a$a;-><init>(Lnet/sf/saxon/s9api/Processor$a;)V

    return-object v0
.end method

.method public trustResultType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
