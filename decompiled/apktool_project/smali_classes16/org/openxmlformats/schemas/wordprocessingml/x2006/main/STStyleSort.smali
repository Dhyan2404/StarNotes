.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;
    }
.end annotation


# static fields
.field public static final BASED_ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final FONT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BASED_ON:I = 0x5

.field public static final INT_DEFAULT:I = 0x3

.field public static final INT_FONT:I = 0x4

.field public static final INT_NAME:I = 0x1

.field public static final INT_PRIORITY:I = 0x2

.field public static final INT_TYPE:I = 0x6

.field public static final INT_X_0000:I = 0x7

.field public static final INT_X_0001:I = 0x8

.field public static final INT_X_0002:I = 0x9

.field public static final INT_X_0003:I = 0xa

.field public static final INT_X_0004:I = 0xb

.field public static final INT_X_0005:I = 0xc

.field public static final NAME:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final PRIORITY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final TYPE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final X_0000:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final X_0001:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final X_0002:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final X_0003:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final X_0004:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final X_0005:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ststylesortb6d3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "name"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->NAME:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "priority"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->PRIORITY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "default"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "font"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->FONT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "basedOn"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->BASED_ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "type"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->TYPE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "0000"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->X_0000:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "0001"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->X_0001:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "0002"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->X_0002:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "0003"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->X_0003:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "0004"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->X_0004:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    const-string v0, "0005"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort;->X_0005:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleSort$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
