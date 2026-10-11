.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;
    }
.end annotation


# static fields
.field public static final CENTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

.field public static final DISTRIBUTE_LETTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

.field public static final DISTRIBUTE_SPACE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CENTER:I = 0x1

.field public static final INT_DISTRIBUTE_LETTER:I = 0x2

.field public static final INT_DISTRIBUTE_SPACE:I = 0x3

.field public static final INT_LEFT:I = 0x4

.field public static final INT_RIGHT:I = 0x5

.field public static final INT_RIGHT_VERTICAL:I = 0x6

.field public static final LEFT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

.field public static final RIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

.field public static final RIGHT_VERTICAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "strubyalignb1f7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "center"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;->CENTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v0, "distributeLetter"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;->DISTRIBUTE_LETTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v0, "distributeSpace"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;->DISTRIBUTE_SPACE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v0, "left"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;->LEFT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v0, "right"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;->RIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    const-string v0, "rightVertical"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign;->RIGHT_VERTICAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STRubyAlign$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
