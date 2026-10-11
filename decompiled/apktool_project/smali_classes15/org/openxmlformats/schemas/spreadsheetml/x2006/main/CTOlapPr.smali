.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOlapPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOlapPr;",
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

    const-string v2, "ctolappr0c77type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOlapPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOlapPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getLocal()Z
.end method

.method public abstract getLocalConnection()Ljava/lang/String;
.end method

.method public abstract getLocalRefresh()Z
.end method

.method public abstract getRowDrillCount()J
.end method

.method public abstract getSendLocale()Z
.end method

.method public abstract getServerFill()Z
.end method

.method public abstract getServerFont()Z
.end method

.method public abstract getServerFontColor()Z
.end method

.method public abstract getServerNumberFormat()Z
.end method

.method public abstract isSetLocal()Z
.end method

.method public abstract isSetLocalConnection()Z
.end method

.method public abstract isSetLocalRefresh()Z
.end method

.method public abstract isSetRowDrillCount()Z
.end method

.method public abstract isSetSendLocale()Z
.end method

.method public abstract isSetServerFill()Z
.end method

.method public abstract isSetServerFont()Z
.end method

.method public abstract isSetServerFontColor()Z
.end method

.method public abstract isSetServerNumberFormat()Z
.end method

.method public abstract setLocal(Z)V
.end method

.method public abstract setLocalConnection(Ljava/lang/String;)V
.end method

.method public abstract setLocalRefresh(Z)V
.end method

.method public abstract setRowDrillCount(J)V
.end method

.method public abstract setSendLocale(Z)V
.end method

.method public abstract setServerFill(Z)V
.end method

.method public abstract setServerFont(Z)V
.end method

.method public abstract setServerFontColor(Z)V
.end method

.method public abstract setServerNumberFormat(Z)V
.end method

.method public abstract unsetLocal()V
.end method

.method public abstract unsetLocalConnection()V
.end method

.method public abstract unsetLocalRefresh()V
.end method

.method public abstract unsetRowDrillCount()V
.end method

.method public abstract unsetSendLocale()V
.end method

.method public abstract unsetServerFill()V
.end method

.method public abstract unsetServerFont()V
.end method

.method public abstract unsetServerFontColor()V
.end method

.method public abstract unsetServerNumberFormat()V
.end method

.method public abstract xgetLocal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLocalConnection()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetLocalRefresh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRowDrillCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSendLocale()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetServerFill()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetServerFont()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetServerFontColor()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetServerNumberFormat()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetLocal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLocalConnection(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetLocalRefresh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRowDrillCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSendLocale(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetServerFill(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetServerFont(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetServerFontColor(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetServerNumberFormat(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
