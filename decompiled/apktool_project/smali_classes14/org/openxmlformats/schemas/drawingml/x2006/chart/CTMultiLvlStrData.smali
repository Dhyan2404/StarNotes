.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrData;",
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

    const-string v2, "ctmultilvlstrdatafb14type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewLvl()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLvl;
.end method

.method public abstract addNewPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getLvlArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLvl;
.end method

.method public abstract getLvlArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLvl;
.end method

.method public abstract getLvlList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLvl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract insertNewLvl(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLvl;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetPtCount()Z
.end method

.method public abstract removeLvl(I)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setLvlArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTLvl;)V
.end method

.method public abstract setLvlArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLvl;)V
.end method

.method public abstract setPtCount(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V
.end method

.method public abstract sizeOfLvlArray()I
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetPtCount()V
.end method
