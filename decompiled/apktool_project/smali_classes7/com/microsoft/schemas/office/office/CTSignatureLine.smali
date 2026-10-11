.class public interface abstract Lcom/microsoft/schemas/office/office/CTSignatureLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTSignatureLine;",
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

    const-string v2, "ctsignaturelineec85type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTSignatureLine;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTSignatureLine;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAddlxml()Ljava/lang/String;
.end method

.method public abstract getAllowcomments()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIssignatureline()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getProvid()Ljava/lang/String;
.end method

.method public abstract getShowsigndate()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getSigninginstructions()Ljava/lang/String;
.end method

.method public abstract getSigninginstructionsset()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getSigprovurl()Ljava/lang/String;
.end method

.method public abstract getSuggestedsigner()Ljava/lang/String;
.end method

.method public abstract getSuggestedsigner2()Ljava/lang/String;
.end method

.method public abstract getSuggestedsigneremail()Ljava/lang/String;
.end method

.method public abstract isSetAddlxml()Z
.end method

.method public abstract isSetAllowcomments()Z
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetIssignatureline()Z
.end method

.method public abstract isSetProvid()Z
.end method

.method public abstract isSetShowsigndate()Z
.end method

.method public abstract isSetSigninginstructions()Z
.end method

.method public abstract isSetSigninginstructionsset()Z
.end method

.method public abstract isSetSigprovurl()Z
.end method

.method public abstract isSetSuggestedsigner()Z
.end method

.method public abstract isSetSuggestedsigner2()Z
.end method

.method public abstract isSetSuggestedsigneremail()Z
.end method

.method public abstract setAddlxml(Ljava/lang/String;)V
.end method

.method public abstract setAllowcomments(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setIssignatureline(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setProvid(Ljava/lang/String;)V
.end method

.method public abstract setShowsigndate(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setSigninginstructions(Ljava/lang/String;)V
.end method

.method public abstract setSigninginstructionsset(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setSigprovurl(Ljava/lang/String;)V
.end method

.method public abstract setSuggestedsigner(Ljava/lang/String;)V
.end method

.method public abstract setSuggestedsigner2(Ljava/lang/String;)V
.end method

.method public abstract setSuggestedsigneremail(Ljava/lang/String;)V
.end method

.method public abstract unsetAddlxml()V
.end method

.method public abstract unsetAllowcomments()V
.end method

.method public abstract unsetExt()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetIssignatureline()V
.end method

.method public abstract unsetProvid()V
.end method

.method public abstract unsetShowsigndate()V
.end method

.method public abstract unsetSigninginstructions()V
.end method

.method public abstract unsetSigninginstructionsset()V
.end method

.method public abstract unsetSigprovurl()V
.end method

.method public abstract unsetSuggestedsigner()V
.end method

.method public abstract unsetSuggestedsigner2()V
.end method

.method public abstract unsetSuggestedsigneremail()V
.end method

.method public abstract xgetAddlxml()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetAllowcomments()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetIssignatureline()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetProvid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetShowsigndate()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetSigninginstructions()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSigninginstructionsset()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetSigprovurl()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSuggestedsigner()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSuggestedsigner2()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSuggestedsigneremail()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAddlxml(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetAllowcomments(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetIssignatureline(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetProvid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetShowsigndate(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetSigninginstructions(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSigninginstructionsset(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetSigprovurl(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSuggestedsigner(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSuggestedsigner2(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSuggestedsigneremail(Lorg/apache/xmlbeans/XmlString;)V
.end method
