.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_NONE:I = 0x3

.field public static final INT_PIN_YIN:I = 0x2

.field public static final INT_STROKE:I = 0x1

.field public static final NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;

.field public static final PIN_YIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;

.field public static final STROKE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stsortmethodbcf8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "stroke"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod;->STROKE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;

    const-string v0, "pinYin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod;->PIN_YIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
