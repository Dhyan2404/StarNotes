.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackdrop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackdrop;",
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

    const-string v2, "ctbackdrop2471type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackdrop;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackdrop;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint3D;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewNorm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVector3D;
.end method

.method public abstract addNewUp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVector3D;
.end method

.method public abstract getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint3D;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getNorm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVector3D;
.end method

.method public abstract getUp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVector3D;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint3D;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setNorm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVector3D;)V
.end method

.method public abstract setUp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVector3D;)V
.end method

.method public abstract unsetExtLst()V
.end method
