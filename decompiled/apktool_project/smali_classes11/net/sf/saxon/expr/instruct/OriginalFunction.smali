.class public Lnet/sf/saxon/expr/instruct/OriginalFunction;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Function;
.implements Lnet/sf/saxon/expr/ContextOriginator;


# instance fields
.field public final e:Lnet/sf/saxon/expr/instruct/UserFunction;

.field public final f:Lnet/sf/saxon/expr/Component;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Component;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->f:Lnet/sf/saxon/expr/Component;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/UserFunction;

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->e:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->e:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->f:Lnet/sf/saxon/expr/Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->e:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/UserFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    const-string v1, "origF"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v1, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/OriginalFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/OriginalFunction;->getArity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "arity"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->packageMap:Ljava/util/Map;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->f:Lnet/sf/saxon/expr/Component;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pack"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->e:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result p0

    return p0
.end method

.method public getComponent()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->f:Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public getContainingPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->f:Lnet/sf/saxon/expr/Component;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->e:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->e:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/OriginalFunction;->e:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method
