.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;
    }
.end annotation


# static fields
.field public static final DOUBLE_QUOTE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DOUBLE_QUOTE:I = 0x1

.field public static final INT_NONE:I = 0x3

.field public static final INT_SINGLE_QUOTE:I = 0x2

.field public static final NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;

.field public static final SINGLE_QUOTE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stqualifier91b9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "doubleQuote"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier;->DOUBLE_QUOTE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;

    const-string v0, "singleQuote"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier;->SINGLE_QUOTE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
