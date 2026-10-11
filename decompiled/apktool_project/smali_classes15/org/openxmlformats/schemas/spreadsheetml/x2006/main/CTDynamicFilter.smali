.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDynamicFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDynamicFilter;",
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

    const-string v2, "ctdynamicfilter3bf6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDynamicFilter;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDynamicFilter;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getMaxVal()D
.end method

.method public abstract getMaxValIso()Ljava/util/Calendar;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDynamicFilterType$Enum;
.end method

.method public abstract getVal()D
.end method

.method public abstract getValIso()Ljava/util/Calendar;
.end method

.method public abstract isSetMaxVal()Z
.end method

.method public abstract isSetMaxValIso()Z
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract isSetValIso()Z
.end method

.method public abstract setMaxVal(D)V
.end method

.method public abstract setMaxValIso(Ljava/util/Calendar;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDynamicFilterType$Enum;)V
.end method

.method public abstract setVal(D)V
.end method

.method public abstract setValIso(Ljava/util/Calendar;)V
.end method

.method public abstract unsetMaxVal()V
.end method

.method public abstract unsetMaxValIso()V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract unsetValIso()V
.end method

.method public abstract xgetMaxVal()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetMaxValIso()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDynamicFilterType;
.end method

.method public abstract xgetVal()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetValIso()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xsetMaxVal(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetMaxValIso(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDynamicFilterType;)V
.end method

.method public abstract xsetVal(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetValIso(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method
