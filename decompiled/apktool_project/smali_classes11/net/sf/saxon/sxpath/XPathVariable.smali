.class public final Lnet/sf/saxon/sxpath/XPathVariable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/LocalBinding;


# instance fields
.field public e:Lnet/sf/saxon/om/StructuredQName;

.field public f:Lnet/sf/saxon/value/SequenceType;

.field public g:Lnet/sf/saxon/om/Sequence;

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iput-object v0, p0, Lnet/sf/saxon/sxpath/XPathVariable;->f:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public static make(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;
    .locals 1

    new-instance v0, Lnet/sf/saxon/sxpath/XPathVariable;

    invoke-direct {v0}, Lnet/sf/saxon/sxpath/XPathVariable;-><init>()V

    iput-object p0, v0, Lnet/sf/saxon/sxpath/XPathVariable;->e:Lnet/sf/saxon/om/StructuredQName;

    return-object v0
.end method


# virtual methods
.method public addReference(Lnet/sf/saxon/expr/VariableReference;Z)V
    .locals 0

    return-void
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/sxpath/XPathVariable;->h:I

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/XPathContext;->evaluateLocalVariable(I)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue()Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathVariable;->g:Lnet/sf/saxon/om/Sequence;

    return-object p0
.end method

.method public getIntegerBoundsForVariable()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/sxpath/XPathVariable;->h:I

    return p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathVariable;->f:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathVariable;->e:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public final isAssignable()Z
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

.method public setDefaultValue(Lnet/sf/saxon/om/Sequence;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/XPathVariable;->g:Lnet/sf/saxon/om/Sequence;

    return-void
.end method

.method public setIndexedVariable()V
    .locals 0

    return-void
.end method

.method public setRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/XPathVariable;->f:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setSlotNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/sxpath/XPathVariable;->h:I

    return-void
.end method
