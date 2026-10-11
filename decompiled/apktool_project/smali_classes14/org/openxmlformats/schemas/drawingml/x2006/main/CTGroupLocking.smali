.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupLocking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupLocking;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctgrouplockingcf73type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupLocking;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupLocking;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getNoChangeAspect()Z
.end method

.method public abstract getNoGrp()Z
.end method

.method public abstract getNoMove()Z
.end method

.method public abstract getNoResize()Z
.end method

.method public abstract getNoRot()Z
.end method

.method public abstract getNoSelect()Z
.end method

.method public abstract getNoUngrp()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetNoChangeAspect()Z
.end method

.method public abstract isSetNoGrp()Z
.end method

.method public abstract isSetNoMove()Z
.end method

.method public abstract isSetNoResize()Z
.end method

.method public abstract isSetNoRot()Z
.end method

.method public abstract isSetNoSelect()Z
.end method

.method public abstract isSetNoUngrp()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setNoChangeAspect(Z)V
.end method

.method public abstract setNoGrp(Z)V
.end method

.method public abstract setNoMove(Z)V
.end method

.method public abstract setNoResize(Z)V
.end method

.method public abstract setNoRot(Z)V
.end method

.method public abstract setNoSelect(Z)V
.end method

.method public abstract setNoUngrp(Z)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetNoChangeAspect()V
.end method

.method public abstract unsetNoGrp()V
.end method

.method public abstract unsetNoMove()V
.end method

.method public abstract unsetNoResize()V
.end method

.method public abstract unsetNoRot()V
.end method

.method public abstract unsetNoSelect()V
.end method

.method public abstract unsetNoUngrp()V
.end method

.method public abstract xgetNoChangeAspect()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoGrp()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoMove()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoResize()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoRot()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoSelect()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoUngrp()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetNoChangeAspect(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoGrp(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoMove(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoResize(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoRot(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoSelect(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoUngrp(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
