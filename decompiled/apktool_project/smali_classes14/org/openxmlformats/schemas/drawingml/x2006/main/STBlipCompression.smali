.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;
    }
.end annotation


# static fields
.field public static final EMAIL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;",
            ">;"
        }
    .end annotation
.end field

.field public static final HQPRINT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

.field public static final INT_EMAIL:I = 0x1

.field public static final INT_HQPRINT:I = 0x4

.field public static final INT_NONE:I = 0x5

.field public static final INT_PRINT:I = 0x3

.field public static final INT_SCREEN:I = 0x2

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

.field public static final PRINT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

.field public static final SCREEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stblipcompressionb216type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "email"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;->EMAIL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    const-string v0, "screen"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;->SCREEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    const-string v0, "print"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;->PRINT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    const-string v0, "hqprint"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;->HQPRINT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
