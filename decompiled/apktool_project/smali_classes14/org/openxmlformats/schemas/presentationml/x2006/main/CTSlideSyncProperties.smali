.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSyncProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSyncProperties;",
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

    const-string v2, "ctslidesyncproperties01b0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSyncProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSyncProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getClientInsertedTime()Ljava/util/Calendar;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getServerSldId()Ljava/lang/String;
.end method

.method public abstract getServerSldModifiedTime()Ljava/util/Calendar;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setClientInsertedTime(Ljava/util/Calendar;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setServerSldId(Ljava/lang/String;)V
.end method

.method public abstract setServerSldModifiedTime(Ljava/util/Calendar;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetClientInsertedTime()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetServerSldId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetServerSldModifiedTime()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xsetClientInsertedTime(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetServerSldId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetServerSldModifiedTime(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method
