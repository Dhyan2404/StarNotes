.class public final Lorg/apache/poi/hslf/model/ActiveXShape;
.super Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_ACTIVEX_THUMBNAIL:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILorg/apache/poi/hslf/usermodel/HSLFPictureData;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/ActiveXShape;->setActiveXIndex(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/ActiveXShape;->getExControl()Lorg/apache/poi/hslf/record/ExControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExControl;->getExControlAtom()Lorg/apache/poi/hslf/record/ExControlAtom;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_getSheetNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hslf/record/ExControlAtom;->setSlideId(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExEmbed;->getProgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/ActiveXShape;->getControlIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v1, Lorg/apache/poi/ddf/EscherComplexProperty;

    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->GROUPSHAPE__SHAPENAME:Lorg/apache/poi/ddf/EscherPropertyTypes;

    array-length v3, p1

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([B)I

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ExControl is not defined"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSpContainer(IZ)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->createSpContainer(IZ)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p2

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p2, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    const/16 v1, 0xa10

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    sget-object v0, Lorg/apache/poi/sl/usermodel/ShapeType;->HOST_CONTROL:Lorg/apache/poi/sl/usermodel/ShapeType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__PICTUREID:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x8000001

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x80008

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x8000002

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->PROTECTION__LOCKAGAINSTGROUPING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientData(Z)Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/hslf/record/ExObjRefAtom;

    invoke-direct {p1}, Lorg/apache/poi/hslf/record/ExObjRefAtom;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->addChild(Lorg/apache/poi/hslf/record/Record;)V

    return-object p2
.end method

.method public getControlIndex()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjRefAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExObjRefAtom;->getExObjIdRef()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getExControl()Lorg/apache/poi/hslf/record/ExControl;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/ActiveXShape;->getControlIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjList:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v1, v1, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/ExObjList;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    instance-of v5, v4, Lorg/apache/poi/hslf/record/ExControl;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/apache/poi/hslf/record/ExControl;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/ExEmbed;->getExOleObjAtom()Lorg/apache/poi/hslf/record/ExOleObjAtom;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->getObjID()I

    move-result v5

    if-ne v5, v0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public setActiveXIndex(I)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjRefAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ExObjRefAtom;->setExObjIdRef(I)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "OEShapeAtom for ActiveX doesn\'t exist"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
