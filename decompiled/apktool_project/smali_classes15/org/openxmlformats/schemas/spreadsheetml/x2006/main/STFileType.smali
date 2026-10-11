.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;
    }
.end annotation


# static fields
.field public static final DOS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DOS:I = 0x3

.field public static final INT_LIN:I = 0x4

.field public static final INT_MAC:I = 0x1

.field public static final INT_OTHER:I = 0x5

.field public static final INT_WIN:I = 0x2

.field public static final LIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

.field public static final MAC:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

.field public static final OTHER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

.field public static final WIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stfiletype9a2ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "mac"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;->MAC:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    const-string v0, "win"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;->WIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    const-string v0, "dos"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;->DOS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    const-string v0, "lin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;->LIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    const-string v0, "other"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;->OTHER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
