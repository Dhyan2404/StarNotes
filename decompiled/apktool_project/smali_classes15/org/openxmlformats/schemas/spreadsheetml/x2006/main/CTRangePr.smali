.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangePr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangePr;",
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

    const-string v2, "ctrangeprc5betype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangePr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangePr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAutoEnd()Z
.end method

.method public abstract getAutoStart()Z
.end method

.method public abstract getEndDate()Ljava/util/Calendar;
.end method

.method public abstract getEndNum()D
.end method

.method public abstract getGroupBy()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;
.end method

.method public abstract getGroupInterval()D
.end method

.method public abstract getStartDate()Ljava/util/Calendar;
.end method

.method public abstract getStartNum()D
.end method

.method public abstract isSetAutoEnd()Z
.end method

.method public abstract isSetAutoStart()Z
.end method

.method public abstract isSetEndDate()Z
.end method

.method public abstract isSetEndNum()Z
.end method

.method public abstract isSetGroupBy()Z
.end method

.method public abstract isSetGroupInterval()Z
.end method

.method public abstract isSetStartDate()Z
.end method

.method public abstract isSetStartNum()Z
.end method

.method public abstract setAutoEnd(Z)V
.end method

.method public abstract setAutoStart(Z)V
.end method

.method public abstract setEndDate(Ljava/util/Calendar;)V
.end method

.method public abstract setEndNum(D)V
.end method

.method public abstract setGroupBy(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;)V
.end method

.method public abstract setGroupInterval(D)V
.end method

.method public abstract setStartDate(Ljava/util/Calendar;)V
.end method

.method public abstract setStartNum(D)V
.end method

.method public abstract unsetAutoEnd()V
.end method

.method public abstract unsetAutoStart()V
.end method

.method public abstract unsetEndDate()V
.end method

.method public abstract unsetEndNum()V
.end method

.method public abstract unsetGroupBy()V
.end method

.method public abstract unsetGroupInterval()V
.end method

.method public abstract unsetStartDate()V
.end method

.method public abstract unsetStartNum()V
.end method

.method public abstract xgetAutoEnd()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoStart()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEndDate()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetEndNum()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetGroupBy()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;
.end method

.method public abstract xgetGroupInterval()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetStartDate()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetStartNum()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xsetAutoEnd(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoStart(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEndDate(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetEndNum(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetGroupBy(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;)V
.end method

.method public abstract xsetGroupInterval(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetStartDate(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetStartNum(Lorg/apache/xmlbeans/XmlDouble;)V
.end method
