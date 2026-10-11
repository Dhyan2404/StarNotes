.class public Lnet/sf/saxon/expr/instruct/UserFunctionParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/LocalBinding;


# instance fields
.field public e:Lnet/sf/saxon/value/SequenceType;

.field public f:Lnet/sf/saxon/om/StructuredQName;

.field public g:I

.field public final h:I

.field public i:Z

.field public j:Lnet/sf/saxon/trans/FunctionStreamability;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e7

    iput v0, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->i:Z

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->j:Lnet/sf/saxon/trans/FunctionStreamability;

    return-void
.end method


# virtual methods
.method public addReference(Lnet/sf/saxon/expr/VariableReference;Z)V
    .locals 0

    return-void
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->g:I

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/XPathContext;->evaluateLocalVariable(I)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionStreamability()Lnet/sf/saxon/trans/FunctionStreamability;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->j:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0
.end method

.method public getIntegerBoundsForVariable()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->g:I

    return p0
.end method

.method public getReferenceCount()I
    .locals 0

    const/16 p0, 0x3e7

    return p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->e:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->f:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public final isAssignable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isGlobal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIndexedVariable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->i:Z

    return p0
.end method

.method public setFunctionStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->j:Lnet/sf/saxon/trans/FunctionStreamability;

    return-void
.end method

.method public setIndexedVariable()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setIndexedVariable(Z)V

    return-void
.end method

.method public setIndexedVariable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->i:Z

    return-void
.end method

.method public setRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->e:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setSlotNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->g:I

    return-void
.end method

.method public setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->f:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method
