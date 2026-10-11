.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHtmlPublishProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHtmlPublishProperties;",
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

    const-string v2, "cthtmlpublishproperties1c78type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHtmlPublishProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHtmlPublishProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCustShow()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowId;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewSldAll()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewSldRg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;
.end method

.method public abstract getCustShow()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowId;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getShowSpeakerNotes()Z
.end method

.method public abstract getSldAll()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getSldRg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;
.end method

.method public abstract getTarget()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isSetCustShow()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetShowSpeakerNotes()Z
.end method

.method public abstract isSetSldAll()Z
.end method

.method public abstract isSetSldRg()Z
.end method

.method public abstract isSetTarget()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract setCustShow(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowId;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setShowSpeakerNotes(Z)V
.end method

.method public abstract setSldAll(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setSldRg(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTIndexRange;)V
.end method

.method public abstract setTarget(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract unsetCustShow()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetShowSpeakerNotes()V
.end method

.method public abstract unsetSldAll()V
.end method

.method public abstract unsetSldRg()V
.end method

.method public abstract unsetTarget()V
.end method

.method public abstract unsetTitle()V
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetShowSpeakerNotes()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTarget()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTitle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetShowSpeakerNotes(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTarget(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTitle(Lorg/apache/xmlbeans/XmlString;)V
.end method
