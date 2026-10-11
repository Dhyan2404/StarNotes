.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchy;",
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

    const-string v2, "ctpivothierarchy215ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchy;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchy;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewMembers()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;
.end method

.method public abstract addNewMps()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMemberProperties;
.end method

.method public abstract getCaption()Ljava/lang/String;
.end method

.method public abstract getDragOff()Z
.end method

.method public abstract getDragToCol()Z
.end method

.method public abstract getDragToData()Z
.end method

.method public abstract getDragToPage()Z
.end method

.method public abstract getDragToRow()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getIncludeNewItemsInFilter()Z
.end method

.method public abstract getMembersArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;
.end method

.method public abstract getMembersArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;
.end method

.method public abstract getMembersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMps()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMemberProperties;
.end method

.method public abstract getMultipleItemSelectionAllowed()Z
.end method

.method public abstract getOutline()Z
.end method

.method public abstract getShowInFieldList()Z
.end method

.method public abstract getSubtotalTop()Z
.end method

.method public abstract insertNewMembers(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;
.end method

.method public abstract isSetCaption()Z
.end method

.method public abstract isSetDragOff()Z
.end method

.method public abstract isSetDragToCol()Z
.end method

.method public abstract isSetDragToData()Z
.end method

.method public abstract isSetDragToPage()Z
.end method

.method public abstract isSetDragToRow()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetIncludeNewItemsInFilter()Z
.end method

.method public abstract isSetMps()Z
.end method

.method public abstract isSetMultipleItemSelectionAllowed()Z
.end method

.method public abstract isSetOutline()Z
.end method

.method public abstract isSetShowInFieldList()Z
.end method

.method public abstract isSetSubtotalTop()Z
.end method

.method public abstract removeMembers(I)V
.end method

.method public abstract setCaption(Ljava/lang/String;)V
.end method

.method public abstract setDragOff(Z)V
.end method

.method public abstract setDragToCol(Z)V
.end method

.method public abstract setDragToData(Z)V
.end method

.method public abstract setDragToPage(Z)V
.end method

.method public abstract setDragToRow(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setIncludeNewItemsInFilter(Z)V
.end method

.method public abstract setMembersArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;)V
.end method

.method public abstract setMembersArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;)V
.end method

.method public abstract setMps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMemberProperties;)V
.end method

.method public abstract setMultipleItemSelectionAllowed(Z)V
.end method

.method public abstract setOutline(Z)V
.end method

.method public abstract setShowInFieldList(Z)V
.end method

.method public abstract setSubtotalTop(Z)V
.end method

.method public abstract sizeOfMembersArray()I
.end method

.method public abstract unsetCaption()V
.end method

.method public abstract unsetDragOff()V
.end method

.method public abstract unsetDragToCol()V
.end method

.method public abstract unsetDragToData()V
.end method

.method public abstract unsetDragToPage()V
.end method

.method public abstract unsetDragToRow()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetIncludeNewItemsInFilter()V
.end method

.method public abstract unsetMps()V
.end method

.method public abstract unsetMultipleItemSelectionAllowed()V
.end method

.method public abstract unsetOutline()V
.end method

.method public abstract unsetShowInFieldList()V
.end method

.method public abstract unsetSubtotalTop()V
.end method

.method public abstract xgetCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDragOff()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDragToCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDragToData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDragToPage()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDragToRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIncludeNewItemsInFilter()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMultipleItemSelectionAllowed()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOutline()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowInFieldList()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSubtotalTop()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDragOff(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDragToCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDragToData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDragToPage(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDragToRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIncludeNewItemsInFilter(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMultipleItemSelectionAllowed(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOutline(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowInFieldList(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSubtotalTop(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
