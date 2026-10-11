.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMathPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMathPr;",
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

    const-string v2, "ctmathpr9a88type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMathPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMathPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBrkBin()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBreakBin;
.end method

.method public abstract addNewBrkBinSub()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBreakBinSub;
.end method

.method public abstract addNewDefJc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathJc;
.end method

.method public abstract addNewDispDef()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewIntLim()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLoc;
.end method

.method public abstract addNewInterSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract addNewIntraSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract addNewLMargin()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract addNewMathFont()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTString;
.end method

.method public abstract addNewNaryLim()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLoc;
.end method

.method public abstract addNewPostSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract addNewPreSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract addNewRMargin()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract addNewSmallFrac()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewWrapIndent()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract addNewWrapRight()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getBrkBin()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBreakBin;
.end method

.method public abstract getBrkBinSub()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBreakBinSub;
.end method

.method public abstract getDefJc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathJc;
.end method

.method public abstract getDispDef()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getIntLim()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLoc;
.end method

.method public abstract getInterSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract getIntraSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract getLMargin()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract getMathFont()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTString;
.end method

.method public abstract getNaryLim()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLoc;
.end method

.method public abstract getPostSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract getPreSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract getRMargin()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract getSmallFrac()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getWrapIndent()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;
.end method

.method public abstract getWrapRight()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract isSetBrkBin()Z
.end method

.method public abstract isSetBrkBinSub()Z
.end method

.method public abstract isSetDefJc()Z
.end method

.method public abstract isSetDispDef()Z
.end method

.method public abstract isSetIntLim()Z
.end method

.method public abstract isSetInterSp()Z
.end method

.method public abstract isSetIntraSp()Z
.end method

.method public abstract isSetLMargin()Z
.end method

.method public abstract isSetMathFont()Z
.end method

.method public abstract isSetNaryLim()Z
.end method

.method public abstract isSetPostSp()Z
.end method

.method public abstract isSetPreSp()Z
.end method

.method public abstract isSetRMargin()Z
.end method

.method public abstract isSetSmallFrac()Z
.end method

.method public abstract isSetWrapIndent()Z
.end method

.method public abstract isSetWrapRight()Z
.end method

.method public abstract setBrkBin(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBreakBin;)V
.end method

.method public abstract setBrkBinSub(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBreakBinSub;)V
.end method

.method public abstract setDefJc(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathJc;)V
.end method

.method public abstract setDispDef(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setIntLim(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLoc;)V
.end method

.method public abstract setInterSp(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;)V
.end method

.method public abstract setIntraSp(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;)V
.end method

.method public abstract setLMargin(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;)V
.end method

.method public abstract setMathFont(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTString;)V
.end method

.method public abstract setNaryLim(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLoc;)V
.end method

.method public abstract setPostSp(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;)V
.end method

.method public abstract setPreSp(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;)V
.end method

.method public abstract setRMargin(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;)V
.end method

.method public abstract setSmallFrac(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setWrapIndent(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTwipsMeasure;)V
.end method

.method public abstract setWrapRight(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract unsetBrkBin()V
.end method

.method public abstract unsetBrkBinSub()V
.end method

.method public abstract unsetDefJc()V
.end method

.method public abstract unsetDispDef()V
.end method

.method public abstract unsetIntLim()V
.end method

.method public abstract unsetInterSp()V
.end method

.method public abstract unsetIntraSp()V
.end method

.method public abstract unsetLMargin()V
.end method

.method public abstract unsetMathFont()V
.end method

.method public abstract unsetNaryLim()V
.end method

.method public abstract unsetPostSp()V
.end method

.method public abstract unsetPreSp()V
.end method

.method public abstract unsetRMargin()V
.end method

.method public abstract unsetSmallFrac()V
.end method

.method public abstract unsetWrapIndent()V
.end method

.method public abstract unsetWrapRight()V
.end method
