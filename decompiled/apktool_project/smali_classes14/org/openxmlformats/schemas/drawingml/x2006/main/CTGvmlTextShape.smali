.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;",
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

    const-string v2, "ctgvmltextshape09b7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract addNewUseSpRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlUseShapeRectangle;
.end method

.method public abstract addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getUseSpRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlUseShapeRectangle;
.end method

.method public abstract getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetUseSpRect()Z
.end method

.method public abstract isSetXfrm()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setTxBody(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
.end method

.method public abstract setUseSpRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlUseShapeRectangle;)V
.end method

.method public abstract setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetUseSpRect()V
.end method

.method public abstract unsetXfrm()V
.end method
