.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HYBRID_MULTILEVEL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;

.field public static final INT_HYBRID_MULTILEVEL:I = 0x3

.field public static final INT_MULTILEVEL:I = 0x2

.field public static final INT_SINGLE_LEVEL:I = 0x1

.field public static final MULTILEVEL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;

.field public static final SINGLE_LEVEL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stmultileveltypebc13type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "singleLevel"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType;->SINGLE_LEVEL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;

    const-string v0, "multilevel"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType;->MULTILEVEL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;

    const-string v0, "hybridMultilevel"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType;->HYBRID_MULTILEVEL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMultiLevelType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
