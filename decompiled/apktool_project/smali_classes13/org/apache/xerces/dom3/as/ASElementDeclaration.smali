.class public interface abstract Lorg/apache/xerces/dom3/as/ASElementDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/dom3/as/ASObject;


# static fields
.field public static final ANY_CONTENTTYPE:S = 0x2s

.field public static final ELEMENTS_CONTENTTYPE:S = 0x4s

.field public static final EMPTY_CONTENTTYPE:S = 0x1s

.field public static final MIXED_CONTENTTYPE:S = 0x3s


# virtual methods
.method public abstract addASAttributeDecl(Lorg/apache/xerces/dom3/as/ASAttributeDeclaration;)V
.end method

.method public abstract getASAttributeDecls()Lorg/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getAsCM()Lorg/apache/xerces/dom3/as/ASContentModel;
.end method

.method public abstract getContentType()S
.end method

.method public abstract getElementType()Lorg/apache/xerces/dom3/as/ASDataType;
.end method

.method public abstract getIsPCDataOnly()Z
.end method

.method public abstract getStrictMixedContent()Z
.end method

.method public abstract getSystemId()Ljava/lang/String;
.end method

.method public abstract removeASAttributeDecl(Lorg/apache/xerces/dom3/as/ASAttributeDeclaration;)Lorg/apache/xerces/dom3/as/ASAttributeDeclaration;
.end method

.method public abstract setASAttributeDecls(Lorg/apache/xerces/dom3/as/ASNamedObjectMap;)V
.end method

.method public abstract setAsCM(Lorg/apache/xerces/dom3/as/ASContentModel;)V
.end method

.method public abstract setContentType(S)V
.end method

.method public abstract setElementType(Lorg/apache/xerces/dom3/as/ASDataType;)V
.end method

.method public abstract setIsPCDataOnly(Z)V
.end method

.method public abstract setStrictMixedContent(Z)V
.end method

.method public abstract setSystemId(Ljava/lang/String;)V
.end method
