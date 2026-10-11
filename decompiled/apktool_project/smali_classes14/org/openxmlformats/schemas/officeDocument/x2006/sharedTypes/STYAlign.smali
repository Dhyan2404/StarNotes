.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

.field public static final CENTER:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;",
            ">;"
        }
    .end annotation
.end field

.field public static final INLINE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

.field public static final INSIDE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

.field public static final INT_BOTTOM:I = 0x4

.field public static final INT_CENTER:I = 0x3

.field public static final INT_INLINE:I = 0x1

.field public static final INT_INSIDE:I = 0x5

.field public static final INT_OUTSIDE:I = 0x6

.field public static final INT_TOP:I = 0x2

.field public static final OUTSIDE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

.field public static final TOP:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "styalign3606type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "inline"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;->INLINE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    const-string v0, "top"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;->TOP:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    const-string v0, "center"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;->CENTER:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    const-string v0, "bottom"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;->BOTTOM:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    const-string v0, "inside"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;->INSIDE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    const-string v0, "outside"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;->OUTSIDE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
