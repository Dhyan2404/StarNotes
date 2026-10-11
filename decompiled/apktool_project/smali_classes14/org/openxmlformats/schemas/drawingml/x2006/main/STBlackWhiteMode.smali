.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;
    }
.end annotation


# static fields
.field public static final AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final BLACK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final BLACK_GRAY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final BLACK_WHITE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final CLR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRAY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final GRAY_WHITE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final HIDDEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final INT_AUTO:I = 0x2

.field public static final INT_BLACK:I = 0x9

.field public static final INT_BLACK_GRAY:I = 0x7

.field public static final INT_BLACK_WHITE:I = 0x8

.field public static final INT_CLR:I = 0x1

.field public static final INT_GRAY:I = 0x3

.field public static final INT_GRAY_WHITE:I = 0x6

.field public static final INT_HIDDEN:I = 0xb

.field public static final INT_INV_GRAY:I = 0x5

.field public static final INT_LT_GRAY:I = 0x4

.field public static final INT_WHITE:I = 0xa

.field public static final INV_GRAY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final LT_GRAY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final WHITE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stblackwhitemode0558type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "clr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->CLR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "auto"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "gray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->GRAY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "ltGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->LT_GRAY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "invGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->INV_GRAY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "grayWhite"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->GRAY_WHITE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "blackGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->BLACK_GRAY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "blackWhite"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->BLACK_WHITE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "black"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->BLACK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "white"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->WHITE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    const-string v0, "hidden"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;->HIDDEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
