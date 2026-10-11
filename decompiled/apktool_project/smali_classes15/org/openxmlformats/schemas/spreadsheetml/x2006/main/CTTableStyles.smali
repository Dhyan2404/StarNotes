.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;",
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

    const-string v2, "cttablestyles872ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTableStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
.end method

.method public abstract getCount()J
.end method

.method public abstract getDefaultPivotStyle()Ljava/lang/String;
.end method

.method public abstract getDefaultTableStyle()Ljava/lang/String;
.end method

.method public abstract getTableStyleArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
.end method

.method public abstract getTableStyleArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
.end method

.method public abstract getTableStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTableStyle(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetDefaultPivotStyle()Z
.end method

.method public abstract isSetDefaultTableStyle()Z
.end method

.method public abstract removeTableStyle(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setDefaultPivotStyle(Ljava/lang/String;)V
.end method

.method public abstract setDefaultTableStyle(Ljava/lang/String;)V
.end method

.method public abstract setTableStyleArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;)V
.end method

.method public abstract setTableStyleArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;)V
.end method

.method public abstract sizeOfTableStyleArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetDefaultPivotStyle()V
.end method

.method public abstract unsetDefaultTableStyle()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDefaultPivotStyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDefaultTableStyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDefaultPivotStyle(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDefaultTableStyle(Lorg/apache/xmlbeans/XmlString;)V
.end method
