.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;",
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

    const-string v2, "ctlocationc23etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getColPageCount()J
.end method

.method public abstract getFirstDataCol()J
.end method

.method public abstract getFirstDataRow()J
.end method

.method public abstract getFirstHeaderRow()J
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getRowPageCount()J
.end method

.method public abstract isSetColPageCount()Z
.end method

.method public abstract isSetRowPageCount()Z
.end method

.method public abstract setColPageCount(J)V
.end method

.method public abstract setFirstDataCol(J)V
.end method

.method public abstract setFirstDataRow(J)V
.end method

.method public abstract setFirstHeaderRow(J)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setRowPageCount(J)V
.end method

.method public abstract unsetColPageCount()V
.end method

.method public abstract unsetRowPageCount()V
.end method

.method public abstract xgetColPageCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetFirstDataCol()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetFirstDataRow()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetFirstHeaderRow()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetRowPageCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetColPageCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetFirstDataCol(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetFirstDataRow(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetFirstHeaderRow(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetRowPageCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
