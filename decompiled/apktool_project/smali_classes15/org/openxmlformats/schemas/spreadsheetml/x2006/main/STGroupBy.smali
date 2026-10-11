.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;
    }
.end annotation


# static fields
.field public static final DAYS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOURS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

.field public static final INT_DAYS:I = 0x5

.field public static final INT_HOURS:I = 0x4

.field public static final INT_MINUTES:I = 0x3

.field public static final INT_MONTHS:I = 0x6

.field public static final INT_QUARTERS:I = 0x7

.field public static final INT_RANGE:I = 0x1

.field public static final INT_SECONDS:I = 0x2

.field public static final INT_YEARS:I = 0x8

.field public static final MINUTES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

.field public static final MONTHS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

.field public static final QUARTERS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

.field public static final RANGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

.field public static final SECONDS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

.field public static final YEARS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stgroupbya405type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "range"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->RANGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    const-string v0, "seconds"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->SECONDS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    const-string v0, "minutes"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->MINUTES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    const-string v0, "hours"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->HOURS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    const-string v0, "days"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->DAYS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    const-string v0, "months"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->MONTHS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    const-string v0, "quarters"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->QUARTERS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    const-string v0, "years"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy;->YEARS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGroupBy$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
