.class public interface abstract Lcom/microsoft/schemas/vml/CTImageData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/vml/CTImageData;",
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

    const-string v2, "ctimagedata4039type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/CTImageData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/CTImageData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlthref()Ljava/lang/String;
.end method

.method public abstract getBilevel()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getBlacklevel()Ljava/lang/String;
.end method

.method public abstract getChromakey()Ljava/lang/String;
.end method

.method public abstract getCropbottom()Ljava/lang/String;
.end method

.method public abstract getCropleft()Ljava/lang/String;
.end method

.method public abstract getCropright()Ljava/lang/String;
.end method

.method public abstract getCroptop()Ljava/lang/String;
.end method

.method public abstract getDetectmouseclick()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getEmbosscolor()Ljava/lang/String;
.end method

.method public abstract getGain()Ljava/lang/String;
.end method

.method public abstract getGamma()Ljava/lang/String;
.end method

.method public abstract getGrayscale()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getHref()Ljava/lang/String;
.end method

.method public abstract getHref2()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getId2()Ljava/lang/String;
.end method

.method public abstract getMovie()F
.end method

.method public abstract getOleid()F
.end method

.method public abstract getPict()Ljava/lang/String;
.end method

.method public abstract getRecolortarget()Ljava/lang/String;
.end method

.method public abstract getRelid()Ljava/lang/String;
.end method

.method public abstract getSrc()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isSetAlthref()Z
.end method

.method public abstract isSetBilevel()Z
.end method

.method public abstract isSetBlacklevel()Z
.end method

.method public abstract isSetChromakey()Z
.end method

.method public abstract isSetCropbottom()Z
.end method

.method public abstract isSetCropleft()Z
.end method

.method public abstract isSetCropright()Z
.end method

.method public abstract isSetCroptop()Z
.end method

.method public abstract isSetDetectmouseclick()Z
.end method

.method public abstract isSetEmbosscolor()Z
.end method

.method public abstract isSetGain()Z
.end method

.method public abstract isSetGamma()Z
.end method

.method public abstract isSetGrayscale()Z
.end method

.method public abstract isSetHref()Z
.end method

.method public abstract isSetHref2()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetId2()Z
.end method

.method public abstract isSetMovie()Z
.end method

.method public abstract isSetOleid()Z
.end method

.method public abstract isSetPict()Z
.end method

.method public abstract isSetRecolortarget()Z
.end method

.method public abstract isSetRelid()Z
.end method

.method public abstract isSetSrc()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract setAlthref(Ljava/lang/String;)V
.end method

.method public abstract setBilevel(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setBlacklevel(Ljava/lang/String;)V
.end method

.method public abstract setChromakey(Ljava/lang/String;)V
.end method

.method public abstract setCropbottom(Ljava/lang/String;)V
.end method

.method public abstract setCropleft(Ljava/lang/String;)V
.end method

.method public abstract setCropright(Ljava/lang/String;)V
.end method

.method public abstract setCroptop(Ljava/lang/String;)V
.end method

.method public abstract setDetectmouseclick(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setEmbosscolor(Ljava/lang/String;)V
.end method

.method public abstract setGain(Ljava/lang/String;)V
.end method

.method public abstract setGamma(Ljava/lang/String;)V
.end method

.method public abstract setGrayscale(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setHref(Ljava/lang/String;)V
.end method

.method public abstract setHref2(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setId2(Ljava/lang/String;)V
.end method

.method public abstract setMovie(F)V
.end method

.method public abstract setOleid(F)V
.end method

.method public abstract setPict(Ljava/lang/String;)V
.end method

.method public abstract setRecolortarget(Ljava/lang/String;)V
.end method

.method public abstract setRelid(Ljava/lang/String;)V
.end method

.method public abstract setSrc(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract unsetAlthref()V
.end method

.method public abstract unsetBilevel()V
.end method

.method public abstract unsetBlacklevel()V
.end method

.method public abstract unsetChromakey()V
.end method

.method public abstract unsetCropbottom()V
.end method

.method public abstract unsetCropleft()V
.end method

.method public abstract unsetCropright()V
.end method

.method public abstract unsetCroptop()V
.end method

.method public abstract unsetDetectmouseclick()V
.end method

.method public abstract unsetEmbosscolor()V
.end method

.method public abstract unsetGain()V
.end method

.method public abstract unsetGamma()V
.end method

.method public abstract unsetGrayscale()V
.end method

.method public abstract unsetHref()V
.end method

.method public abstract unsetHref2()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetId2()V
.end method

.method public abstract unsetMovie()V
.end method

.method public abstract unsetOleid()V
.end method

.method public abstract unsetPict()V
.end method

.method public abstract unsetRecolortarget()V
.end method

.method public abstract unsetRelid()V
.end method

.method public abstract unsetSrc()V
.end method

.method public abstract unsetTitle()V
.end method

.method public abstract xgetAlthref()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBilevel()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetBlacklevel()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetChromakey()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetCropbottom()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCropleft()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCropright()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCroptop()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDetectmouseclick()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetEmbosscolor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetGain()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetGamma()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetGrayscale()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetHref()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHref2()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetId2()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetMovie()Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetOleid()Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetPict()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetRecolortarget()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetRelid()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetSrc()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTitle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAlthref(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetBilevel(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetBlacklevel(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetChromakey(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetCropbottom(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCropleft(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCropright(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCroptop(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDetectmouseclick(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetEmbosscolor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetGain(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetGamma(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetGrayscale(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetHref(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHref2(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetId2(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetMovie(Lorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetOleid(Lorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetPict(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetRecolortarget(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetRelid(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetSrc(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTitle(Lorg/apache/xmlbeans/XmlString;)V
.end method
