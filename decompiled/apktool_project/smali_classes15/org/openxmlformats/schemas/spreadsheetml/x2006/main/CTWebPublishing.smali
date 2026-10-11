.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishing;",
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

    const-string v2, "ctwebpublishing4646type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishing;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishing;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAllowPng()Z
.end method

.method public abstract getCharacterSet()Ljava/lang/String;
.end method

.method public abstract getCodePage()J
.end method

.method public abstract getCss()Z
.end method

.method public abstract getDpi()J
.end method

.method public abstract getLongFileNames()Z
.end method

.method public abstract getTargetScreenSize()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTargetScreenSize$Enum;
.end method

.method public abstract getThicket()Z
.end method

.method public abstract getVml()Z
.end method

.method public abstract isSetAllowPng()Z
.end method

.method public abstract isSetCharacterSet()Z
.end method

.method public abstract isSetCodePage()Z
.end method

.method public abstract isSetCss()Z
.end method

.method public abstract isSetDpi()Z
.end method

.method public abstract isSetLongFileNames()Z
.end method

.method public abstract isSetTargetScreenSize()Z
.end method

.method public abstract isSetThicket()Z
.end method

.method public abstract isSetVml()Z
.end method

.method public abstract setAllowPng(Z)V
.end method

.method public abstract setCharacterSet(Ljava/lang/String;)V
.end method

.method public abstract setCodePage(J)V
.end method

.method public abstract setCss(Z)V
.end method

.method public abstract setDpi(J)V
.end method

.method public abstract setLongFileNames(Z)V
.end method

.method public abstract setTargetScreenSize(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTargetScreenSize$Enum;)V
.end method

.method public abstract setThicket(Z)V
.end method

.method public abstract setVml(Z)V
.end method

.method public abstract unsetAllowPng()V
.end method

.method public abstract unsetCharacterSet()V
.end method

.method public abstract unsetCodePage()V
.end method

.method public abstract unsetCss()V
.end method

.method public abstract unsetDpi()V
.end method

.method public abstract unsetLongFileNames()V
.end method

.method public abstract unsetTargetScreenSize()V
.end method

.method public abstract unsetThicket()V
.end method

.method public abstract unsetVml()V
.end method

.method public abstract xgetAllowPng()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCharacterSet()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCodePage()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCss()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDpi()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLongFileNames()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTargetScreenSize()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTargetScreenSize;
.end method

.method public abstract xgetThicket()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVml()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAllowPng(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCharacterSet(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCodePage(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCss(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDpi(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLongFileNames(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTargetScreenSize(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTargetScreenSize;)V
.end method

.method public abstract xsetThicket(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVml(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
