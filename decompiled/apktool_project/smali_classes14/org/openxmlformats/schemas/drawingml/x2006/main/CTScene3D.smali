.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;",
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

    const-string v2, "ctscene3d736etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBackdrop()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackdrop;
.end method

.method public abstract addNewCamera()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCamera;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewLightRig()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;
.end method

.method public abstract getBackdrop()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackdrop;
.end method

.method public abstract getCamera()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCamera;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getLightRig()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;
.end method

.method public abstract isSetBackdrop()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setBackdrop(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackdrop;)V
.end method

.method public abstract setCamera(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCamera;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setLightRig(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLightRig;)V
.end method

.method public abstract unsetBackdrop()V
.end method

.method public abstract unsetExtLst()V
.end method
