.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;
    }
.end annotation


# static fields
.field public static final DAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOUR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

.field public static final INT_DAY:I = 0x3

.field public static final INT_HOUR:I = 0x4

.field public static final INT_MINUTE:I = 0x5

.field public static final INT_MONTH:I = 0x2

.field public static final INT_SECOND:I = 0x6

.field public static final INT_YEAR:I = 0x1

.field public static final MINUTE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

.field public static final MONTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

.field public static final SECOND:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

.field public static final YEAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stdatetimegrouping6e17type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "year"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;->YEAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    const-string v0, "month"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;->MONTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    const-string v0, "day"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;->DAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    const-string v0, "hour"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;->HOUR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    const-string v0, "minute"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;->MINUTE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    const-string v0, "second"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping;->SECOND:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDateTimeGrouping$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
