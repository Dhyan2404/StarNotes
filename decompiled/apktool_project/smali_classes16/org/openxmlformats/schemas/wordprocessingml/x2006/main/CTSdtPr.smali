.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;",
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

    const-string v2, "ctsdtpre24dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAlias()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewBibliography()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewCitation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewComboBox()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtComboBox;
.end method

.method public abstract addNewDataBinding()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDataBinding;
.end method

.method public abstract addNewDate()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;
.end method

.method public abstract addNewDocPartList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;
.end method

.method public abstract addNewDocPartObj()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;
.end method

.method public abstract addNewDropDownList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;
.end method

.method public abstract addNewEquation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewGroup()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewLabel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewLock()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLock;
.end method

.method public abstract addNewPicture()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewPlaceholder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPlaceholder;
.end method

.method public abstract addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract addNewRichText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewShowingPlcHdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewTabIndex()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract addNewTag()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewTemporary()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtText;
.end method

.method public abstract getAlias()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getBibliography()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getCitation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getComboBox()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtComboBox;
.end method

.method public abstract getDataBinding()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDataBinding;
.end method

.method public abstract getDate()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;
.end method

.method public abstract getDocPartList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;
.end method

.method public abstract getDocPartObj()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;
.end method

.method public abstract getDropDownList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;
.end method

.method public abstract getEquation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getGroup()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLabel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLock()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLock;
.end method

.method public abstract getPicture()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getPlaceholder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPlaceholder;
.end method

.method public abstract getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract getRichText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getShowingPlcHdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getTabIndex()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract getTag()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getTemporary()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtText;
.end method

.method public abstract isSetAlias()Z
.end method

.method public abstract isSetBibliography()Z
.end method

.method public abstract isSetCitation()Z
.end method

.method public abstract isSetComboBox()Z
.end method

.method public abstract isSetDataBinding()Z
.end method

.method public abstract isSetDate()Z
.end method

.method public abstract isSetDocPartList()Z
.end method

.method public abstract isSetDocPartObj()Z
.end method

.method public abstract isSetDropDownList()Z
.end method

.method public abstract isSetEquation()Z
.end method

.method public abstract isSetGroup()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetLabel()Z
.end method

.method public abstract isSetLock()Z
.end method

.method public abstract isSetPicture()Z
.end method

.method public abstract isSetPlaceholder()Z
.end method

.method public abstract isSetRPr()Z
.end method

.method public abstract isSetRichText()Z
.end method

.method public abstract isSetShowingPlcHdr()Z
.end method

.method public abstract isSetTabIndex()Z
.end method

.method public abstract isSetTag()Z
.end method

.method public abstract isSetTemporary()Z
.end method

.method public abstract isSetText()Z
.end method

.method public abstract setAlias(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setBibliography(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setCitation(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setComboBox(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtComboBox;)V
.end method

.method public abstract setDataBinding(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDataBinding;)V
.end method

.method public abstract setDate(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;)V
.end method

.method public abstract setDocPartList(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;)V
.end method

.method public abstract setDocPartObj(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;)V
.end method

.method public abstract setDropDownList(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;)V
.end method

.method public abstract setEquation(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setGroup(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLabel(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLock(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLock;)V
.end method

.method public abstract setPicture(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setPlaceholder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPlaceholder;)V
.end method

.method public abstract setRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V
.end method

.method public abstract setRichText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setShowingPlcHdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setTabIndex(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;)V
.end method

.method public abstract setTag(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setTemporary(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtText;)V
.end method

.method public abstract unsetAlias()V
.end method

.method public abstract unsetBibliography()V
.end method

.method public abstract unsetCitation()V
.end method

.method public abstract unsetComboBox()V
.end method

.method public abstract unsetDataBinding()V
.end method

.method public abstract unsetDate()V
.end method

.method public abstract unsetDocPartList()V
.end method

.method public abstract unsetDocPartObj()V
.end method

.method public abstract unsetDropDownList()V
.end method

.method public abstract unsetEquation()V
.end method

.method public abstract unsetGroup()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetLabel()V
.end method

.method public abstract unsetLock()V
.end method

.method public abstract unsetPicture()V
.end method

.method public abstract unsetPlaceholder()V
.end method

.method public abstract unsetRPr()V
.end method

.method public abstract unsetRichText()V
.end method

.method public abstract unsetShowingPlcHdr()V
.end method

.method public abstract unsetTabIndex()V
.end method

.method public abstract unsetTag()V
.end method

.method public abstract unsetTemporary()V
.end method

.method public abstract unsetText()V
.end method
