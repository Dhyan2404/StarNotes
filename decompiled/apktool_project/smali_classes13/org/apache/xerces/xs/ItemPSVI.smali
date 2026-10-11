.class public interface abstract Lorg/apache/xerces/xs/ItemPSVI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VALIDATION_FULL:S = 0x2s

.field public static final VALIDATION_NONE:S = 0x0s

.field public static final VALIDATION_PARTIAL:S = 0x1s

.field public static final VALIDITY_INVALID:S = 0x1s

.field public static final VALIDITY_NOTKNOWN:S = 0x0s

.field public static final VALIDITY_VALID:S = 0x2s


# virtual methods
.method public abstract constant()Lorg/apache/xerces/xs/ItemPSVI;
.end method

.method public abstract getActualNormalizedValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getActualNormalizedValueType()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getErrorCodes()Lorg/apache/xerces/xs/StringList;
.end method

.method public abstract getErrorMessages()Lorg/apache/xerces/xs/StringList;
.end method

.method public abstract getIsSchemaSpecified()Z
.end method

.method public abstract getItemValueTypes()Lorg/apache/xerces/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
.end method

.method public abstract getSchemaDefault()Ljava/lang/String;
.end method

.method public abstract getSchemaNormalizedValue()Ljava/lang/String;
.end method

.method public abstract getSchemaValue()Lorg/apache/xerces/xs/XSValue;
.end method

.method public abstract getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;
.end method

.method public abstract getValidationAttempted()S
.end method

.method public abstract getValidationContext()Ljava/lang/String;
.end method

.method public abstract getValidity()S
.end method

.method public abstract isConstant()Z
.end method
