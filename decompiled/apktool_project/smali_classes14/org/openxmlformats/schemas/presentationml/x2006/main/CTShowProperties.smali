.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowProperties;",
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

    const-string v2, "ctshowproperties7555type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBrowse()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowInfoBrowse;
.end method

.method public abstract addNewCustShow()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowId;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewKiosk()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowInfoKiosk;
.end method

.method public abstract addNewPenClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract addNewPresent()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewSldAll()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewSldRg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;
.end method

.method public abstract getBrowse()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowInfoBrowse;
.end method

.method public abstract getCustShow()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowId;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getKiosk()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowInfoKiosk;
.end method

.method public abstract getLoop()Z
.end method

.method public abstract getPenClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getPresent()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getShowAnimation()Z
.end method

.method public abstract getShowNarration()Z
.end method

.method public abstract getSldAll()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getSldRg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;
.end method

.method public abstract getUseTimings()Z
.end method

.method public abstract isSetBrowse()Z
.end method

.method public abstract isSetCustShow()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetKiosk()Z
.end method

.method public abstract isSetLoop()Z
.end method

.method public abstract isSetPenClr()Z
.end method

.method public abstract isSetPresent()Z
.end method

.method public abstract isSetShowAnimation()Z
.end method

.method public abstract isSetShowNarration()Z
.end method

.method public abstract isSetSldAll()Z
.end method

.method public abstract isSetSldRg()Z
.end method

.method public abstract isSetUseTimings()Z
.end method

.method public abstract setBrowse(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowInfoBrowse;)V
.end method

.method public abstract setCustShow(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowId;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setKiosk(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowInfoKiosk;)V
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract setPenClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setPresent(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setShowAnimation(Z)V
.end method

.method public abstract setShowNarration(Z)V
.end method

.method public abstract setSldAll(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setSldRg(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;)V
.end method

.method public abstract setUseTimings(Z)V
.end method

.method public abstract unsetBrowse()V
.end method

.method public abstract unsetCustShow()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetKiosk()V
.end method

.method public abstract unsetLoop()V
.end method

.method public abstract unsetPenClr()V
.end method

.method public abstract unsetPresent()V
.end method

.method public abstract unsetShowAnimation()V
.end method

.method public abstract unsetShowNarration()V
.end method

.method public abstract unsetSldAll()V
.end method

.method public abstract unsetSldRg()V
.end method

.method public abstract unsetUseTimings()V
.end method

.method public abstract xgetLoop()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowAnimation()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowNarration()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUseTimings()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetLoop(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowAnimation(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowNarration(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUseTimings(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
