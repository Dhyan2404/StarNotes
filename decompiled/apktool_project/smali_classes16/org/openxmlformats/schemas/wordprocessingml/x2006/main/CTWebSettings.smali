.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWebSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWebSettings;",
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

    const-string v2, "ctwebsettings31dbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWebSettings;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWebSettings;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAllowPNG()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDivs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;
.end method

.method public abstract addNewDoNotOrganizeInFolder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotRelyOnCSS()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotSaveAsSingleFile()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotUseLongFileNames()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewEncoding()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewFrameset()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;
.end method

.method public abstract addNewOptimizeForBrowser()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOptimizeForBrowser;
.end method

.method public abstract addNewPixelsPerInch()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewRelyOnVML()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSaveSmartTagsAsXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewTargetScreenSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTargetScreenSz;
.end method

.method public abstract getAllowPNG()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDivs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;
.end method

.method public abstract getDoNotOrganizeInFolder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotRelyOnCSS()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotSaveAsSingleFile()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotUseLongFileNames()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEncoding()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getFrameset()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;
.end method

.method public abstract getOptimizeForBrowser()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOptimizeForBrowser;
.end method

.method public abstract getPixelsPerInch()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getRelyOnVML()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSaveSmartTagsAsXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getTargetScreenSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTargetScreenSz;
.end method

.method public abstract isSetAllowPNG()Z
.end method

.method public abstract isSetDivs()Z
.end method

.method public abstract isSetDoNotOrganizeInFolder()Z
.end method

.method public abstract isSetDoNotRelyOnCSS()Z
.end method

.method public abstract isSetDoNotSaveAsSingleFile()Z
.end method

.method public abstract isSetDoNotUseLongFileNames()Z
.end method

.method public abstract isSetEncoding()Z
.end method

.method public abstract isSetFrameset()Z
.end method

.method public abstract isSetOptimizeForBrowser()Z
.end method

.method public abstract isSetPixelsPerInch()Z
.end method

.method public abstract isSetRelyOnVML()Z
.end method

.method public abstract isSetSaveSmartTagsAsXml()Z
.end method

.method public abstract isSetTargetScreenSz()Z
.end method

.method public abstract setAllowPNG(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDivs(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;)V
.end method

.method public abstract setDoNotOrganizeInFolder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotRelyOnCSS(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotSaveAsSingleFile(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotUseLongFileNames(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEncoding(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setFrameset(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;)V
.end method

.method public abstract setOptimizeForBrowser(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOptimizeForBrowser;)V
.end method

.method public abstract setPixelsPerInch(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setRelyOnVML(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSaveSmartTagsAsXml(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setTargetScreenSz(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTargetScreenSz;)V
.end method

.method public abstract unsetAllowPNG()V
.end method

.method public abstract unsetDivs()V
.end method

.method public abstract unsetDoNotOrganizeInFolder()V
.end method

.method public abstract unsetDoNotRelyOnCSS()V
.end method

.method public abstract unsetDoNotSaveAsSingleFile()V
.end method

.method public abstract unsetDoNotUseLongFileNames()V
.end method

.method public abstract unsetEncoding()V
.end method

.method public abstract unsetFrameset()V
.end method

.method public abstract unsetOptimizeForBrowser()V
.end method

.method public abstract unsetPixelsPerInch()V
.end method

.method public abstract unsetRelyOnVML()V
.end method

.method public abstract unsetSaveSmartTagsAsXml()V
.end method

.method public abstract unsetTargetScreenSz()V
.end method
