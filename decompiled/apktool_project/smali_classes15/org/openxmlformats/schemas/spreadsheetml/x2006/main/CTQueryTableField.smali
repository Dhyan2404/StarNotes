.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableField;",
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

    const-string v2, "ctquerytablefield9f13type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableField;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableField;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getClipped()Z
.end method

.method public abstract getDataBound()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFillFormulas()Z
.end method

.method public abstract getId()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRowNumbers()Z
.end method

.method public abstract getTableColumnId()J
.end method

.method public abstract isSetClipped()Z
.end method

.method public abstract isSetDataBound()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFillFormulas()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetRowNumbers()Z
.end method

.method public abstract isSetTableColumnId()Z
.end method

.method public abstract setClipped(Z)V
.end method

.method public abstract setDataBound(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFillFormulas(Z)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setRowNumbers(Z)V
.end method

.method public abstract setTableColumnId(J)V
.end method

.method public abstract unsetClipped()V
.end method

.method public abstract unsetDataBound()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFillFormulas()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetRowNumbers()V
.end method

.method public abstract unsetTableColumnId()V
.end method

.method public abstract xgetClipped()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDataBound()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFillFormulas()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetRowNumbers()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTableColumnId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetClipped(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDataBound(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFillFormulas(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetRowNumbers(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTableColumnId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
