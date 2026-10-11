.class public final Lnet/sf/saxon/expr/instruct/GlobalParam;
.super Lnet/sf/saxon/expr/instruct/GlobalVariable;
.source "SourceFile"


# static fields
.field public static final synthetic x:Z


# instance fields
.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/GlobalParam;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->getBindery(Lnet/sf/saxon/expr/PackageData;)Lnet/sf/saxon/expr/instruct/Bindery;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/instruct/Bindery;->getGlobalVariableValue(Lnet/sf/saxon/expr/instruct/GlobalVariable;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    instance-of p0, v2, Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;

    if-nez p0, :cond_0

    return-object v2

    .line 6
    :cond_0
    check-cast v2, Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    throw p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Lnet/sf/saxon/Controller;->getConvertedParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/expr/instruct/Bindery;->saveGlobalVariableValue(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isRequiredParam()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No value supplied for required parameter $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 13
    invoke-virtual {p2, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 14
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "XTDE0050"

    goto :goto_0

    :cond_3
    const-string p0, "XPDY0002"

    :goto_0
    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 15
    throw p2

    .line 16
    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalParam;->isImplicitlyRequiredParam()Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->actuallyEvaluate(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    .line 18
    :cond_5
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A value must be supplied for parameter $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because there is no default value for the required type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 21
    invoke-virtual {p2, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    const-string p0, "XTDE0700"

    .line 22
    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 23
    throw p2
.end method

.method public bridge synthetic evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/GlobalParam;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getFlags()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getFlags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalParam;->isImplicitlyRequiredParam()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTracingTag()Ljava/lang/String;
    .locals 0

    const-string p0, "xsl:param"

    return-object p0
.end method

.method public isImplicitlyRequiredParam()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalParam;->w:Z

    return p0
.end method

.method public setImplicitlyRequiredParam(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/GlobalParam;->w:Z

    return-void
.end method
