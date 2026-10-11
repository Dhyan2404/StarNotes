.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;",
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

    const-string v2, "ctrevisionheader6b51type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewReviewedList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTReviewedRevisions;
.end method

.method public abstract addNewSheetIdMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetIdMap;
.end method

.method public abstract getDateTime()Ljava/util/Calendar;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMaxRId()J
.end method

.method public abstract getMaxSheetId()J
.end method

.method public abstract getMinRId()J
.end method

.method public abstract getReviewedList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTReviewedRevisions;
.end method

.method public abstract getSheetIdMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetIdMap;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetMaxRId()Z
.end method

.method public abstract isSetMinRId()Z
.end method

.method public abstract isSetReviewedList()Z
.end method

.method public abstract setDateTime(Ljava/util/Calendar;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setMaxRId(J)V
.end method

.method public abstract setMaxSheetId(J)V
.end method

.method public abstract setMinRId(J)V
.end method

.method public abstract setReviewedList(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTReviewedRevisions;)V
.end method

.method public abstract setSheetIdMap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetIdMap;)V
.end method

.method public abstract setUserName(Ljava/lang/String;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetMaxRId()V
.end method

.method public abstract unsetMinRId()V
.end method

.method public abstract unsetReviewedList()V
.end method

.method public abstract xgetDateTime()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetMaxRId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMaxSheetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMinRId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUserName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetDateTime(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetMaxRId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMaxSheetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMinRId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUserName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
