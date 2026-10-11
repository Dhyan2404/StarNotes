.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColorList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColorList;",
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

    const-string v2, "ctcustomcolorlist6661type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColorList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColorList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCustClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColor;
.end method

.method public abstract getCustClrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColor;
.end method

.method public abstract getCustClrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColor;
.end method

.method public abstract getCustClrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCustClr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColor;
.end method

.method public abstract removeCustClr(I)V
.end method

.method public abstract setCustClrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColor;)V
.end method

.method public abstract setCustClrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColor;)V
.end method

.method public abstract sizeOfCustClrArray()I
.end method
