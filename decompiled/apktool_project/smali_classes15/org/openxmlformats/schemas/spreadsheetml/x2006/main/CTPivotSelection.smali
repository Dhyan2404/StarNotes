.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;",
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

    const-string v2, "ctpivotselectiond5f3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPivotArea()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;
.end method

.method public abstract getActiveCol()J
.end method

.method public abstract getActiveRow()J
.end method

.method public abstract getAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;
.end method

.method public abstract getClick()J
.end method

.method public abstract getCount()J
.end method

.method public abstract getData()Z
.end method

.method public abstract getDimension()J
.end method

.method public abstract getExtendable()Z
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLabel()Z
.end method

.method public abstract getMax()J
.end method

.method public abstract getMin()J
.end method

.method public abstract getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;
.end method

.method public abstract getPivotArea()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;
.end method

.method public abstract getPreviousCol()J
.end method

.method public abstract getPreviousRow()J
.end method

.method public abstract getShowHeader()Z
.end method

.method public abstract getStart()J
.end method

.method public abstract isSetActiveCol()Z
.end method

.method public abstract isSetActiveRow()Z
.end method

.method public abstract isSetAxis()Z
.end method

.method public abstract isSetClick()Z
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetData()Z
.end method

.method public abstract isSetDimension()Z
.end method

.method public abstract isSetExtendable()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetLabel()Z
.end method

.method public abstract isSetMax()Z
.end method

.method public abstract isSetMin()Z
.end method

.method public abstract isSetPane()Z
.end method

.method public abstract isSetPreviousCol()Z
.end method

.method public abstract isSetPreviousRow()Z
.end method

.method public abstract isSetShowHeader()Z
.end method

.method public abstract isSetStart()Z
.end method

.method public abstract setActiveCol(J)V
.end method

.method public abstract setActiveRow(J)V
.end method

.method public abstract setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V
.end method

.method public abstract setClick(J)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setData(Z)V
.end method

.method public abstract setDimension(J)V
.end method

.method public abstract setExtendable(Z)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setLabel(Z)V
.end method

.method public abstract setMax(J)V
.end method

.method public abstract setMin(J)V
.end method

.method public abstract setPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V
.end method

.method public abstract setPivotArea(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;)V
.end method

.method public abstract setPreviousCol(J)V
.end method

.method public abstract setPreviousRow(J)V
.end method

.method public abstract setShowHeader(Z)V
.end method

.method public abstract setStart(J)V
.end method

.method public abstract unsetActiveCol()V
.end method

.method public abstract unsetActiveRow()V
.end method

.method public abstract unsetAxis()V
.end method

.method public abstract unsetClick()V
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetData()V
.end method

.method public abstract unsetDimension()V
.end method

.method public abstract unsetExtendable()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetLabel()V
.end method

.method public abstract unsetMax()V
.end method

.method public abstract unsetMin()V
.end method

.method public abstract unsetPane()V
.end method

.method public abstract unsetPreviousCol()V
.end method

.method public abstract unsetPreviousRow()V
.end method

.method public abstract unsetShowHeader()V
.end method

.method public abstract unsetStart()V
.end method

.method public abstract xgetActiveCol()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetActiveRow()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;
.end method

.method public abstract xgetClick()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDimension()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetExtendable()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetLabel()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMax()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMin()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;
.end method

.method public abstract xgetPreviousCol()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPreviousRow()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShowHeader()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetStart()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetActiveCol(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetActiveRow(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;)V
.end method

.method public abstract xsetClick(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDimension(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetExtendable(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetLabel(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMax(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMin(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;)V
.end method

.method public abstract xsetPreviousCol(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPreviousRow(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShowHeader(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetStart(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
