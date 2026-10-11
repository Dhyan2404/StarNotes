.class public abstract Lnet/sf/saxon/expr/TreatExpression;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    const-string v0, "XPDY0050"

    .line 1
    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/TreatExpression;->make(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static make(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v1, "treat as"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    .line 3
    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p2

    invoke-static {p0, p2, v0}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    .line 5
    new-instance p2, Lnet/sf/saxon/expr/ItemChecker;

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    return-object p2
.end method
