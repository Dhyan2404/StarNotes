.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;
    }
.end annotation


# static fields
.field public static final DOUBLE_STRUCK:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

.field public static final FRAKTUR:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DOUBLE_STRUCK:I = 0x4

.field public static final INT_FRAKTUR:I = 0x3

.field public static final INT_MONOSPACE:I = 0x6

.field public static final INT_ROMAN:I = 0x1

.field public static final INT_SANS_SERIF:I = 0x5

.field public static final INT_SCRIPT:I = 0x2

.field public static final MONOSPACE:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

.field public static final ROMAN:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

.field public static final SANS_SERIF:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

.field public static final SCRIPT:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stscript4637type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "roman"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;->ROMAN:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    const-string v0, "script"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;->SCRIPT:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    const-string v0, "fraktur"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;->FRAKTUR:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    const-string v0, "double-struck"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;->DOUBLE_STRUCK:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    const-string v0, "sans-serif"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;->SANS_SERIF:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    const-string v0, "monospace"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript;->MONOSPACE:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STScript$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
