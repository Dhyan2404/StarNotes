.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;
    }
.end annotation


# static fields
.field public static final CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

.field public static final DIST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CTR:I = 0x2

.field public static final INT_DIST:I = 0x6

.field public static final INT_JUST:I = 0x4

.field public static final INT_JUST_LOW:I = 0x5

.field public static final INT_L:I = 0x1

.field public static final INT_R:I = 0x3

.field public static final INT_THAI_DIST:I = 0x7

.field public static final JUST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

.field public static final JUST_LOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

.field public static final L:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

.field public static final R:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

.field public static final THAI_DIST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttextaligntypebc93type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "l"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->L:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v0, "ctr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v0, "r"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->R:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v0, "just"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->JUST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v0, "justLow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->JUST_LOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v0, "dist"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->DIST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v0, "thaiDist"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->THAI_DIST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
