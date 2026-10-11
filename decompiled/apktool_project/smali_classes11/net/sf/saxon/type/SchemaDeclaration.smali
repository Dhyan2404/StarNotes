.class public interface abstract Lnet/sf/saxon/type/SchemaDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getComponentName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public abstract getFingerprint()I
.end method

.method public abstract getType()Lnet/sf/saxon/type/SchemaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract hasTypeAlternatives()Z
.end method

.method public abstract isAbstract()Z
.end method

.method public abstract isNillable()Z
.end method

.method public abstract makeSchemaNodeTest()Lnet/sf/saxon/pattern/NodeTest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method
