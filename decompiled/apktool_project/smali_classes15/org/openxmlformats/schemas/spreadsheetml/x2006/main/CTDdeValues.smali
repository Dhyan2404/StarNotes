.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValues;",
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

    const-string v2, "ctddevalues8e46type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValues;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValues;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewValue()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValue;
.end method

.method public abstract getCols()J
.end method

.method public abstract getRows()J
.end method

.method public abstract getValueArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValue;
.end method

.method public abstract getValueArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValue;
.end method

.method public abstract getValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewValue(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValue;
.end method

.method public abstract isSetCols()Z
.end method

.method public abstract isSetRows()Z
.end method

.method public abstract removeValue(I)V
.end method

.method public abstract setCols(J)V
.end method

.method public abstract setRows(J)V
.end method

.method public abstract setValueArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValue;)V
.end method

.method public abstract setValueArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeValue;)V
.end method

.method public abstract sizeOfValueArray()I
.end method

.method public abstract unsetCols()V
.end method

.method public abstract unsetRows()V
.end method

.method public abstract xgetCols()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRows()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCols(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRows(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
