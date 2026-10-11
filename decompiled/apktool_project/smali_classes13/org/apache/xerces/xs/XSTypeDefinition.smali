.class public interface abstract Lorg/apache/xerces/xs/XSTypeDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSObject;


# static fields
.field public static final COMPLEX_TYPE:S = 0xfs

.field public static final SIMPLE_TYPE:S = 0x10s


# virtual methods
.method public abstract derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
.end method

.method public abstract derivedFromType(Lorg/apache/xerces/xs/XSTypeDefinition;S)Z
.end method

.method public abstract getAnonymous()Z
.end method

.method public abstract getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;
.end method

.method public abstract getFinal()S
.end method

.method public abstract getTypeCategory()S
.end method

.method public abstract isFinal(S)Z
.end method
