.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;",
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

    const-string v2, "ctdategroupitem9743type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getDateTimeGrouping()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;
.end method

.method public abstract getDay()I
.end method

.method public abstract getHour()I
.end method

.method public abstract getMinute()I
.end method

.method public abstract getMonth()I
.end method

.method public abstract getSecond()I
.end method

.method public abstract getYear()I
.end method

.method public abstract isSetDay()Z
.end method

.method public abstract isSetHour()Z
.end method

.method public abstract isSetMinute()Z
.end method

.method public abstract isSetMonth()Z
.end method

.method public abstract isSetSecond()Z
.end method

.method public abstract setDateTimeGrouping(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;)V
.end method

.method public abstract setDay(I)V
.end method

.method public abstract setHour(I)V
.end method

.method public abstract setMinute(I)V
.end method

.method public abstract setMonth(I)V
.end method

.method public abstract setSecond(I)V
.end method

.method public abstract setYear(I)V
.end method

.method public abstract unsetDay()V
.end method

.method public abstract unsetHour()V
.end method

.method public abstract unsetMinute()V
.end method

.method public abstract unsetMonth()V
.end method

.method public abstract unsetSecond()V
.end method

.method public abstract xgetDateTimeGrouping()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;
.end method

.method public abstract xgetDay()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetHour()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetMinute()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetMonth()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetSecond()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetYear()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xsetDateTimeGrouping(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;)V
.end method

.method public abstract xsetDay(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetHour(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetMinute(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetMonth(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetSecond(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetYear(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method
