.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;
    }
.end annotation


# static fields
.field public static final BASELINE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BASELINE:I = 0x1

.field public static final INT_SUBSCRIPT:I = 0x3

.field public static final INT_SUPERSCRIPT:I = 0x2

.field public static final SUBSCRIPT:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

.field public static final SUPERSCRIPT:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stverticalalignrunc096type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "baseline"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->BASELINE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    const-string v0, "superscript"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->SUPERSCRIPT:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    const-string v0, "subscript"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->SUBSCRIPT:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
