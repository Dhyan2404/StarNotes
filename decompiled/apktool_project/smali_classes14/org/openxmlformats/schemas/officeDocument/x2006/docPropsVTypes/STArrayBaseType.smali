.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;
    }
.end annotation


# static fields
.field public static final BOOL:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final BSTR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final CY:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final DATE:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final DECIMAL:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final ERROR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final INT_BOOL:I = 0xf

.field public static final INT_BSTR:I = 0xd

.field public static final INT_CY:I = 0x10

.field public static final INT_DATE:I = 0xe

.field public static final INT_DECIMAL:I = 0xc

.field public static final INT_ERROR:I = 0x11

.field public static final INT_INT:I = 0x5

.field public static final INT_I_1:I = 0x2

.field public static final INT_I_2:I = 0x3

.field public static final INT_I_4:I = 0x4

.field public static final INT_R_4:I = 0xa

.field public static final INT_R_8:I = 0xb

.field public static final INT_UINT:I = 0x9

.field public static final INT_UI_1:I = 0x6

.field public static final INT_UI_2:I = 0x7

.field public static final INT_UI_4:I = 0x8

.field public static final INT_VARIANT:I = 0x1

.field public static final I_1:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final I_2:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final I_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final R_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final R_8:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final UINT:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final UI_1:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final UI_2:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final UI_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final VARIANT:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "starraybasetypee2dbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "variant"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->VARIANT:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "i1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->I_1:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "i2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->I_2:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "i4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->I_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "int"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->INT:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "ui1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->UI_1:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "ui2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->UI_2:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "ui4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->UI_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "uint"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->UINT:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "r4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->R_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "r8"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->R_8:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "decimal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->DECIMAL:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "bstr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->BSTR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "date"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->DATE:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "bool"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->BOOL:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "cy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->CY:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    const-string v0, "error"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;->ERROR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
