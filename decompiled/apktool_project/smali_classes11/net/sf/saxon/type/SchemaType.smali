.class public interface abstract Lnet/sf/saxon/type/SchemaType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/SchemaComponent;


# virtual methods
.method public abstract allowsDerivation(I)Z
.end method

.method public abstract analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract checkTypeDerivationIsOK(Lnet/sf/saxon/type/SchemaType;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation
.end method

.method public abstract getBaseType()Lnet/sf/saxon/type/SchemaType;
.end method

.method public abstract getBlock()I
.end method

.method public abstract getDerivationMethod()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getEQName()Ljava/lang/String;
.end method

.method public abstract getFinalProhibitions()I
.end method

.method public abstract getFingerprint()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public abstract getSystemId()Ljava/lang/String;
.end method

.method public abstract getTargetNamespace()Ljava/lang/String;
.end method

.method public abstract isAnonymousType()Z
.end method

.method public abstract isAtomicType()Z
.end method

.method public abstract isComplexType()Z
.end method

.method public abstract isIdRefType()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract isIdType()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract isSameType(Lnet/sf/saxon/type/SchemaType;)Z
.end method

.method public abstract isSimpleType()Z
.end method
