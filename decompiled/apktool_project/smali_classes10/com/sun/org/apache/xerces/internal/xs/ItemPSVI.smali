.class public interface abstract Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;
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
.method public abstract getActualNormalizedValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getActualNormalizedValueType()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getErrorCodes()Lcom/sun/org/apache/xerces/internal/xs/StringList;
.end method

.method public abstract getIsSchemaSpecified()Z
.end method

.method public abstract getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
.end method

.method public abstract getSchemaDefault()Ljava/lang/String;
.end method

.method public abstract getSchemaNormalizedValue()Ljava/lang/String;
.end method

.method public abstract getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
.end method

.method public abstract getValidationAttempted()S
.end method

.method public abstract getValidationContext()Ljava/lang/String;
.end method

.method public abstract getValidity()S
.end method
