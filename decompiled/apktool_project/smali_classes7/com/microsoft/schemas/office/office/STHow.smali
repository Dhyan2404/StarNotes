.class public interface abstract Lcom/microsoft/schemas/office/office/STHow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/office/STHow$Enum;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/microsoft/schemas/office/office/STHow$Enum;

.field public static final CENTER:Lcom/microsoft/schemas/office/office/STHow$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/office/STHow;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BOTTOM:I = 0x3

.field public static final INT_CENTER:I = 0x5

.field public static final INT_LEFT:I = 0x4

.field public static final INT_MIDDLE:I = 0x2

.field public static final INT_RIGHT:I = 0x6

.field public static final INT_TOP:I = 0x1

.field public static final LEFT:Lcom/microsoft/schemas/office/office/STHow$Enum;

.field public static final MIDDLE:Lcom/microsoft/schemas/office/office/STHow$Enum;

.field public static final RIGHT:Lcom/microsoft/schemas/office/office/STHow$Enum;

.field public static final TOP:Lcom/microsoft/schemas/office/office/STHow$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sthow13b9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STHow;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHow;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "top"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STHow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STHow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHow;->TOP:Lcom/microsoft/schemas/office/office/STHow$Enum;

    const-string v0, "middle"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STHow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STHow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHow;->MIDDLE:Lcom/microsoft/schemas/office/office/STHow$Enum;

    const-string v0, "bottom"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STHow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STHow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHow;->BOTTOM:Lcom/microsoft/schemas/office/office/STHow$Enum;

    const-string v0, "left"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STHow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STHow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHow;->LEFT:Lcom/microsoft/schemas/office/office/STHow$Enum;

    const-string v0, "center"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STHow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STHow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHow;->CENTER:Lcom/microsoft/schemas/office/office/STHow$Enum;

    const-string v0, "right"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STHow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STHow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHow;->RIGHT:Lcom/microsoft/schemas/office/office/STHow$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
