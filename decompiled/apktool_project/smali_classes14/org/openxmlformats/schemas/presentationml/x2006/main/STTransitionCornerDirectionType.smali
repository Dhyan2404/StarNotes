.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_LD:I = 0x3

.field public static final INT_LU:I = 0x1

.field public static final INT_RD:I = 0x4

.field public static final INT_RU:I = 0x2

.field public static final LD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

.field public static final LU:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

.field public static final RD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

.field public static final RU:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttransitioncornerdirectiontype0850type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "lu"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType;->LU:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

    const-string v0, "ru"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType;->RU:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

    const-string v0, "ld"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType;->LD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

    const-string v0, "rd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType;->RD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionCornerDirectionType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
