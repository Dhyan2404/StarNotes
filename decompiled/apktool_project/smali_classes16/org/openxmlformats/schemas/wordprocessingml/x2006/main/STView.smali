.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_MASTER_PAGES:I = 0x4

.field public static final INT_NONE:I = 0x1

.field public static final INT_NORMAL:I = 0x5

.field public static final INT_OUTLINE:I = 0x3

.field public static final INT_PRINT:I = 0x2

.field public static final INT_WEB:I = 0x6

.field public static final MASTER_PAGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

.field public static final NORMAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

.field public static final OUTLINE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

.field public static final PRINT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

.field public static final WEB:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stviewc2d3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    const-string v0, "print"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;->PRINT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    const-string v0, "outline"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;->OUTLINE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    const-string v0, "masterPages"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;->MASTER_PAGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    const-string v0, "normal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;->NORMAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    const-string v0, "web"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView;->WEB:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STView$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
