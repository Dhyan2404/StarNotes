.class public abstract Lnet/sf/saxon/expr/flwor/Clause;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    }
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/s9api/Location;

.field public b:Lnet/sf/saxon/expr/PackageData;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
.end method

.method public containsNonInlineableVariableReference(Lnet/sf/saxon/expr/Binding;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;
.end method

.method public abstract explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public gatherVariableReferences(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/ExpressionVisitor;",
            "Lnet/sf/saxon/expr/Binding;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/Clause;->b:Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/Clause;->a:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/Clause;->b:Lnet/sf/saxon/expr/PackageData;

    return-object p0
.end method

.method public abstract getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
.end method

.method public abstract getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
.end method

.method public getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-object p0
.end method

.method public getTraceInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p0

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "var"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isRepeated()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/flwor/Clause;->c:Z

    return p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public abstract processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public refineVariableType(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Ljava/util/List;Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/ExpressionVisitor;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;",
            "Lnet/sf/saxon/expr/Expression;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/Clause;->a:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public setPackageData(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/Clause;->b:Lnet/sf/saxon/expr/PackageData;

    return-void
.end method

.method public setRepeated(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/flwor/Clause;->c:Z

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method
