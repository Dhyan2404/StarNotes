.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishItem;",
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

    const-string v2, "ctwebpublishitemce57type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishItem;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishItem;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAutoRepublish()Z
.end method

.method public abstract getDestinationFile()Ljava/lang/String;
.end method

.method public abstract getDivId()Ljava/lang/String;
.end method

.method public abstract getId()J
.end method

.method public abstract getSourceObject()Ljava/lang/String;
.end method

.method public abstract getSourceRef()Ljava/lang/String;
.end method

.method public abstract getSourceType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isSetAutoRepublish()Z
.end method

.method public abstract isSetSourceObject()Z
.end method

.method public abstract isSetSourceRef()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract setAutoRepublish(Z)V
.end method

.method public abstract setDestinationFile(Ljava/lang/String;)V
.end method

.method public abstract setDivId(Ljava/lang/String;)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setSourceObject(Ljava/lang/String;)V
.end method

.method public abstract setSourceRef(Ljava/lang/String;)V
.end method

.method public abstract setSourceType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType$Enum;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract unsetAutoRepublish()V
.end method

.method public abstract unsetSourceObject()V
.end method

.method public abstract unsetSourceRef()V
.end method

.method public abstract unsetTitle()V
.end method

.method public abstract xgetAutoRepublish()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDestinationFile()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDivId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSourceObject()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetSourceRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetSourceType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;
.end method

.method public abstract xgetTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetAutoRepublish(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDestinationFile(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDivId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSourceObject(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetSourceRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetSourceType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STWebSourceType;)V
.end method

.method public abstract xsetTitle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
