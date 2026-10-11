.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;",
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

    const-string v2, "ctrevisionformattingb229type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDxf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getDxf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getLength()J
.end method

.method public abstract getS()Z
.end method

.method public abstract getSheetId()J
.end method

.method public abstract getSqref()Ljava/util/List;
.end method

.method public abstract getStart()J
.end method

.method public abstract getXfDxf()Z
.end method

.method public abstract isSetDxf()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetLength()Z
.end method

.method public abstract isSetS()Z
.end method

.method public abstract isSetStart()Z
.end method

.method public abstract isSetXfDxf()Z
.end method

.method public abstract setDxf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setLength(J)V
.end method

.method public abstract setS(Z)V
.end method

.method public abstract setSheetId(J)V
.end method

.method public abstract setSqref(Ljava/util/List;)V
.end method

.method public abstract setStart(J)V
.end method

.method public abstract setXfDxf(Z)V
.end method

.method public abstract unsetDxf()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetLength()V
.end method

.method public abstract unsetS()V
.end method

.method public abstract unsetStart()V
.end method

.method public abstract unsetXfDxf()V
.end method

.method public abstract xgetLength()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetS()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSheetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSqref()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;
.end method

.method public abstract xgetStart()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetXfDxf()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetLength(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetS(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSheetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSqref(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;)V
.end method

.method public abstract xsetStart(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetXfDxf(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
