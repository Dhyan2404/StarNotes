.class public interface abstract Lnet/sf/saxon/type/SimpleType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/SchemaType;
.implements Lnet/sf/saxon/type/HyperType;


# virtual methods
.method public abstract getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;
.end method

.method public abstract getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation
.end method

.method public abstract getWhitespaceAction()I
.end method

.method public abstract isAtomicType()Z
.end method

.method public abstract isBuiltInType()Z
.end method

.method public abstract isListType()Z
.end method

.method public abstract isUnionType()Z
.end method

.method public abstract postprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation
.end method

.method public abstract preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation
.end method

.method public abstract validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
.end method
