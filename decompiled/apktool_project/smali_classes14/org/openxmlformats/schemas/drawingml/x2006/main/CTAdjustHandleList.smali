.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;",
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

    const-string v2, "ctadjusthandlelistfdb0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAhPolar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;
.end method

.method public abstract addNewAhXY()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;
.end method

.method public abstract getAhPolarArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;
.end method

.method public abstract getAhPolarArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;
.end method

.method public abstract getAhPolarList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAhXYArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;
.end method

.method public abstract getAhXYArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;
.end method

.method public abstract getAhXYList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAhPolar(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;
.end method

.method public abstract insertNewAhXY(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;
.end method

.method public abstract removeAhPolar(I)V
.end method

.method public abstract removeAhXY(I)V
.end method

.method public abstract setAhPolarArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)V
.end method

.method public abstract setAhPolarArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)V
.end method

.method public abstract setAhXYArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)V
.end method

.method public abstract setAhXYArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)V
.end method

.method public abstract sizeOfAhPolarArray()I
.end method

.method public abstract sizeOfAhXYArray()I
.end method
