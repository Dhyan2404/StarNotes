.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;",
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

    const-string v2, "ctsortconditionc4fctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCustomList()Ljava/lang/String;
.end method

.method public abstract getDescending()Z
.end method

.method public abstract getDxfId()J
.end method

.method public abstract getIconId()J
.end method

.method public abstract getIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getSortBy()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;
.end method

.method public abstract isSetCustomList()Z
.end method

.method public abstract isSetDescending()Z
.end method

.method public abstract isSetDxfId()Z
.end method

.method public abstract isSetIconId()Z
.end method

.method public abstract isSetIconSet()Z
.end method

.method public abstract isSetSortBy()Z
.end method

.method public abstract setCustomList(Ljava/lang/String;)V
.end method

.method public abstract setDescending(Z)V
.end method

.method public abstract setDxfId(J)V
.end method

.method public abstract setIconId(J)V
.end method

.method public abstract setIconSet(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setSortBy(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy$Enum;)V
.end method

.method public abstract unsetCustomList()V
.end method

.method public abstract unsetDescending()V
.end method

.method public abstract unsetDxfId()V
.end method

.method public abstract unsetIconId()V
.end method

.method public abstract unsetIconSet()V
.end method

.method public abstract unsetSortBy()V
.end method

.method public abstract xgetCustomList()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDescending()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetIconId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetSortBy()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;
.end method

.method public abstract xsetCustomList(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDescending(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetIconId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetIconSet(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetSortBy(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortBy;)V
.end method
