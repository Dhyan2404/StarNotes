.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;
    }
.end annotation


# static fields
.field public static final A:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

.field public static final AA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

.field public static final AD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

.field public static final D:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_A:I = 0x2

.field public static final INT_AA:I = 0x4

.field public static final INT_AD:I = 0x5

.field public static final INT_D:I = 0x3

.field public static final INT_NA:I = 0x6

.field public static final INT_ND:I = 0x7

.field public static final INT_U:I = 0x1

.field public static final NA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

.field public static final ND:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

.field public static final U:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stmdxsetorderb97ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "u"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;->U:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    const-string v0, "a"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;->A:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    const-string v0, "d"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;->D:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    const-string v0, "aa"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;->AA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    const-string v0, "ad"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;->AD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    const-string v0, "na"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;->NA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    const-string v0, "nd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;->ND:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
