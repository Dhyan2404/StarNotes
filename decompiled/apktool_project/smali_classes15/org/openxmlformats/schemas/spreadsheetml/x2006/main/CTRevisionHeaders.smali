.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeaders;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeaders;",
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

    const-string v2, "ctrevisionheadersdecatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeaders;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeaders;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewHeader()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;
.end method

.method public abstract getDiskRevisions()Z
.end method

.method public abstract getExclusive()Z
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getHeaderArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;
.end method

.method public abstract getHeaderArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;
.end method

.method public abstract getHeaderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHistory()Z
.end method

.method public abstract getKeepChangeHistory()Z
.end method

.method public abstract getLastGuid()Ljava/lang/String;
.end method

.method public abstract getPreserveHistory()J
.end method

.method public abstract getProtected()Z
.end method

.method public abstract getRevisionId()J
.end method

.method public abstract getShared()Z
.end method

.method public abstract getTrackRevisions()Z
.end method

.method public abstract getVersion()I
.end method

.method public abstract insertNewHeader(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;
.end method

.method public abstract isSetDiskRevisions()Z
.end method

.method public abstract isSetExclusive()Z
.end method

.method public abstract isSetHistory()Z
.end method

.method public abstract isSetKeepChangeHistory()Z
.end method

.method public abstract isSetLastGuid()Z
.end method

.method public abstract isSetPreserveHistory()Z
.end method

.method public abstract isSetProtected()Z
.end method

.method public abstract isSetRevisionId()Z
.end method

.method public abstract isSetShared()Z
.end method

.method public abstract isSetTrackRevisions()Z
.end method

.method public abstract isSetVersion()Z
.end method

.method public abstract removeHeader(I)V
.end method

.method public abstract setDiskRevisions(Z)V
.end method

.method public abstract setExclusive(Z)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract setHeaderArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;)V
.end method

.method public abstract setHeaderArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionHeader;)V
.end method

.method public abstract setHistory(Z)V
.end method

.method public abstract setKeepChangeHistory(Z)V
.end method

.method public abstract setLastGuid(Ljava/lang/String;)V
.end method

.method public abstract setPreserveHistory(J)V
.end method

.method public abstract setProtected(Z)V
.end method

.method public abstract setRevisionId(J)V
.end method

.method public abstract setShared(Z)V
.end method

.method public abstract setTrackRevisions(Z)V
.end method

.method public abstract setVersion(I)V
.end method

.method public abstract sizeOfHeaderArray()I
.end method

.method public abstract unsetDiskRevisions()V
.end method

.method public abstract unsetExclusive()V
.end method

.method public abstract unsetHistory()V
.end method

.method public abstract unsetKeepChangeHistory()V
.end method

.method public abstract unsetLastGuid()V
.end method

.method public abstract unsetPreserveHistory()V
.end method

.method public abstract unsetProtected()V
.end method

.method public abstract unsetRevisionId()V
.end method

.method public abstract unsetShared()V
.end method

.method public abstract unsetTrackRevisions()V
.end method

.method public abstract unsetVersion()V
.end method

.method public abstract xgetDiskRevisions()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetExclusive()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetHistory()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetKeepChangeHistory()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLastGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetPreserveHistory()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetProtected()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRevisionId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShared()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTrackRevisions()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVersion()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xsetDiskRevisions(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetExclusive(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetHistory(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetKeepChangeHistory(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLastGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetPreserveHistory(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetProtected(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRevisionId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShared(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTrackRevisions(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVersion(Lorg/apache/xmlbeans/XmlInt;)V
.end method
