.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;",
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

    const-string v2, "ctmap023btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDataBinding()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBinding;
.end method

.method public abstract getAppend()Z
.end method

.method public abstract getAutoFit()Z
.end method

.method public abstract getDataBinding()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBinding;
.end method

.method public abstract getID()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPreserveFormat()Z
.end method

.method public abstract getPreserveSortAFLayout()Z
.end method

.method public abstract getRootElement()Ljava/lang/String;
.end method

.method public abstract getSchemaID()Ljava/lang/String;
.end method

.method public abstract getShowImportExportValidationErrors()Z
.end method

.method public abstract isSetDataBinding()Z
.end method

.method public abstract setAppend(Z)V
.end method

.method public abstract setAutoFit(Z)V
.end method

.method public abstract setDataBinding(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBinding;)V
.end method

.method public abstract setID(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPreserveFormat(Z)V
.end method

.method public abstract setPreserveSortAFLayout(Z)V
.end method

.method public abstract setRootElement(Ljava/lang/String;)V
.end method

.method public abstract setSchemaID(Ljava/lang/String;)V
.end method

.method public abstract setShowImportExportValidationErrors(Z)V
.end method

.method public abstract unsetDataBinding()V
.end method

.method public abstract xgetAppend()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoFit()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPreserveFormat()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPreserveSortAFLayout()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRootElement()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSchemaID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetShowImportExportValidationErrors()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAppend(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoFit(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPreserveFormat(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPreserveSortAFLayout(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRootElement(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSchemaID(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetShowImportExportValidationErrors(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
