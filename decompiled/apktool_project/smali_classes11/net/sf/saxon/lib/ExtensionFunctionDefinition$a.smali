.class public Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/lib/ExtensionFunctionDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

.field public final f:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    iput p2, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->f:I

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    iget v1, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->f:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->makeCallExpression()Lnet/sf/saxon/lib/ExtensionFunctionCall;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong number of arguments in call to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getFunctionQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "XPTY0004"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getArity()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->f:I

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getFunctionQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    iget-object v1, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getResultType([Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    return-object v0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getFunctionQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public isTrustedResultType()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->trustResultType()Z

    move-result p0

    return p0
.end method
