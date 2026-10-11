.class public interface abstract Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;
    }
.end annotation


# static fields
.field public static final EXTERNAL:Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL:Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;

.field public static final INT_EXTERNAL:I = 0x1

.field public static final INT_INTERNAL:I = 0x2

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttargetmode0e8ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "External"

    invoke-static {v0}, Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode;->EXTERNAL:Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;

    const-string v0, "Internal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode;->INTERNAL:Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
