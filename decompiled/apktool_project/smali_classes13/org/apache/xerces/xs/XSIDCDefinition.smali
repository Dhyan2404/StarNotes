.class public interface abstract Lorg/apache/xerces/xs/XSIDCDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSObject;


# static fields
.field public static final IC_KEY:S = 0x1s

.field public static final IC_KEYREF:S = 0x2s

.field public static final IC_UNIQUE:S = 0x3s


# virtual methods
.method public abstract getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getCategory()S
.end method

.method public abstract getFieldStrs()Lorg/apache/xerces/xs/StringList;
.end method

.method public abstract getRefKey()Lorg/apache/xerces/xs/XSIDCDefinition;
.end method

.method public abstract getSelectorStr()Ljava/lang/String;
.end method
