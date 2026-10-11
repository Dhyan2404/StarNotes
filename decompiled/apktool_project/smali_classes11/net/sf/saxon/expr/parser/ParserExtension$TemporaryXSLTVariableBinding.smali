.class public Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/LocalBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/ParserExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemporaryXSLTVariableBinding"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/style/SourceBinding;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/SourceBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;->e:Lnet/sf/saxon/style/SourceBinding;

    return-void
.end method


# virtual methods
.method public addReference(Lnet/sf/saxon/expr/VariableReference;Z)V
    .locals 0

    return-void
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getIntegerBoundsForVariable()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalSlotNumber()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;->e:Lnet/sf/saxon/style/SourceBinding;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->getInferredType(Z)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;->e:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public isAssignable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isGlobal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIndexedVariable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setIndexedVariable()V
    .locals 0

    return-void
.end method
