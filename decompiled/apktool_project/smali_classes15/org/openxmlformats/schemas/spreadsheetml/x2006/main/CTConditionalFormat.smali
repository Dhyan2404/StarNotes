.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormat;",
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

    const-string v2, "ctconditionalformat6c7ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormat;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormat;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewPivotAreas()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreas;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getPivotAreas()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreas;
.end method

.method public abstract getPriority()J
.end method

.method public abstract getScope()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STScope$Enum;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STType$Enum;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetScope()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setPivotAreas(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreas;)V
.end method

.method public abstract setPriority(J)V
.end method

.method public abstract setScope(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STScope$Enum;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STType$Enum;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetScope()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetPriority()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetScope()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STScope;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STType;
.end method

.method public abstract xsetPriority(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetScope(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STScope;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STType;)V
.end method
