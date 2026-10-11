.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;",
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

    const-string v2, "ctslidetransition6829type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBlinds()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;
.end method

.method public abstract addNewChecker()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;
.end method

.method public abstract addNewCircle()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewComb()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;
.end method

.method public abstract addNewCover()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEightDirectionTransition;
.end method

.method public abstract addNewCut()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOptionalBlackTransition;
.end method

.method public abstract addNewDiamond()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewDissolve()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract addNewFade()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOptionalBlackTransition;
.end method

.method public abstract addNewNewsflash()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewPlus()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewPull()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEightDirectionTransition;
.end method

.method public abstract addNewPush()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSideDirectionTransition;
.end method

.method public abstract addNewRandom()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewRandomBar()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;
.end method

.method public abstract addNewSndAc()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTransitionSoundAction;
.end method

.method public abstract addNewSplit()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSplitTransition;
.end method

.method public abstract addNewStrips()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCornerDirectionTransition;
.end method

.method public abstract addNewWedge()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewWheel()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWheelTransition;
.end method

.method public abstract addNewWipe()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSideDirectionTransition;
.end method

.method public abstract addNewZoom()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTInOutTransition;
.end method

.method public abstract getAdvClick()Z
.end method

.method public abstract getAdvTm()J
.end method

.method public abstract getBlinds()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;
.end method

.method public abstract getChecker()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;
.end method

.method public abstract getCircle()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getComb()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;
.end method

.method public abstract getCover()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEightDirectionTransition;
.end method

.method public abstract getCut()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOptionalBlackTransition;
.end method

.method public abstract getDiamond()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getDissolve()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getFade()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOptionalBlackTransition;
.end method

.method public abstract getNewsflash()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getPlus()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getPull()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEightDirectionTransition;
.end method

.method public abstract getPush()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSideDirectionTransition;
.end method

.method public abstract getRandom()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getRandomBar()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;
.end method

.method public abstract getSndAc()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTransitionSoundAction;
.end method

.method public abstract getSpd()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSpeed$Enum;
.end method

.method public abstract getSplit()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSplitTransition;
.end method

.method public abstract getStrips()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCornerDirectionTransition;
.end method

.method public abstract getWedge()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getWheel()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWheelTransition;
.end method

.method public abstract getWipe()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSideDirectionTransition;
.end method

.method public abstract getZoom()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTInOutTransition;
.end method

.method public abstract isSetAdvClick()Z
.end method

.method public abstract isSetAdvTm()Z
.end method

.method public abstract isSetBlinds()Z
.end method

.method public abstract isSetChecker()Z
.end method

.method public abstract isSetCircle()Z
.end method

.method public abstract isSetComb()Z
.end method

.method public abstract isSetCover()Z
.end method

.method public abstract isSetCut()Z
.end method

.method public abstract isSetDiamond()Z
.end method

.method public abstract isSetDissolve()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFade()Z
.end method

.method public abstract isSetNewsflash()Z
.end method

.method public abstract isSetPlus()Z
.end method

.method public abstract isSetPull()Z
.end method

.method public abstract isSetPush()Z
.end method

.method public abstract isSetRandom()Z
.end method

.method public abstract isSetRandomBar()Z
.end method

.method public abstract isSetSndAc()Z
.end method

.method public abstract isSetSpd()Z
.end method

.method public abstract isSetSplit()Z
.end method

.method public abstract isSetStrips()Z
.end method

.method public abstract isSetWedge()Z
.end method

.method public abstract isSetWheel()Z
.end method

.method public abstract isSetWipe()Z
.end method

.method public abstract isSetZoom()Z
.end method

.method public abstract setAdvClick(Z)V
.end method

.method public abstract setAdvTm(J)V
.end method

.method public abstract setBlinds(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;)V
.end method

.method public abstract setChecker(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;)V
.end method

.method public abstract setCircle(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setComb(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;)V
.end method

.method public abstract setCover(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEightDirectionTransition;)V
.end method

.method public abstract setCut(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOptionalBlackTransition;)V
.end method

.method public abstract setDiamond(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setDissolve(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setFade(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOptionalBlackTransition;)V
.end method

.method public abstract setNewsflash(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setPlus(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setPull(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEightDirectionTransition;)V
.end method

.method public abstract setPush(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSideDirectionTransition;)V
.end method

.method public abstract setRandom(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setRandomBar(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOrientationTransition;)V
.end method

.method public abstract setSndAc(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTransitionSoundAction;)V
.end method

.method public abstract setSpd(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSpeed$Enum;)V
.end method

.method public abstract setSplit(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSplitTransition;)V
.end method

.method public abstract setStrips(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCornerDirectionTransition;)V
.end method

.method public abstract setWedge(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setWheel(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWheelTransition;)V
.end method

.method public abstract setWipe(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSideDirectionTransition;)V
.end method

.method public abstract setZoom(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTInOutTransition;)V
.end method

.method public abstract unsetAdvClick()V
.end method

.method public abstract unsetAdvTm()V
.end method

.method public abstract unsetBlinds()V
.end method

.method public abstract unsetChecker()V
.end method

.method public abstract unsetCircle()V
.end method

.method public abstract unsetComb()V
.end method

.method public abstract unsetCover()V
.end method

.method public abstract unsetCut()V
.end method

.method public abstract unsetDiamond()V
.end method

.method public abstract unsetDissolve()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFade()V
.end method

.method public abstract unsetNewsflash()V
.end method

.method public abstract unsetPlus()V
.end method

.method public abstract unsetPull()V
.end method

.method public abstract unsetPush()V
.end method

.method public abstract unsetRandom()V
.end method

.method public abstract unsetRandomBar()V
.end method

.method public abstract unsetSndAc()V
.end method

.method public abstract unsetSpd()V
.end method

.method public abstract unsetSplit()V
.end method

.method public abstract unsetStrips()V
.end method

.method public abstract unsetWedge()V
.end method

.method public abstract unsetWheel()V
.end method

.method public abstract unsetWipe()V
.end method

.method public abstract unsetZoom()V
.end method

.method public abstract xgetAdvClick()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAdvTm()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSpd()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSpeed;
.end method

.method public abstract xsetAdvClick(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAdvTm(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSpd(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSpeed;)V
.end method
