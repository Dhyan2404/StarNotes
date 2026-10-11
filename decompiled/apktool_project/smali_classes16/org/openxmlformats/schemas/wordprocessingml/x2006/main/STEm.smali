.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;
    }
.end annotation


# static fields
.field public static final CIRCLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

.field public static final COMMA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

.field public static final DOT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CIRCLE:I = 0x4

.field public static final INT_COMMA:I = 0x3

.field public static final INT_DOT:I = 0x2

.field public static final INT_NONE:I = 0x1

.field public static final INT_UNDER_DOT:I = 0x5

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

.field public static final UNDER_DOT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stem5e70type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    const-string v0, "dot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->DOT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    const-string v0, "comma"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->COMMA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    const-string v0, "circle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->CIRCLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    const-string v0, "underDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->UNDER_DOT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
