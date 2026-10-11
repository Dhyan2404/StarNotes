.class public Lnet/sf/saxon/expr/flwor/ClauseInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trace/Traceable;


# instance fields
.field public final e:Lnet/sf/saxon/expr/flwor/Clause;

.field public f:Lnet/sf/saxon/om/NamespaceResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/Clause;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/ClauseInfo;->e:Lnet/sf/saxon/expr/flwor/Clause;

    return-void
.end method


# virtual methods
.method public getClause()Lnet/sf/saxon/expr/flwor/Clause;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ClauseInfo;->e:Lnet/sf/saxon/expr/flwor/Clause;

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ClauseInfo;->e:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ClauseInfo;->e:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ClauseInfo;->f:Lnet/sf/saxon/om/NamespaceResolver;

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ClauseInfo;->e:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ClauseInfo;->e:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/ClauseInfo;->f:Lnet/sf/saxon/om/NamespaceResolver;

    return-void
.end method
