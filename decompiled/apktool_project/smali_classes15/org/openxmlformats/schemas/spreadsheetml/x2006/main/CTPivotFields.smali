.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;",
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

    const-string v2, "ctpivotfields12batype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPivotField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
.end method

.method public abstract getCount()J
.end method

.method public abstract getPivotFieldArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
.end method

.method public abstract getPivotFieldArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
.end method

.method public abstract getPivotFieldList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewPivotField(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removePivotField(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V
.end method

.method public abstract setPivotFieldArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V
.end method

.method public abstract sizeOfPivotFieldArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
