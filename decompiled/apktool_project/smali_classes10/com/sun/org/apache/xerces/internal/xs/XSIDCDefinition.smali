.class public interface abstract Lcom/sun/org/apache/xerces/internal/xs/XSIDCDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSObject;


# static fields
.field public static final IC_KEY:S = 0x1s

.field public static final IC_KEYREF:S = 0x2s

.field public static final IC_UNIQUE:S = 0x3s


# virtual methods
.method public abstract getAnnotations()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
.end method

.method public abstract getCategory()S
.end method

.method public abstract getFieldStrs()Lcom/sun/org/apache/xerces/internal/xs/StringList;
.end method

.method public abstract getRefKey()Lcom/sun/org/apache/xerces/internal/xs/XSIDCDefinition;
.end method

.method public abstract getSelectorStr()Ljava/lang/String;
.end method
