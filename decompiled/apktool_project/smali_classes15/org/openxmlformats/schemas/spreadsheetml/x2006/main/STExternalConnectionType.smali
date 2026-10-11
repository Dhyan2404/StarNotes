.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;
    }
.end annotation


# static fields
.field public static final DMY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final DYM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final EMD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final GENERAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final INT_DMY:I = 0x4

.field public static final INT_DYM:I = 0x7

.field public static final INT_EMD:I = 0xa

.field public static final INT_GENERAL:I = 0x1

.field public static final INT_MDY:I = 0x3

.field public static final INT_MYD:I = 0x6

.field public static final INT_SKIP:I = 0x9

.field public static final INT_TEXT:I = 0x2

.field public static final INT_YDM:I = 0x8

.field public static final INT_YMD:I = 0x5

.field public static final MDY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final MYD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final SKIP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final YDM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final YMD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stexternalconnectiontypee83ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "general"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->GENERAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    const-string v0, "text"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    const-string v0, "MDY"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->MDY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    const-string v0, "DMY"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->DMY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    const-string v0, "YMD"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->YMD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    const-string v0, "MYD"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->MYD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    const-string v0, "DYM"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->DYM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    const-string v0, "YDM"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->YDM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    const-string v0, "skip"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->SKIP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    const-string v0, "EMD"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType;->EMD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STExternalConnectionType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
