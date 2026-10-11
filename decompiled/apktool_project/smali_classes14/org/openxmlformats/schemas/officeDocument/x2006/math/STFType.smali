.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;
    }
.end annotation


# static fields
.field public static final BAR:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BAR:I = 0x1

.field public static final INT_LIN:I = 0x3

.field public static final INT_NO_BAR:I = 0x4

.field public static final INT_SKW:I = 0x2

.field public static final LIN:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

.field public static final NO_BAR:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

.field public static final SKW:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stftype30ectype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "bar"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType;->BAR:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

    const-string v0, "skw"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType;->SKW:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

    const-string v0, "lin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType;->LIN:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

    const-string v0, "noBar"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType;->NO_BAR:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STFType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
