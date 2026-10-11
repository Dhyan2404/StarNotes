.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;
    }
.end annotation


# static fields
.field public static final ABOVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

.field public static final BELOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ABOVE:I = 0x1

.field public static final INT_BELOW:I = 0x2

.field public static final INT_LEFT:I = 0x3

.field public static final INT_RIGHT:I = 0x4

.field public static final LEFT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

.field public static final RIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stcaptionpos6b4atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "above"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;->ABOVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

    const-string v0, "below"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;->BELOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

    const-string v0, "left"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;->LEFT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

    const-string v0, "right"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;->RIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
