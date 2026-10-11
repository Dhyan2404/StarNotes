.class public interface abstract Lcom/microsoft/schemas/office/office/STColorMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/office/STColorMode$Enum;
    }
.end annotation


# static fields
.field public static final AUTO:Lcom/microsoft/schemas/office/office/STColorMode$Enum;

.field public static final CUSTOM:Lcom/microsoft/schemas/office/office/STColorMode$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/office/STColorMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AUTO:I = 0x1

.field public static final INT_CUSTOM:I = 0x2

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stcolormode38cftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STColorMode;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STColorMode;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "auto"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STColorMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STColorMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STColorMode;->AUTO:Lcom/microsoft/schemas/office/office/STColorMode$Enum;

    const-string v0, "custom"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STColorMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STColorMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STColorMode;->CUSTOM:Lcom/microsoft/schemas/office/office/STColorMode$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
