.class public interface abstract Lcom/microsoft/schemas/office/office/STAngle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/office/STAngle$Enum;
    }
.end annotation


# static fields
.field public static final ANY:Lcom/microsoft/schemas/office/office/STAngle$Enum;

.field public static final AUTO:Lcom/microsoft/schemas/office/office/STAngle$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/office/STAngle;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ANY:I = 0x1

.field public static final INT_AUTO:I = 0x6

.field public static final INT_X_30:I = 0x2

.field public static final INT_X_45:I = 0x3

.field public static final INT_X_60:I = 0x4

.field public static final INT_X_90:I = 0x5

.field public static final X_30:Lcom/microsoft/schemas/office/office/STAngle$Enum;

.field public static final X_45:Lcom/microsoft/schemas/office/office/STAngle$Enum;

.field public static final X_60:Lcom/microsoft/schemas/office/office/STAngle$Enum;

.field public static final X_90:Lcom/microsoft/schemas/office/office/STAngle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stangle3a7ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STAngle;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STAngle;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "any"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STAngle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STAngle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STAngle;->ANY:Lcom/microsoft/schemas/office/office/STAngle$Enum;

    const-string v0, "30"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STAngle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STAngle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STAngle;->X_30:Lcom/microsoft/schemas/office/office/STAngle$Enum;

    const-string v0, "45"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STAngle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STAngle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STAngle;->X_45:Lcom/microsoft/schemas/office/office/STAngle$Enum;

    const-string v0, "60"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STAngle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STAngle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STAngle;->X_60:Lcom/microsoft/schemas/office/office/STAngle$Enum;

    const-string v0, "90"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STAngle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STAngle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STAngle;->X_90:Lcom/microsoft/schemas/office/office/STAngle$Enum;

    const-string v0, "auto"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STAngle$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STAngle$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STAngle;->AUTO:Lcom/microsoft/schemas/office/office/STAngle$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
