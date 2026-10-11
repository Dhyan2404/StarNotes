.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;
    }
.end annotation


# static fields
.field public static final AFTER:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;

.field public static final BEFORE:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AFTER:I = 0x2

.field public static final INT_BEFORE:I = 0x1

.field public static final INT_REPEAT:I = 0x3

.field public static final REPEAT:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stbreakbinb69atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "before"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin;->BEFORE:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;

    const-string v0, "after"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin;->AFTER:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;

    const-string v0, "repeat"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin;->REPEAT:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STBreakBin$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
