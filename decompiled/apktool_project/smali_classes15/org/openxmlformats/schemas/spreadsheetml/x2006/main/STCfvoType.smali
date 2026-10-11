.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;
    }
.end annotation


# static fields
.field public static final FORMULA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_FORMULA:I = 0x5

.field public static final INT_MAX:I = 0x3

.field public static final INT_MIN:I = 0x4

.field public static final INT_NUM:I = 0x1

.field public static final INT_PERCENT:I = 0x2

.field public static final INT_PERCENTILE:I = 0x6

.field public static final MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

.field public static final MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

.field public static final NUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

.field public static final PERCENT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

.field public static final PERCENTILE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stcfvotypeeb0ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "num"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->NUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v0, "percent"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->PERCENT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v0, "max"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v0, "min"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v0, "formula"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->FORMULA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const-string v0, "percentile"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->PERCENTILE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
