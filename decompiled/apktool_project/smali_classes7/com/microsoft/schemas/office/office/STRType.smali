.class public interface abstract Lcom/microsoft/schemas/office/office/STRType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/office/STRType$Enum;
    }
.end annotation


# static fields
.field public static final ALIGN:Lcom/microsoft/schemas/office/office/STRType$Enum;

.field public static final ARC:Lcom/microsoft/schemas/office/office/STRType$Enum;

.field public static final CALLOUT:Lcom/microsoft/schemas/office/office/STRType$Enum;

.field public static final CONNECTOR:Lcom/microsoft/schemas/office/office/STRType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/office/STRType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ALIGN:I = 0x4

.field public static final INT_ARC:I = 0x1

.field public static final INT_CALLOUT:I = 0x2

.field public static final INT_CONNECTOR:I = 0x3

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "strtype0f75type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STRType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STRType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "arc"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STRType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STRType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STRType;->ARC:Lcom/microsoft/schemas/office/office/STRType$Enum;

    const-string v0, "callout"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STRType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STRType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STRType;->CALLOUT:Lcom/microsoft/schemas/office/office/STRType$Enum;

    const-string v0, "connector"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STRType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STRType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STRType;->CONNECTOR:Lcom/microsoft/schemas/office/office/STRType$Enum;

    const-string v0, "align"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STRType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STRType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STRType;->ALIGN:Lcom/microsoft/schemas/office/office/STRType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
