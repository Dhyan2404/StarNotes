.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;
    }
.end annotation


# static fields
.field public static final ANGLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

.field public static final CURLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ANGLE:I = 0x4

.field public static final INT_CURLY:I = 0x5

.field public static final INT_NONE:I = 0x1

.field public static final INT_ROUND:I = 0x2

.field public static final INT_SQUARE:I = 0x3

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

.field public static final ROUND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

.field public static final SQUARE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stcombinebrackets70b8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    const-string v0, "round"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;->ROUND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    const-string v0, "square"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;->SQUARE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    const-string v0, "angle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;->ANGLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    const-string v0, "curly"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;->CURLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
