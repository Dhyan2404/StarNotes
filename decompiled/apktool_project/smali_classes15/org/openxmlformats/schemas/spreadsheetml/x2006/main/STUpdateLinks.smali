.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;
    }
.end annotation


# static fields
.field public static final ALWAYS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ALWAYS:I = 0x3

.field public static final INT_NEVER:I = 0x2

.field public static final INT_USER_SET:I = 0x1

.field public static final NEVER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;

.field public static final USER_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stupdatelinksfb3ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "userSet"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks;->USER_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;

    const-string v0, "never"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks;->NEVER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;

    const-string v0, "always"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks;->ALWAYS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
