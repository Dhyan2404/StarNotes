.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;
    }
.end annotation


# static fields
.field public static final BOOL:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final BSTR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final CLSID:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final CY:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final DATE:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final ERROR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final FILETIME:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BOOL:I = 0x11

.field public static final INT_BSTR:I = 0xe

.field public static final INT_CLSID:I = 0x14

.field public static final INT_CY:I = 0x12

.field public static final INT_DATE:I = 0xf

.field public static final INT_ERROR:I = 0x13

.field public static final INT_FILETIME:I = 0x10

.field public static final INT_I_1:I = 0x2

.field public static final INT_I_2:I = 0x3

.field public static final INT_I_4:I = 0x4

.field public static final INT_I_8:I = 0x5

.field public static final INT_LPSTR:I = 0xc

.field public static final INT_LPWSTR:I = 0xd

.field public static final INT_R_4:I = 0xa

.field public static final INT_R_8:I = 0xb

.field public static final INT_UI_1:I = 0x6

.field public static final INT_UI_2:I = 0x7

.field public static final INT_UI_4:I = 0x8

.field public static final INT_UI_8:I = 0x9

.field public static final INT_VARIANT:I = 0x1

.field public static final I_1:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final I_2:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final I_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final I_8:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final LPSTR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final LPWSTR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final R_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final R_8:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final UI_1:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final UI_2:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final UI_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final UI_8:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final VARIANT:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stvectorbasetype36e7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "variant"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->VARIANT:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "i1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->I_1:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "i2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->I_2:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "i4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->I_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "i8"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->I_8:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "ui1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->UI_1:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "ui2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->UI_2:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "ui4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->UI_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "ui8"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->UI_8:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "r4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->R_4:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "r8"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->R_8:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "lpstr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->LPSTR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "lpwstr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->LPWSTR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "bstr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->BSTR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "date"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->DATE:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "filetime"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->FILETIME:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "bool"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->BOOL:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "cy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->CY:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "error"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->ERROR:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    const-string v0, "clsid"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;->CLSID:Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
