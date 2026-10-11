.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
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

    const-string v2, "ctcola95ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getBestFit()Z
.end method

.method public abstract getCollapsed()Z
.end method

.method public abstract getCustomWidth()Z
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getMax()J
.end method

.method public abstract getMin()J
.end method

.method public abstract getOutlineLevel()S
.end method

.method public abstract getPhonetic()Z
.end method

.method public abstract getStyle()J
.end method

.method public abstract getWidth()D
.end method

.method public abstract isSetBestFit()Z
.end method

.method public abstract isSetCollapsed()Z
.end method

.method public abstract isSetCustomWidth()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetOutlineLevel()Z
.end method

.method public abstract isSetPhonetic()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract isSetWidth()Z
.end method

.method public abstract setBestFit(Z)V
.end method

.method public abstract setCollapsed(Z)V
.end method

.method public abstract setCustomWidth(Z)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setMax(J)V
.end method

.method public abstract setMin(J)V
.end method

.method public abstract setOutlineLevel(S)V
.end method

.method public abstract setPhonetic(Z)V
.end method

.method public abstract setStyle(J)V
.end method

.method public abstract setWidth(D)V
.end method

.method public abstract unsetBestFit()V
.end method

.method public abstract unsetCollapsed()V
.end method

.method public abstract unsetCustomWidth()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetOutlineLevel()V
.end method

.method public abstract unsetPhonetic()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract unsetWidth()V
.end method

.method public abstract xgetBestFit()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCollapsed()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCustomWidth()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMax()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMin()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetOutlineLevel()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetPhonetic()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetStyle()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetWidth()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xsetBestFit(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCollapsed(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCustomWidth(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMax(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMin(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetOutlineLevel(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetPhonetic(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetStyle(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetWidth(Lorg/apache/xmlbeans/XmlDouble;)V
.end method
