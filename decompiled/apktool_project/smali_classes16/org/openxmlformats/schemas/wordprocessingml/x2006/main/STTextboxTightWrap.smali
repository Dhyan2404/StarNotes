.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;
    }
.end annotation


# static fields
.field public static final ALL_LINES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

.field public static final FIRST_AND_LAST_LINE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

.field public static final FIRST_LINE_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ALL_LINES:I = 0x2

.field public static final INT_FIRST_AND_LAST_LINE:I = 0x3

.field public static final INT_FIRST_LINE_ONLY:I = 0x4

.field public static final INT_LAST_LINE_ONLY:I = 0x5

.field public static final INT_NONE:I = 0x1

.field public static final LAST_LINE_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttextboxtightwrap8c6etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    const-string v0, "allLines"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap;->ALL_LINES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    const-string v0, "firstAndLastLine"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap;->FIRST_AND_LAST_LINE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    const-string v0, "firstLineOnly"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap;->FIRST_LINE_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    const-string v0, "lastLineOnly"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap;->LAST_LINE_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextboxTightWrap$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
