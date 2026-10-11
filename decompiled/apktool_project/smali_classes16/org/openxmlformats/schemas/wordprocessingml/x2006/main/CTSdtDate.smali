.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;",
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

    const-string v2, "ctsdtdatedfa1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCalendar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCalendarType;
.end method

.method public abstract addNewDateFormat()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewLid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;
.end method

.method public abstract addNewStoreMappedDataAs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDateMappingType;
.end method

.method public abstract getCalendar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCalendarType;
.end method

.method public abstract getDateFormat()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getFullDate()Ljava/util/Calendar;
.end method

.method public abstract getLid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;
.end method

.method public abstract getStoreMappedDataAs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDateMappingType;
.end method

.method public abstract isSetCalendar()Z
.end method

.method public abstract isSetDateFormat()Z
.end method

.method public abstract isSetFullDate()Z
.end method

.method public abstract isSetLid()Z
.end method

.method public abstract isSetStoreMappedDataAs()Z
.end method

.method public abstract setCalendar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCalendarType;)V
.end method

.method public abstract setDateFormat(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setFullDate(Ljava/util/Calendar;)V
.end method

.method public abstract setLid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;)V
.end method

.method public abstract setStoreMappedDataAs(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDateMappingType;)V
.end method

.method public abstract unsetCalendar()V
.end method

.method public abstract unsetDateFormat()V
.end method

.method public abstract unsetFullDate()V
.end method

.method public abstract unsetLid()V
.end method

.method public abstract unsetStoreMappedDataAs()V
.end method

.method public abstract xgetFullDate()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDateTime;
.end method

.method public abstract xsetFullDate(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDateTime;)V
.end method
