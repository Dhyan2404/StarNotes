.class public interface abstract Lorg/apache/xerces/dom3/as/ASAttributeDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/dom3/as/ASObject;


# static fields
.field public static final VALUE_DEFAULT:S = 0x1s

.field public static final VALUE_FIXED:S = 0x2s

.field public static final VALUE_NONE:S


# virtual methods
.method public abstract getDataType()Lorg/apache/xerces/dom3/as/ASDataType;
.end method

.method public abstract getDataValue()Ljava/lang/String;
.end method

.method public abstract getDefaultType()S
.end method

.method public abstract getEnumAttr()Ljava/lang/String;
.end method

.method public abstract getOwnerElements()Lorg/apache/xerces/dom3/as/ASObjectList;
.end method

.method public abstract setDataType(Lorg/apache/xerces/dom3/as/ASDataType;)V
.end method

.method public abstract setDataValue(Ljava/lang/String;)V
.end method

.method public abstract setDefaultType(S)V
.end method

.method public abstract setEnumAttr(Ljava/lang/String;)V
.end method

.method public abstract setOwnerElements(Lorg/apache/xerces/dom3/as/ASObjectList;)V
.end method
