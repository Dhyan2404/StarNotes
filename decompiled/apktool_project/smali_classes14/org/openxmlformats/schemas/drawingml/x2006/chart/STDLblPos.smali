.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;
    }
.end annotation


# static fields
.field public static final B:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

.field public static final BEST_FIT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

.field public static final CTR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_B:I = 0x2

.field public static final INT_BEST_FIT:I = 0x1

.field public static final INT_CTR:I = 0x3

.field public static final INT_IN_BASE:I = 0x4

.field public static final INT_IN_END:I = 0x5

.field public static final INT_L:I = 0x6

.field public static final INT_OUT_END:I = 0x7

.field public static final INT_R:I = 0x8

.field public static final INT_T:I = 0x9

.field public static final IN_BASE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

.field public static final IN_END:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

.field public static final L:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

.field public static final OUT_END:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

.field public static final R:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

.field public static final T:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stdlblpos1cf4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "bestFit"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->BEST_FIT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    const-string v0, "b"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->B:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    const-string v0, "ctr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    const-string v0, "inBase"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->IN_BASE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    const-string v0, "inEnd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->IN_END:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    const-string v0, "l"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->L:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    const-string v0, "outEnd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->OUT_END:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    const-string v0, "r"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->R:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    const-string v0, "t"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos;->T:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDLblPos$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
