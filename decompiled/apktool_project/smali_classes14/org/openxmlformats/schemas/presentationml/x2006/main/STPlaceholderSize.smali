.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;
    }
.end annotation


# static fields
.field public static final FULL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final HALF:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

.field public static final INT_FULL:I = 0x1

.field public static final INT_HALF:I = 0x2

.field public static final INT_QUARTER:I = 0x3

.field public static final QUARTER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stplaceholdersize914btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "full"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;->FULL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    const-string v0, "half"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;->HALF:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    const-string v0, "quarter"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;->QUARTER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
