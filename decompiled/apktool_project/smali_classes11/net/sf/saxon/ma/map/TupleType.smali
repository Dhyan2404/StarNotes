.class public interface abstract Lnet/sf/saxon/ma/map/TupleType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/FunctionItemType;


# virtual methods
.method public abstract getFieldNames()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFieldType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;
.end method

.method public abstract isExtensible()Z
.end method

.method public abstract isOptionalField(Ljava/lang/String;)Z
.end method
