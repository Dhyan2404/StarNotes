.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFont;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFont;",
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

    const-string v2, "ctfonteb79type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFont;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFont;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAltName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewCharset()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCharset;
.end method

.method public abstract addNewEmbedBold()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;
.end method

.method public abstract addNewEmbedBoldItalic()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;
.end method

.method public abstract addNewEmbedItalic()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;
.end method

.method public abstract addNewEmbedRegular()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;
.end method

.method public abstract addNewFamily()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontFamily;
.end method

.method public abstract addNewNotTrueType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPanose1()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPanose;
.end method

.method public abstract addNewPitch()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPitch;
.end method

.method public abstract addNewSig()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontSig;
.end method

.method public abstract getAltName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getCharset()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCharset;
.end method

.method public abstract getEmbedBold()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;
.end method

.method public abstract getEmbedBoldItalic()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;
.end method

.method public abstract getEmbedItalic()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;
.end method

.method public abstract getEmbedRegular()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;
.end method

.method public abstract getFamily()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontFamily;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNotTrueType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPanose1()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPanose;
.end method

.method public abstract getPitch()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPitch;
.end method

.method public abstract getSig()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontSig;
.end method

.method public abstract isSetAltName()Z
.end method

.method public abstract isSetCharset()Z
.end method

.method public abstract isSetEmbedBold()Z
.end method

.method public abstract isSetEmbedBoldItalic()Z
.end method

.method public abstract isSetEmbedItalic()Z
.end method

.method public abstract isSetEmbedRegular()Z
.end method

.method public abstract isSetFamily()Z
.end method

.method public abstract isSetNotTrueType()Z
.end method

.method public abstract isSetPanose1()Z
.end method

.method public abstract isSetPitch()Z
.end method

.method public abstract isSetSig()Z
.end method

.method public abstract setAltName(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setCharset(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCharset;)V
.end method

.method public abstract setEmbedBold(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;)V
.end method

.method public abstract setEmbedBoldItalic(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;)V
.end method

.method public abstract setEmbedItalic(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;)V
.end method

.method public abstract setEmbedRegular(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontRel;)V
.end method

.method public abstract setFamily(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontFamily;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNotTrueType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPanose1(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPanose;)V
.end method

.method public abstract setPitch(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPitch;)V
.end method

.method public abstract setSig(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFontSig;)V
.end method

.method public abstract unsetAltName()V
.end method

.method public abstract unsetCharset()V
.end method

.method public abstract unsetEmbedBold()V
.end method

.method public abstract unsetEmbedBoldItalic()V
.end method

.method public abstract unsetEmbedItalic()V
.end method

.method public abstract unsetEmbedRegular()V
.end method

.method public abstract unsetFamily()V
.end method

.method public abstract unsetNotTrueType()V
.end method

.method public abstract unsetPanose1()V
.end method

.method public abstract unsetPitch()V
.end method

.method public abstract unsetSig()V
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method
