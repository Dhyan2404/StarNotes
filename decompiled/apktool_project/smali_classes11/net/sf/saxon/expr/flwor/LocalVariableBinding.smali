.class public Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/LocalBinding;


# instance fields
.field public e:Lnet/sf/saxon/om/StructuredQName;

.field public f:Lnet/sf/saxon/value/SequenceType;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e7

    iput v0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->h:I

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->e:Lnet/sf/saxon/om/StructuredQName;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->f:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method


# virtual methods
.method public addReference(Lnet/sf/saxon/expr/VariableReference;Z)V
    .locals 1

    iget p1, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->h:I

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    add-int/2addr p1, p2

    iput p1, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->h:I

    :cond_1
    return-void
.end method

.method public copy()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->e:Lnet/sf/saxon/om/StructuredQName;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    iget v1, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->g:I

    iput v1, v0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->g:I

    iget p0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->h:I

    iput p0, v0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->h:I

    return-object v0
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->g:I

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/XPathContext;->evaluateLocalVariable(I)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getIntegerBoundsForVariable()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->g:I

    return p0
.end method

.method public getNominalReferenceCount()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->h:I

    return p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->f:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->e:Lnet/sf/saxon/om/StructuredQName;

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
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->h:I

    const/16 v0, 0x2710

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIndexedVariable()V
    .locals 1

    const/16 v0, 0x2710

    iput v0, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->h:I

    return-void
.end method

.method public setRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->f:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setSlotNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->g:I

    return-void
.end method

.method public setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->e:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method
