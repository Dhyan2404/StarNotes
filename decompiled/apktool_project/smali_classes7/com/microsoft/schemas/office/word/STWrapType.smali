.class public interface abstract Lcom/microsoft/schemas/office/word/STWrapType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/word/STWrapType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/word/STWrapType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_NONE:I = 0x3

.field public static final INT_SQUARE:I = 0x2

.field public static final INT_THROUGH:I = 0x5

.field public static final INT_TIGHT:I = 0x4

.field public static final INT_TOP_AND_BOTTOM:I = 0x1

.field public static final NONE:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

.field public static final SQUARE:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

.field public static final THROUGH:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

.field public static final TIGHT:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

.field public static final TOP_AND_BOTTOM:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stwraptype9ca5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/STWrapType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STWrapType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "topAndBottom"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STWrapType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STWrapType;->TOP_AND_BOTTOM:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    const-string v0, "square"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STWrapType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STWrapType;->SQUARE:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STWrapType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STWrapType;->NONE:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    const-string v0, "tight"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STWrapType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STWrapType;->TIGHT:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    const-string v0, "through"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STWrapType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STWrapType;->THROUGH:Lcom/microsoft/schemas/office/word/STWrapType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
