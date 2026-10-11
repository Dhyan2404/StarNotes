.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;",
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

    const-string v2, "ctdatabar4128type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
.end method

.method public abstract addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getCfvoArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
.end method

.method public abstract getCfvoArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
.end method

.method public abstract getCfvoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getMaxLength()J
.end method

.method public abstract getMinLength()J
.end method

.method public abstract getShowValue()Z
.end method

.method public abstract insertNewCfvo(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
.end method

.method public abstract isSetMaxLength()Z
.end method

.method public abstract isSetMinLength()Z
.end method

.method public abstract isSetShowValue()Z
.end method

.method public abstract removeCfvo(I)V
.end method

.method public abstract setCfvoArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V
.end method

.method public abstract setCfvoArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V
.end method

.method public abstract setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
.end method

.method public abstract setMaxLength(J)V
.end method

.method public abstract setMinLength(J)V
.end method

.method public abstract setShowValue(Z)V
.end method

.method public abstract sizeOfCfvoArray()I
.end method

.method public abstract unsetMaxLength()V
.end method

.method public abstract unsetMinLength()V
.end method

.method public abstract unsetShowValue()V
.end method

.method public abstract xgetMaxLength()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMinLength()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShowValue()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetMaxLength(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMinLength(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShowValue(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
