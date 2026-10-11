.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;
    }
.end annotation


# static fields
.field public static final EQ:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GE:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

.field public static final GT:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

.field public static final INT_EQ:I = 0x5

.field public static final INT_GE:I = 0x1

.field public static final INT_GT:I = 0x3

.field public static final INT_LE:I = 0x2

.field public static final INT_LT:I = 0x4

.field public static final LE:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

.field public static final LT:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "strelation0edatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "ge"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;->GE:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    const-string v0, "le"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;->LE:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    const-string v0, "gt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;->GT:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    const-string v0, "lt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;->LT:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    const-string v0, "eq"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation;->EQ:Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/STRelation$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
