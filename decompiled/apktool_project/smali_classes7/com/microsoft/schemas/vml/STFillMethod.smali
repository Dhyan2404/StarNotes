.class public interface abstract Lcom/microsoft/schemas/vml/STFillMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STFillMethod$Enum;
    }
.end annotation


# static fields
.field public static final ANY:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STFillMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ANY:I = 0x4

.field public static final INT_LINEAR:I = 0x2

.field public static final INT_LINEAR_SIGMA:I = 0x5

.field public static final INT_NONE:I = 0x1

.field public static final INT_SIGMA:I = 0x3

.field public static final LINEAR:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

.field public static final LINEAR_SIGMA:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

.field public static final NONE:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

.field public static final SIGMA:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stfillmethoda592type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STFillMethod;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillMethod;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillMethod$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillMethod;->NONE:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    const-string v0, "linear"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillMethod$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillMethod;->LINEAR:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    const-string v0, "sigma"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillMethod$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillMethod;->SIGMA:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    const-string v0, "any"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillMethod$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillMethod;->ANY:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    const-string v0, "linear sigma"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STFillMethod$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STFillMethod;->LINEAR_SIGMA:Lcom/microsoft/schemas/vml/STFillMethod$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
