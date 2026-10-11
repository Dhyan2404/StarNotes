.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_X_3_ARROWS:I = 0x1

.field public static final INT_X_3_ARROWS_GRAY:I = 0x2

.field public static final INT_X_3_FLAGS:I = 0x3

.field public static final INT_X_3_SIGNS:I = 0x6

.field public static final INT_X_3_SYMBOLS:I = 0x7

.field public static final INT_X_3_SYMBOLS_2:I = 0x8

.field public static final INT_X_3_TRAFFIC_LIGHTS_1:I = 0x4

.field public static final INT_X_3_TRAFFIC_LIGHTS_2:I = 0x5

.field public static final INT_X_4_ARROWS:I = 0x9

.field public static final INT_X_4_ARROWS_GRAY:I = 0xa

.field public static final INT_X_4_RATING:I = 0xc

.field public static final INT_X_4_RED_TO_BLACK:I = 0xb

.field public static final INT_X_4_TRAFFIC_LIGHTS:I = 0xd

.field public static final INT_X_5_ARROWS:I = 0xe

.field public static final INT_X_5_ARROWS_GRAY:I = 0xf

.field public static final INT_X_5_QUARTERS:I = 0x11

.field public static final INT_X_5_RATING:I = 0x10

.field public static final X_3_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_FLAGS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_SIGNS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_SYMBOLS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_SYMBOLS_2:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_TRAFFIC_LIGHTS_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_TRAFFIC_LIGHTS_2:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_RATING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_RED_TO_BLACK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_TRAFFIC_LIGHTS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_5_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_5_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_5_QUARTERS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_5_RATING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sticonsettype6112type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "3Arrows"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3ArrowsGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3Flags"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_FLAGS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3TrafficLights1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_TRAFFIC_LIGHTS_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3TrafficLights2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_TRAFFIC_LIGHTS_2:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3Signs"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_SIGNS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3Symbols"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_SYMBOLS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3Symbols2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_SYMBOLS_2:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4Arrows"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4ArrowsGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4RedToBlack"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_RED_TO_BLACK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4Rating"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_RATING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4TrafficLights"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_TRAFFIC_LIGHTS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "5Arrows"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_5_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "5ArrowsGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_5_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "5Rating"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_5_RATING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "5Quarters"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_5_QUARTERS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
