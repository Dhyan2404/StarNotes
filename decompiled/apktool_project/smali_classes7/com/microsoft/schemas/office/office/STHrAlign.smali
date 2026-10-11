.class public interface abstract Lcom/microsoft/schemas/office/office/STHrAlign;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/office/STHrAlign$Enum;
    }
.end annotation


# static fields
.field public static final CENTER:Lcom/microsoft/schemas/office/office/STHrAlign$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/office/STHrAlign;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CENTER:I = 0x3

.field public static final INT_LEFT:I = 0x1

.field public static final INT_RIGHT:I = 0x2

.field public static final LEFT:Lcom/microsoft/schemas/office/office/STHrAlign$Enum;

.field public static final RIGHT:Lcom/microsoft/schemas/office/office/STHrAlign$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sthralignfb04type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STHrAlign;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHrAlign;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "left"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STHrAlign$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STHrAlign$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHrAlign;->LEFT:Lcom/microsoft/schemas/office/office/STHrAlign$Enum;

    const-string v0, "right"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STHrAlign$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STHrAlign$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHrAlign;->RIGHT:Lcom/microsoft/schemas/office/office/STHrAlign$Enum;

    const-string v0, "center"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STHrAlign$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STHrAlign$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STHrAlign;->CENTER:Lcom/microsoft/schemas/office/office/STHrAlign$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
