.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;
    }
.end annotation


# static fields
.field public static final ACCENT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final ACCENT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final ACCENT_3:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final ACCENT_4:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final ACCENT_5:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final ACCENT_6:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final BG_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final BG_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final DK_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final DK_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final FOL_HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;",
            ">;"
        }
    .end annotation
.end field

.field public static final HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final INT_ACCENT_1:I = 0x5

.field public static final INT_ACCENT_2:I = 0x6

.field public static final INT_ACCENT_3:I = 0x7

.field public static final INT_ACCENT_4:I = 0x8

.field public static final INT_ACCENT_5:I = 0x9

.field public static final INT_ACCENT_6:I = 0xa

.field public static final INT_BG_1:I = 0x1

.field public static final INT_BG_2:I = 0x3

.field public static final INT_DK_1:I = 0xe

.field public static final INT_DK_2:I = 0x10

.field public static final INT_FOL_HLINK:I = 0xc

.field public static final INT_HLINK:I = 0xb

.field public static final INT_LT_1:I = 0xf

.field public static final INT_LT_2:I = 0x11

.field public static final INT_PH_CLR:I = 0xd

.field public static final INT_TX_1:I = 0x2

.field public static final INT_TX_2:I = 0x4

.field public static final LT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final LT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final PH_CLR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final TX_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final TX_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stschemecolorval722etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "bg1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->BG_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "tx1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->TX_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "bg2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->BG_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "tx2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->TX_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "accent1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "accent2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "accent3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_3:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "accent4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_4:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "accent5"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_5:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "accent6"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_6:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "hlink"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "folHlink"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->FOL_HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "phClr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->PH_CLR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "dk1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->DK_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "lt1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->LT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "dk2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->DK_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v0, "lt2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->LT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
