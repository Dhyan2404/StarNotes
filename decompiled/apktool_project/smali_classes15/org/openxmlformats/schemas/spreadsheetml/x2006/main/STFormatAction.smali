.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;
    }
.end annotation


# static fields
.field public static final BLANK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

.field public static final DRILL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

.field public static final FORMATTING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

.field public static final FORMULA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BLANK:I = 0x1

.field public static final INT_DRILL:I = 0x3

.field public static final INT_FORMATTING:I = 0x2

.field public static final INT_FORMULA:I = 0x4

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stformataction8726type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "blank"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;->BLANK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

    const-string v0, "formatting"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;->FORMATTING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

    const-string v0, "drill"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;->DRILL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

    const-string v0, "formula"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;->FORMULA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
