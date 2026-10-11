.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;",
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

    const-string v2, "ctslidelayouteb34type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.end method

.method public abstract addNewClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract addNewHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
.end method

.method public abstract addNewTiming()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;
.end method

.method public abstract addNewTransition()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;
.end method

.method public abstract getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.end method

.method public abstract getClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
.end method

.method public abstract getMatchingName()Ljava/lang/String;
.end method

.method public abstract getPreserve()Z
.end method

.method public abstract getShowMasterPhAnim()Z
.end method

.method public abstract getShowMasterSp()Z
.end method

.method public abstract getTiming()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;
.end method

.method public abstract getTransition()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;
.end method

.method public abstract getUserDrawn()Z
.end method

.method public abstract isSetClrMapOvr()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHf()Z
.end method

.method public abstract isSetMatchingName()Z
.end method

.method public abstract isSetPreserve()Z
.end method

.method public abstract isSetShowMasterPhAnim()Z
.end method

.method public abstract isSetShowMasterSp()Z
.end method

.method public abstract isSetTiming()Z
.end method

.method public abstract isSetTransition()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetUserDrawn()Z
.end method

.method public abstract setCSld(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V
.end method

.method public abstract setClrMapOvr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setHf(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)V
.end method

.method public abstract setMatchingName(Ljava/lang/String;)V
.end method

.method public abstract setPreserve(Z)V
.end method

.method public abstract setShowMasterPhAnim(Z)V
.end method

.method public abstract setShowMasterSp(Z)V
.end method

.method public abstract setTiming(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;)V
.end method

.method public abstract setTransition(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;)V
.end method

.method public abstract setUserDrawn(Z)V
.end method

.method public abstract unsetClrMapOvr()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHf()V
.end method

.method public abstract unsetMatchingName()V
.end method

.method public abstract unsetPreserve()V
.end method

.method public abstract unsetShowMasterPhAnim()V
.end method

.method public abstract unsetShowMasterSp()V
.end method

.method public abstract unsetTiming()V
.end method

.method public abstract unsetTransition()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetUserDrawn()V
.end method

.method public abstract xgetMatchingName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPreserve()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowMasterPhAnim()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowMasterSp()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType;
.end method

.method public abstract xgetUserDrawn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetMatchingName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPreserve(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowMasterPhAnim(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowMasterSp(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType;)V
.end method

.method public abstract xsetUserDrawn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
