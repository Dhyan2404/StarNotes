.class public abstract Lnet/sf/saxon/functions/TreatFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/TreatFn$ZeroOrOne;,
        Lnet/sf/saxon/functions/TreatFn$OneOrMore;,
        Lnet/sf/saxon/functions/TreatFn$ExactlyOne;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

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

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/TreatFn;->getRequiredCardinality()I

    move-result p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/TreatFn;->makeRoleDiagnostic()Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lnet/sf/saxon/expr/CardinalityCheckingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;ILnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)V

    new-instance p0, Lnet/sf/saxon/om/LazySequence;

    invoke-direct {p0, v0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p0
.end method

.method public abstract getErrorCodeForTypeErrors()Ljava/lang/String;
.end method

.method public abstract getRequiredCardinality()I
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "TreatFn"

    return-object p0
.end method

.method public makeRoleDiagnostic()Lnet/sf/saxon/expr/parser/RoleDiagnostic;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/TreatFn;->getErrorCodeForTypeErrors()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method
