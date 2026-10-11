.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;",
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

    const-string v2, "datacolumntypec699type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCalendar()I
.end method

.method public abstract getColumnNameID()Ljava/lang/String;
.end method

.method public abstract getCurrency()I
.end method

.method public abstract getDataType()I
.end method

.method public abstract getDegree()J
.end method

.method public abstract getDisplayOrder()J
.end method

.method public abstract getDisplayWidth()J
.end method

.method public abstract getHyperlink()Z
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getLangID()J
.end method

.method public abstract getMapped()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOrigLabel()Ljava/lang/String;
.end method

.method public abstract getUnitType()Ljava/lang/String;
.end method

.method public abstract isSetCalendar()Z
.end method

.method public abstract isSetCurrency()Z
.end method

.method public abstract isSetDataType()Z
.end method

.method public abstract isSetDegree()Z
.end method

.method public abstract isSetDisplayOrder()Z
.end method

.method public abstract isSetDisplayWidth()Z
.end method

.method public abstract isSetHyperlink()Z
.end method

.method public abstract isSetLangID()Z
.end method

.method public abstract isSetMapped()Z
.end method

.method public abstract isSetOrigLabel()Z
.end method

.method public abstract isSetUnitType()Z
.end method

.method public abstract setCalendar(I)V
.end method

.method public abstract setColumnNameID(Ljava/lang/String;)V
.end method

.method public abstract setCurrency(I)V
.end method

.method public abstract setDataType(I)V
.end method

.method public abstract setDegree(J)V
.end method

.method public abstract setDisplayOrder(J)V
.end method

.method public abstract setDisplayWidth(J)V
.end method

.method public abstract setHyperlink(Z)V
.end method

.method public abstract setLabel(Ljava/lang/String;)V
.end method

.method public abstract setLangID(J)V
.end method

.method public abstract setMapped(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOrigLabel(Ljava/lang/String;)V
.end method

.method public abstract setUnitType(Ljava/lang/String;)V
.end method

.method public abstract unsetCalendar()V
.end method

.method public abstract unsetCurrency()V
.end method

.method public abstract unsetDataType()V
.end method

.method public abstract unsetDegree()V
.end method

.method public abstract unsetDisplayOrder()V
.end method

.method public abstract unsetDisplayWidth()V
.end method

.method public abstract unsetHyperlink()V
.end method

.method public abstract unsetLangID()V
.end method

.method public abstract unsetMapped()V
.end method

.method public abstract unsetOrigLabel()V
.end method

.method public abstract unsetUnitType()V
.end method

.method public abstract xgetCalendar()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetColumnNameID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCurrency()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetDataType()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetDegree()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDisplayOrder()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDisplayWidth()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetHyperlink()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLabel()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLangID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMapped()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOrigLabel()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetUnitType()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetCalendar(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetColumnNameID(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCurrency(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetDataType(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetDegree(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDisplayOrder(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDisplayWidth(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetHyperlink(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLabel(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLangID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMapped(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOrigLabel(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUnitType(Lorg/apache/xmlbeans/XmlString;)V
.end method
