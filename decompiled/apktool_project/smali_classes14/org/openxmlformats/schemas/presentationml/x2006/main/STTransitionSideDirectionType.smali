.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;
    }
.end annotation


# static fields
.field public static final D:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_D:I = 0x4

.field public static final INT_L:I = 0x1

.field public static final INT_R:I = 0x3

.field public static final INT_U:I = 0x2

.field public static final L:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

.field public static final R:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

.field public static final U:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttransitionsidedirectiontype73d2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "l"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType;->L:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

    const-string v0, "u"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType;->U:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

    const-string v0, "r"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType;->R:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

    const-string v0, "d"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType;->D:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionSideDirectionType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
