.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;",
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

    const-string v2, "cttlbuildparagraph4a8dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTmplLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTemplateList;
.end method

.method public abstract getAdvAuto()Ljava/lang/Object;
.end method

.method public abstract getAnimBg()Z
.end method

.method public abstract getAutoUpdateAnimBg()Z
.end method

.method public abstract getBldLvl()J
.end method

.method public abstract getBuild()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;
.end method

.method public abstract getGrpId()J
.end method

.method public abstract getRev()Z
.end method

.method public abstract getSpid()J
.end method

.method public abstract getTmplLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTemplateList;
.end method

.method public abstract getUiExpand()Z
.end method

.method public abstract isSetAdvAuto()Z
.end method

.method public abstract isSetAnimBg()Z
.end method

.method public abstract isSetAutoUpdateAnimBg()Z
.end method

.method public abstract isSetBldLvl()Z
.end method

.method public abstract isSetBuild()Z
.end method

.method public abstract isSetRev()Z
.end method

.method public abstract isSetTmplLst()Z
.end method

.method public abstract isSetUiExpand()Z
.end method

.method public abstract setAdvAuto(Ljava/lang/Object;)V
.end method

.method public abstract setAnimBg(Z)V
.end method

.method public abstract setAutoUpdateAnimBg(Z)V
.end method

.method public abstract setBldLvl(J)V
.end method

.method public abstract setBuild(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;)V
.end method

.method public abstract setGrpId(J)V
.end method

.method public abstract setRev(Z)V
.end method

.method public abstract setSpid(J)V
.end method

.method public abstract setTmplLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTemplateList;)V
.end method

.method public abstract setUiExpand(Z)V
.end method

.method public abstract unsetAdvAuto()V
.end method

.method public abstract unsetAnimBg()V
.end method

.method public abstract unsetAutoUpdateAnimBg()V
.end method

.method public abstract unsetBldLvl()V
.end method

.method public abstract unsetBuild()V
.end method

.method public abstract unsetRev()V
.end method

.method public abstract unsetTmplLst()V
.end method

.method public abstract unsetUiExpand()V
.end method

.method public abstract xgetAdvAuto()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetAnimBg()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoUpdateAnimBg()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBldLvl()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetBuild()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;
.end method

.method public abstract xgetGrpId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRev()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSpid()Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;
.end method

.method public abstract xgetUiExpand()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAdvAuto(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetAnimBg(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoUpdateAnimBg(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBldLvl(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetBuild(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;)V
.end method

.method public abstract xsetGrpId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRev(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSpid(Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;)V
.end method

.method public abstract xsetUiExpand(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
