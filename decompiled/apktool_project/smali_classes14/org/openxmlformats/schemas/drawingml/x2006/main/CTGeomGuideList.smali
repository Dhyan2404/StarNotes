.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;",
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

    const-string v2, "ctgeomguidelist364ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewGd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
.end method

.method public abstract getGdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
.end method

.method public abstract getGdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
.end method

.method public abstract getGdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewGd(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
.end method

.method public abstract removeGd(I)V
.end method

.method public abstract setGdArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V
.end method

.method public abstract setGdArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V
.end method

.method public abstract sizeOfGdArray()I
.end method
