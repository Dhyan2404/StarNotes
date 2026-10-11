.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs;",
            ">;"
        }
    .end annotation
.end field

.field public static final GAP:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

.field public static final INT_GAP:I = 0x2

.field public static final INT_SPAN:I = 0x1

.field public static final INT_ZERO:I = 0x3

.field public static final SPAN:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

.field public static final ZERO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stdispblanksas3a59type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "span"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs;->SPAN:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

    const-string v0, "gap"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs;->GAP:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

    const-string v0, "zero"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs;->ZERO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
