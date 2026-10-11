.class public interface abstract Lcom/microsoft/schemas/office/excel/STObjectType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/excel/STObjectType$Enum;
    }
.end annotation


# static fields
.field public static final BUTTON:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final CHECKBOX:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final DIALOG:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final DROP:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final EDIT:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/excel/STObjectType;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final G_BOX:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final INT_BUTTON:I = 0x1

.field public static final INT_CHECKBOX:I = 0x2

.field public static final INT_DIALOG:I = 0x3

.field public static final INT_DROP:I = 0x4

.field public static final INT_EDIT:I = 0x5

.field public static final INT_GROUP:I = 0x12

.field public static final INT_G_BOX:I = 0x6

.field public static final INT_LABEL:I = 0x7

.field public static final INT_LINE_A:I = 0x8

.field public static final INT_LIST:I = 0x9

.field public static final INT_MOVIE:I = 0xa

.field public static final INT_NOTE:I = 0xb

.field public static final INT_PICT:I = 0xc

.field public static final INT_RADIO:I = 0xd

.field public static final INT_RECT:I = 0x13

.field public static final INT_RECT_A:I = 0xe

.field public static final INT_SCROLL:I = 0xf

.field public static final INT_SHAPE:I = 0x11

.field public static final INT_SPIN:I = 0x10

.field public static final LABEL:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final LINE_A:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final LIST:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final MOVIE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final NOTE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final PICT:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final RADIO:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final RECT:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final RECT_A:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final SCROLL:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final SHAPE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final SPIN:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stobjecttype97a7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "Button"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->BUTTON:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Checkbox"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->CHECKBOX:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Dialog"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->DIALOG:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Drop"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->DROP:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Edit"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->EDIT:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "GBox"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->G_BOX:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Label"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->LABEL:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "LineA"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->LINE_A:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "List"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->LIST:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Movie"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->MOVIE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Note"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->NOTE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Pict"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->PICT:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Radio"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->RADIO:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "RectA"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->RECT_A:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Scroll"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->SCROLL:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Spin"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->SPIN:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Shape"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->SHAPE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Group"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->GROUP:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    const-string v0, "Rect"

    invoke-static {v0}, Lcom/microsoft/schemas/office/excel/STObjectType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/STObjectType;->RECT:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
