.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_LAST_7_DAYS:I = 0x4

.field public static final INT_LAST_MONTH:I = 0x6

.field public static final INT_LAST_WEEK:I = 0x9

.field public static final INT_NEXT_MONTH:I = 0x7

.field public static final INT_NEXT_WEEK:I = 0xa

.field public static final INT_THIS_MONTH:I = 0x5

.field public static final INT_THIS_WEEK:I = 0x8

.field public static final INT_TODAY:I = 0x1

.field public static final INT_TOMORROW:I = 0x3

.field public static final INT_YESTERDAY:I = 0x2

.field public static final LAST_7_DAYS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final LAST_MONTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final LAST_WEEK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final NEXT_MONTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final NEXT_WEEK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final THIS_MONTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final THIS_WEEK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final TODAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final TOMORROW:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final YESTERDAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttimeperiodef07type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "today"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->TODAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    const-string v0, "yesterday"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->YESTERDAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    const-string v0, "tomorrow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->TOMORROW:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    const-string v0, "last7Days"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->LAST_7_DAYS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    const-string v0, "thisMonth"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->THIS_MONTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    const-string v0, "lastMonth"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->LAST_MONTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    const-string v0, "nextMonth"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->NEXT_MONTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    const-string v0, "thisWeek"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->THIS_WEEK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    const-string v0, "lastWeek"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->LAST_WEEK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    const-string v0, "nextWeek"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;->NEXT_WEEK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
