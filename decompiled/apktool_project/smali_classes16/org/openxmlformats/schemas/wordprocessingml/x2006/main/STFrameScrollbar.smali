.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;
    }
.end annotation


# static fields
.field public static final AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AUTO:I = 0x3

.field public static final INT_OFF:I = 0x2

.field public static final INT_ON:I = 0x1

.field public static final OFF:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;

.field public static final ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stframescrollbar34fftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "on"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;

    const-string v0, "off"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar;->OFF:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;

    const-string v0, "auto"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFrameScrollbar$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
