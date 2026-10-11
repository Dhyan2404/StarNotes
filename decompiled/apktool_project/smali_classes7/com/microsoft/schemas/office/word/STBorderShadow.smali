.class public interface abstract Lcom/microsoft/schemas/office/word/STBorderShadow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;
    }
.end annotation


# static fields
.field public static final F:Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

.field public static final FALSE:Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/word/STBorderShadow;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_F:I = 0x3

.field public static final INT_FALSE:I = 0x4

.field public static final INT_T:I = 0x1

.field public static final INT_TRUE:I = 0x2

.field public static final T:Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

.field public static final TRUE:Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stbordershadow2dedtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderShadow;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderShadow;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "t"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderShadow;->T:Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

    const-string v0, "true"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderShadow;->TRUE:Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

    const-string v0, "f"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderShadow;->F:Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

    const-string v0, "false"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderShadow;->FALSE:Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
