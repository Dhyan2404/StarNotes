.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;
    }
.end annotation


# static fields
.field public static final B:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

.field public static final BI:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final I:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

.field public static final INT_B:I = 0x2

.field public static final INT_BI:I = 0x4

.field public static final INT_I:I = 0x3

.field public static final INT_P:I = 0x1

.field public static final P:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ststyle695btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "p"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle;->P:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

    const-string v0, "b"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle;->B:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

    const-string v0, "i"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle;->I:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

    const-string v0, "bi"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle;->BI:Lorg/openxmlformats/schemas/officeDocument/x2006/math/STStyle$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
