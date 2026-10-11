.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;
    }
.end annotation


# static fields
.field public static final ALL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

.field public static final BUTTON:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

.field public static final DATA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ALL:I = 0x4

.field public static final INT_BUTTON:I = 0x6

.field public static final INT_DATA:I = 0x3

.field public static final INT_NONE:I = 0x1

.field public static final INT_NORMAL:I = 0x2

.field public static final INT_ORIGIN:I = 0x5

.field public static final INT_TOP_END:I = 0x7

.field public static final INT_TOP_RIGHT:I = 0x8

.field public static final NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

.field public static final NORMAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

.field public static final ORIGIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

.field public static final TOP_END:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

.field public static final TOP_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpivotareatypef298type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    const-string v0, "normal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->NORMAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    const-string v0, "data"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->DATA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    const-string v0, "all"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->ALL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    const-string v0, "origin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->ORIGIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    const-string v0, "button"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->BUTTON:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    const-string v0, "topEnd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->TOP_END:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    const-string v0, "topRight"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;->TOP_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
