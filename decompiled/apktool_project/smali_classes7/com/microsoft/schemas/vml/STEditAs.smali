.class public interface abstract Lcom/microsoft/schemas/vml/STEditAs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STEditAs$Enum;
    }
.end annotation


# static fields
.field public static final BULLSEYE:Lcom/microsoft/schemas/vml/STEditAs$Enum;

.field public static final CANVAS:Lcom/microsoft/schemas/vml/STEditAs$Enum;

.field public static final CYCLE:Lcom/microsoft/schemas/vml/STEditAs$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STEditAs;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BULLSEYE:I = 0x7

.field public static final INT_CANVAS:I = 0x1

.field public static final INT_CYCLE:I = 0x4

.field public static final INT_ORGCHART:I = 0x2

.field public static final INT_RADIAL:I = 0x3

.field public static final INT_STACKED:I = 0x5

.field public static final INT_VENN:I = 0x6

.field public static final ORGCHART:Lcom/microsoft/schemas/vml/STEditAs$Enum;

.field public static final RADIAL:Lcom/microsoft/schemas/vml/STEditAs$Enum;

.field public static final STACKED:Lcom/microsoft/schemas/vml/STEditAs$Enum;

.field public static final VENN:Lcom/microsoft/schemas/vml/STEditAs$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "steditas85aatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STEditAs;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STEditAs;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "canvas"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STEditAs$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STEditAs$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STEditAs;->CANVAS:Lcom/microsoft/schemas/vml/STEditAs$Enum;

    const-string v0, "orgchart"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STEditAs$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STEditAs$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STEditAs;->ORGCHART:Lcom/microsoft/schemas/vml/STEditAs$Enum;

    const-string v0, "radial"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STEditAs$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STEditAs$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STEditAs;->RADIAL:Lcom/microsoft/schemas/vml/STEditAs$Enum;

    const-string v0, "cycle"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STEditAs$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STEditAs$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STEditAs;->CYCLE:Lcom/microsoft/schemas/vml/STEditAs$Enum;

    const-string v0, "stacked"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STEditAs$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STEditAs$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STEditAs;->STACKED:Lcom/microsoft/schemas/vml/STEditAs$Enum;

    const-string v0, "venn"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STEditAs$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STEditAs$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STEditAs;->VENN:Lcom/microsoft/schemas/vml/STEditAs$Enum;

    const-string v0, "bullseye"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STEditAs$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STEditAs$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STEditAs;->BULLSEYE:Lcom/microsoft/schemas/vml/STEditAs$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
